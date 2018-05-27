#include <assert.h>
#include "csapp.h"
#include "cache.h"

void cache_init(CacheList *list) {
    list->free_space = MAX_CACHE_SIZE;
    list->head = list->tail = NULL;
}

void cache_renew(CacheList *list, CacheNode *node) {
    pthread_mutex_lock(&mutex);
    printf(" $begin cache_renew\n");

    if (list->tail != node) {
        if (node->prev != NULL)
            node->prev->next = node->next;

        if (node->next != NULL)
            node->next->prev = node->prev;

        list->tail->next = node;
        node->prev = list->tail;
        list->tail = node;
    }

    printf(" $end cache_renew\n");
    pthread_mutex_unlock(&mutex);
}

void cache_append(CacheList *list, CacheNode *node) {
    pthread_mutex_lock(&mutex);

    list->free_space -= node->content_len;

    if (list->tail == NULL) {
        list->head = list->tail = node;
    } else {
        node->prev = list->tail;
        list->tail->next = node;
        list->tail = node;
    }

    pthread_mutex_unlock(&mutex);
}

void cache_evict(CacheList *list) {
    pthread_mutex_lock(&mutex);

    assert(list->head != NULL);

    list->free_space += list->head->content_len;

    Free(list->head->uri);
    Free(list->head->content_type);
    Free(list->head->content);

    if (list->head == list->tail) {
        Free(list->head);
        list->head = list->tail = NULL;
    }
    else {
        Free(list->head);
        list->head = list->head->next;
    }

    pthread_mutex_unlock(&mutex);
}

void cache_add(CacheList *list, char *uri, int content_len, char *content_type, char *content) {
    CacheNode *node = Malloc(sizeof(CacheNode));

    node->uri = strdup(uri);
    node->content_len = content_len;
    node->content_type = strdup(content_type);
    node->content = strdup(content);
    node->prev = NULL;
    node->next = NULL;

    while (list->free_space < content_len) {
        cache_evict(list);
    }

    cache_append(list, node);
}

CacheNode *cache_search(CacheList *list, char *uri) {
    pthread_mutex_lock(&mutex);

    CacheNode *cur = list->head;
    while (cur != NULL) {
        if (strcmp(cur->uri, uri) == 0) {
            pthread_mutex_unlock(&mutex);
            return cur;
        }

        cur = cur->next;
    }

    pthread_mutex_unlock(&mutex);
    return NULL;
}