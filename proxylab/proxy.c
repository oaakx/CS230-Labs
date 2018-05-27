#include <stdio.h>
#include "csapp.h"
#include "cache.h"

/* Recommended max cache and object sizes */
#define NUM_HEADERS 100
#define MAXRESPONSE (1<<20) // 1 MB

int parse_uri(char *uri, char *shost, char *sport, char *spath);
void *proxy(void *vargp);
void close_proxy(int connfd);
void redir_back(int connfd, int clientfd, rio_t *rioclientp, rio_t *rioserverp, char *uri2);
void sigchld_handler(int sig);

// pthread_rwlock_t lock;
pthread_mutex_t mutex;
rio_t rioclient;
int nread;
char buf[MAXLINE];

CacheList *cache;

/* You won't lose style points for including this long line in your code */
// static const char *user_agent_hdr = "User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:10.0.3) Gecko/20120305 Firefox/10.0.3\r\n";
char header_connection[MAXLINE] = "Connection: close\r\n";

int main(int argc, char *argv[])
{
    int listenfd, *connfdp;
    socklen_t clientlen;
    struct sockaddr_in clientaddr;

    // ignore sigpipes
    signal(SIGPIPE, SIG_IGN);

    // initialize reader/writer lock for cache
    // pthread_rwlock_init(&lock, NULL);

    if (!argv[1]){
        printf("Missing command line port number\n");
        return -1;
    }

    // init proxy server
    Signal(SIGCHLD, sigchld_handler);
    listenfd = Open_listenfd(argv[1]);

    // init cache
    pthread_mutex_init(&mutex, NULL);
    cache = Malloc(sizeof(CacheList));
    cache_init(cache);

    // start listening
    if (listenfd < 0) {
        printf("open_listenfd failed.\n");
    }
    else {
        printf("* Serving on port: %s\n", argv[1]);

        while (1) {
            clientlen = sizeof(clientaddr);
            connfdp = Malloc(sizeof(int));
            *connfdp = Accept(listenfd, (struct sockaddr *)&clientaddr, &clientlen);

            // serve
            if (*connfdp < 0) {
                printf("Accept failed.\n");
            }
            else {
                pthread_t tid;
                pthread_create(&tid, NULL, proxy, (void *)connfdp);
            }
        }
    }

    // stop proxy server
    Close(listenfd);
    // pthread_rwlock_destroy(&lock);
    return 0;
}

int parse_uri(char *uri, char *shost, char *sport, char *spath) {
    char *cur = uri;
    
    if (strncmp(uri, "http://", 7) != 0)
        return -1;

    cur += 7;
    char *cpy = shost;
    strncpy(sport, "80\0", 3);
    strncpy(spath, "/\0", 2);

    while (*cur != '\0') {
        if (*cur == '/') {
            *cpy = '\0';
            cpy = spath;
        }
        else if (*cur == ':') {
            cur++;
            *cpy = '\0';
            cpy = sport;
        }

        *cpy = *cur;
        cur++;
        cpy++;
    }

    *cpy = '\0';

    return 0;
}

void *proxy(void *vargp) {
    int connfd = *(int*)vargp;
    pthread_detach(pthread_self());
    Free(vargp);

    printf(" * Connection accepted...\n");

    // init buffered i/o for connfd
    rio_readinitb(&rioclient, connfd);

    // request line
    char crequest[MAXLINE];
    nread = rio_readlineb(&rioclient, crequest, MAXLINE);
    printf("c> %s", crequest);

    // parse client request
    char method[MAXLINE];
    char uri[MAXLINE];
    char uri2[MAXLINE];
    char http_version[MAXLINE];
    sscanf(crequest, "%s %s %s", method, uri, http_version);

    // check client method
    if (strcmp(method, "GET") != 0) {
        printf(" - Unsupported method: %s\n", method);
        close_proxy(connfd);
        return NULL;
    }

    // parse client uri
    char shost[MAXLINE];
    char sport[MAXLINE];
    char spath[MAXLINE];
    if (parse_uri(uri, shost, sport, spath) < 0) {
        printf(" - Error parsing URI\n");
        close_proxy(connfd);
        return NULL;
    }
    else {
        // serve from cache, if possible

        // debugging
        printf(" | shost: %s\n", shost);
        printf(" | sport: %s\n", sport);
        printf(" | spath: %s\n", spath);

        sprintf(uri2, "%s:%s%s", shost, sport, spath);
        CacheNode *node;
        if ((node = cache_search(cache, uri2)) != NULL) {
            printf(" + Content found in cache...\n");
            printf(" | node->content_len: %d\n", node->content_len);
            cache_renew(cache, node);
            printf(" | after cache_renew()... |");
            char content_headers[MAXLINE];
            sprintf(content_headers,   "HTTP/1.0 200 OK\r\n");
            sprintf(content_headers, "%sConnection: close\r\n", content_headers);
            sprintf(content_headers, "%sContent-length: %d\r\n", content_headers, node->content_len);
            sprintf(content_headers, "%sContent-type: %s\r\n\r\n", content_headers, node->content_type);
            printf(" | content_headers:\n");
            printf("============================\n");
            printf("%s\n", content_headers);
            printf("============================\n");
            Rio_writen(connfd, content_headers, strlen(content_headers));
            Rio_writen(connfd, node->content, node->content_len);
            close_proxy(connfd);
            printf(" - Connection closed (served from cache)\n");
            return NULL;
        }
    }

    // connect to server
    int clientfd = Open_clientfd(shost, sport);
    rio_t rioserver;
    rio_readinitb(&rioserver, clientfd);

    // build proxy request
    char proxy_request[MAXLINE];
    sprintf(proxy_request, "GET %s HTTP/1.0\r\n", spath);
    printf(" | proxy_request: %s", proxy_request);
    rio_writen(clientfd, proxy_request, strlen(proxy_request));

    // redirect headers
    char header[MAXLINE];
    char headname[MAXLINE];
    char headval[MAXLINE];

    if (nread != 0)
    while ((nread = rio_readlineb(&rioclient, header, MAXLINE)) != 0) {
        printf("c> %s", header);

        // ignore Connection/Proxy-Connection headers
        sscanf(header, "%s %s", headname, headval);
        if (strcmp(headname, "Proxy-Connection:") != 0 &&
                strcmp(headname, "Connection:") != 0 &&
                strcmp(header, "\r\n") != 0) {
            rio_writen(clientfd, header, strlen(header));
        }

        // end of headers
        if (strcmp(header, "\r\n") == 0) {
            printf(" + End of client request\n");

            // end proxy request
            rio_writen(clientfd, header_connection, strlen(header_connection));
            rio_writen(clientfd, "\r\n", 2);
            // redir response back
            redir_back(connfd, clientfd, &rioclient, &rioserver, uri2);

            printf(" + Redirection complete!\n");
            break;
        }
    }

    Close(clientfd);
    close_proxy(connfd);
    printf(" - Connection closed\n");

    return NULL;
}

void close_proxy(int connfd) {
    Close(connfd);
}

void redir_back(int connfd, int clientfd, rio_t *rioclientp, rio_t *rioserverp, char *uri2) {
    printf(" * Redirecting back...\n");

    char header[MAXLINE];
    char headname[MAXLINE];
    char headval[MAXLINE];
    char content_type[MAXLINE];
    char content[MAX_OBJECT_SIZE];
    int content_len = 0;

    while ((nread = rio_readlineb(rioserverp, header, MAXLINE)) != 0) {
        printf("s> %s", header);
        rio_writen(connfd, header, strlen(header));

        sscanf(header, "%s %s", headname, headval);

        // Content-length
        if (strcmp(headname, "Content-length:") == 0) {
            content_len = atoi(headval);
        }

        // Content-type
        if (strcmp(headname, "Content-type:") == 0) {
            strcpy(content_type, headval);
        }

        if (strcmp(header, "\r\n") == 0) {
            nread = rio_readnb(rioserverp, content, content_len);

            if (nread != content_len) {
                printf(" * Received (%d) less bytes than promised (%d)", nread, content_len);
                exit(0);
            }

            printf(" | content_len: %d\n", content_len);
            printf(" | nread: %d\n", nread);

            Rio_writen(connfd, content, content_len);

            if (content_len <= MAX_OBJECT_SIZE) {
                cache_add(cache, uri2, content_len, content_type, content);
            }

            break;
        }
    }
}

void sigchld_handler(int sig) {
    while (waitpid(-1, 0, WNOHANG) > 0)
    { }
}