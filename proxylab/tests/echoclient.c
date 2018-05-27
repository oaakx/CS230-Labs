#include "csapp.h"

int My_open_clientfd(char *hostname, int port);

int main(int argc, char **argv) {
	int clientfd, port;
	char *host, buf[MAXLINE];
	rio_t rio;
	host = argv[1];
	port = atoi(argv[2]);
	
	clientfd = My_open_clientfd(host, port);
	Rio_readinitb(&rio, clientfd);

	printf("type: ");
	fflush(stdout);

	while (Fgets(buf, MAXLINE, stdin) != NULL) {
		Rio_writen(clientfd, buf, strlen(buf));
		Rio_readlineb(&rio, buf, MAXLINE);
		printf("echo: ");
		Fputs(buf, stdout);
		printf("type: ");
		fflush(stdout);
	}

	Close(clientfd);
	exit(0);
}

int My_open_clientfd(char *hostname, int port) {
	int clientfd;
	struct hostent *hp;
	struct sockaddr_in serveraddr;

	/* Create socket */
	if ((clientfd = socket(AF_INET, SOCK_STREAM, 0)) < 0)
		return -1; /* check errno for cause of error */

	/* Fill address */
	if ((hp = gethostbyname(hostname)) == NULL)
		return -2; /* check h_errno for cause of error */
	
	bzero((char *) &serveraddr, sizeof(serveraddr));
	serveraddr.sin_family = AF_INET;
	bcopy((char *) hp->h_addr_list[0], (char *) &serveraddr.sin_addr.s_addr, hp->h_length);
	serveraddr.sin_port = htons(port);

	/* Establish connection */
	if (connect(clientfd, (SA *) &serveraddr, sizeof(serveraddr)) < 0)
		return -1;

	return clientfd;
}
