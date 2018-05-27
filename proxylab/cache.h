#ifndef __CACHE_H__
#define __CACHE_H__
#define MAX_CACHE_SIZE 1049000
#define MAX_OBJECT_SIZE 102400

typedef struct CacheNodeStruct {
    char *uri;
    int content_len;
    char *content_type;
    char *content;
    struct CacheNodeStruct *prev, *next;
} CacheNode;

typedef struct CacheListStruct {
    int free_space;
    CacheNode *head, *tail;
} CacheList;

extern pthread_mutex_t mutex;

void cache_init(CacheList *list);
void cache_renew(CacheList *list, CacheNode *node);
void cache_append(CacheList *list, CacheNode *node);
void cache_evict(CacheList *list);
void cache_add(CacheList *list, char *uri, int content_len, char *content_type, char *content);
CacheNode *cache_search(CacheList *list, char *uri);

#endif /* __CACHE_H__ */