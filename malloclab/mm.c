/*
 * Use AVL tree to manage free blocks with a heuristic of pre-allocating some small-sized blocks.
 * 
 * Block structure:
 *   (free block)      --> | SIZE + A | LEFT | RIGHT | HEIGHT | ... | SIZE |
 *   (allocated block) --> | SIZE + A |             DATA            | SIZE |
 * (A - allocated/free bit)
 */

#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <unistd.h>
#include <string.h>

#include "mm.h"
#include "memlib.h"

/* Team information */
team_t team = {
    /* Team name */
    "le wands",
    /* First member's full name */
    "Silap Aliyev",
    /* First member's email address */
    "seeeelup@kaist.ac.kr",
    /* Second member's full name (leave blank if none) */
    "Batzorig Zorigo",
    /* Second member's email address (leave blank if none) */
    "batzorig@kaist.ac.kr"
};



/* Custom macros */
#define max(a,b) \
    ({ __typeof__ (a) _a = (a); \
       __typeof__ (b) _b = (b); \
       _a > _b ? _a : _b; })

#define ASSERT(X)
// #define ASSERT(X) assert(X)

#define FALSE 0
#define TRUE  1

/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(size) (((size) + (ALIGNMENT-1)) & ~0x7)

/* size information */
#define SIZE_T_SIZE     (ALIGN(sizeof(size_t)))
#define HEIGHT_SIZE     (ALIGN(sizeof(int))) // DONE: if debugging turns into 7.07 antimage,
                                                //       try (size_t -> int) for less headache
                                                // NOTE: if you do so, dont forget to modify `size_t height()` as well.
#define POINTER_SIZE    (ALIGN(sizeof(void *)))
#define META_SIZE       (SIZE_T_SIZE<<1)
#define MIN_DATA_SIZE   ((POINTER_SIZE<<1) + HEIGHT_SIZE)

/* Constants for small-sized blocks */
#define SMALL_SIZE (64 + META_SIZE)
#define SMALL_COUNT 8

/* Coalescing helpers */
#define BLOCK_PREV_SIZE2(PTR)   (*(size_t *)((char *)(PTR) - SIZE_T_SIZE))
#define BLOCK_PREV(PTR)         ((void *)((char *)(PTR) - (BLOCK_PREV_SIZE2(PTR) & -2)))

#define BLOCK_NEXT(PTR)      ((void *)((char *)(PTR) + (BLOCK_SIZE(PTR) & -2)))

/* AVL Tree helpers */
#define BLOCK_SIZE(PTR)     (*(size_t *)(PTR))
#define BLOCK_SIZE2(PTR)    (*(size_t *)((char *)(PTR) + (BLOCK_SIZE(PTR) & -2) - SIZE_T_SIZE))
#define BLOCK_LEFT(PTR)     (*(void **)((char *)(PTR) + SIZE_T_SIZE))
#define BLOCK_RIGHT(PTR)    (*(void **)((char *)(PTR) + SIZE_T_SIZE + POINTER_SIZE))
#define BLOCK_HEIGHT(PTR)   (*(int *)((char *)(PTR) + SIZE_T_SIZE + (POINTER_SIZE<<1)))
#define BLOCK_DATA(PTR)     ((void *)((char *)(PTR) + SIZE_T_SIZE))

#define GET_BLOCK_PTR(D_PTR)      ((void *)((char *)(D_PTR) - SIZE_T_SIZE))
#define BLOCK_DATA_SIZE(PTR)    ((BLOCK_SIZE(PTR) & -2) - META_SIZE)



/* Global Variables */

void *root;



/* Function declarations */

/* Miscellaneous */
int mm_check();
void mm_malloc_small();

/* mm_check() helpers */
int tree_marked_free(void *curblock);
int find(void *remblock, void *curblock);

/* AVL tree */
void * insert(void *newblock, void *curblock);
void * erase(void *remblock, void *curblock);
void * singleRightRotate(void *curblock);
void * singleLeftRotate(void *curblock);
void * doubleRightRotate(void *curblock);
void * doubleLeftRotate(void *curblock);
void * balance(void *curblock);
int height(void *curblock);
void * findBestFit(size_t reqsize, void *curblock);
void * leftmost(void *curblock);



/* mm implementations */

/* 
 * mm_init - Initializes the malloc package.
 */
int mm_init(void)
{
    /* initialize AVL tree */
    root = NULL;

    /* pre-allocate small-sized blocks */
    mm_malloc_small();
    return 0;
}

/* 
 * mm_malloc -
 * Searches for fitting free block in the AVL tree. Creates new block by
 * increasing heap size if no fitting block is found in the tree.
 */
void *mm_malloc(size_t size)
{
    size_t reqsize = META_SIZE + max(MIN_DATA_SIZE, ALIGN(size)); // calculate actual block size

    /* Search tree for best fit */
    void *bfblock = findBestFit(reqsize, root);

    /* If no small sized blocks left allocate more */
    if (bfblock == NULL && reqsize <= SMALL_SIZE) {
        mm_malloc_small();

        bfblock = findBestFit(reqsize, root);
    }

    if (bfblock == NULL) {
        /* If no fitting block found in tree, create new block by
           increasing heap size */

        void *low = mem_heap_lo();
        void *high = (void *)((char *)mem_heap_hi() + 1);
        void *lastblock = BLOCK_PREV(high);

        if (low < high && (BLOCK_SIZE(lastblock) & 1) == 0) {
            /* If block at the end of heap is free, utilize it */

            root = erase(lastblock, root);
            bfblock = mem_sbrk(reqsize - BLOCK_SIZE(lastblock));

            if (bfblock == (void *)-1) // mem_sbrk failed
                return NULL;

            bfblock = lastblock;
            BLOCK_SIZE(bfblock) = reqsize;
            BLOCK_SIZE2(bfblock) = reqsize;
        }
        else {
            /* Otherwise, increase heap by request size */

            bfblock = mem_sbrk(reqsize);

            if (bfblock == (void *)-1) // mem_sbrk failed
                return NULL;

            BLOCK_SIZE(bfblock) = reqsize;
            BLOCK_SIZE2(bfblock) = reqsize;
        }
    }
    else {
        // DONE: Instead of giving everything we found give what is asked for (or 1.5 times more?).
        //       If unused half can be independent block by itself then try splitting it?

        /* Remove block from tree (of free blocks) */
        root = erase(bfblock, root);

        // TODO: try not giving exactly what is requested, but slightly more (useful for realloc)
        if (BLOCK_SIZE(bfblock) - reqsize >= META_SIZE + MIN_DATA_SIZE) {
            /* Free extra space from the end of found block to
               avoid internal fragmentation */

            size_t restsize = BLOCK_SIZE(bfblock) - reqsize;

            BLOCK_SIZE(bfblock) = reqsize;
            BLOCK_SIZE2(bfblock) = reqsize;

            void *newblock = BLOCK_NEXT(bfblock);
            BLOCK_SIZE(newblock) = restsize;
            BLOCK_SIZE2(newblock) = restsize;

            root = insert(newblock, root);
        }
    }

    /* Mark as allocated */
    BLOCK_SIZE(bfblock) = BLOCK_SIZE(bfblock) | 1;

    return BLOCK_DATA(bfblock);
}

/*
 * mm_free - Insert free block back into AVL tree. Coalesce if possible.
 */
void mm_free(void *ptr)
{
    void *newblock = GET_BLOCK_PTR(ptr);

    /* Mark as free */
    BLOCK_SIZE(newblock) = BLOCK_SIZE(newblock) & -2;

    /* Coalesce if possible */
    
    // DONE: Check for overflows using mem_heap_lo() and mem_heap_hi()

    void *low = mem_heap_lo();
    void *high = (void *)((char *)mem_heap_hi() + 1);

    /* Coalesce with previous block */
    void *prevblock = BLOCK_PREV(newblock);
    if (low < newblock && (BLOCK_SIZE(prevblock) & 1) == 0) {
        root = erase(prevblock, root);
        BLOCK_SIZE(prevblock) = BLOCK_SIZE(prevblock) + BLOCK_SIZE(newblock);
        BLOCK_SIZE2(prevblock) = BLOCK_SIZE(prevblock);
        newblock = prevblock;
    }

    /* Coalesce with next block */
    void *nextblock = BLOCK_NEXT(newblock);
    if (nextblock < high && (BLOCK_SIZE(nextblock) & 1) == 0) {
        root = erase(nextblock, root);
        BLOCK_SIZE(newblock) = BLOCK_SIZE(newblock) + BLOCK_SIZE(nextblock);
        BLOCK_SIZE2(newblock) = BLOCK_SIZE(newblock);
    }

    /* Insert freed block into AVL tree */
    root = insert(newblock, root);
}

/*
 * mm_realloc -
 * Implemented simply in terms of mm_malloc and mm_free.
 * Reallocates twice more memory when old block size is not enough.
 */
void *mm_realloc(void *ptr, size_t size)
{
    if (ptr == NULL) {
        /* Serve as malloc() */
        return mm_malloc(size);
    }
    else if (size == 0) {
        /* Serve as free() */
        mm_free(ptr);
        return NULL;
    }
    else {
        /* Serve as realloc() */

        size_t reqsize = META_SIZE + max(MIN_DATA_SIZE, ALIGN(size));
        void *curblock = GET_BLOCK_PTR(ptr);

        if ((BLOCK_SIZE(curblock) & -2) >= reqsize) {
            /* If old block size is enough, return old block */
            return BLOCK_DATA(curblock);
        }
        else {
            /* Otherwise, allocate new block and copy old data */

            /* Allocate twice more than requested */
            void *newptr = mm_malloc(2*size);

            if (newptr == NULL)
                return NULL;

            size_t ncpy = BLOCK_DATA_SIZE(curblock);
            memcpy(newptr, ptr, ncpy);
            mm_free(ptr);
            return newptr;
        }
    }
}

/*
 * mm_malloc_small - Create total of SMALL_COUNT small-sized blocks (each of size SMALL_SIZE)
 */
void mm_malloc_small() {
    int i;
    for (i = 0; i < SMALL_COUNT; i++) {
        /* Create new small-sized block by increasing heap size */

        void *newblock = mem_sbrk(SMALL_SIZE);

        if (newblock == (void *)-1) // mem_sbrk failed
            exit(0);

        BLOCK_SIZE(newblock) = SMALL_SIZE;
        BLOCK_SIZE2(newblock) = SMALL_SIZE;

        /* Insert new block into AVL tree */
        root = insert(newblock, root);
    }
}

/*
 * mm_check - Check the heap for invariants.
 */
int mm_check() {
    /* Check if every block in tree is marked free */
    if (tree_marked_free(root) == FALSE) {
        fprintf(stderr, "CHECK FAILED: Some blocks in the tree are not marked as free.\n");
        return -1;
    }

    /* Check if every free block is in the tree */
    void *low = mem_heap_lo();
    void *high = (void *)((char *)mem_heap_hi() + 1);
    void *curblock = low;

    while (curblock < high) {
        if ((BLOCK_SIZE(curblock) & 1) == 0 && find(curblock, root) == FALSE) {
            fprintf(stderr, "CHECK FAILED: block %p is free but not in the tree.\n", curblock);
            return -2;
        }

        curblock = BLOCK_NEXT(curblock);
    }
}

/*
 * tree_marked_free - Check if all every block in current subtree is marked as free.
 */
int tree_marked_free(void *curblock) {
    if (curblock) {
        if (BLOCK_SIZE(curblock) & 1)
            return FALSE;
        if (tree_marked_free(BLOCK_LEFT(curblock)) == FALSE)
            return FALSE;
        if (tree_marked_free(BLOCK_RIGHT(curblock)) == FALSE)
            return FALSE;
    }

    return TRUE;
}

/*
 * find - Check if given block is already in tree.
 */
int find(void *remblock, void *curblock)
{
    if (curblock == NULL) {
        return FALSE;
    }
    else if (BLOCK_SIZE(remblock) == BLOCK_SIZE(curblock)) {
        /* If block sizes are same, use block address to continue search */
        if (remblock == curblock) {
            return TRUE;
        }
        else if (remblock < curblock) {
            /* Search in left subtree */
            return find(remblock, BLOCK_LEFT(curblock));
        }
        else /* if (remblock > curblock) */ {
            /* Search in right subtree */
            return find(remblock, BLOCK_RIGHT(curblock));
        }
    }
    else if (BLOCK_SIZE(remblock) < BLOCK_SIZE(curblock)) {
        /* Search in left subtree */
        return find(remblock, BLOCK_LEFT(curblock));
    }
    else /* if (BLOCK_SIZE(remblock) > BLOCK_SIZE(curblock)) */ {
        /* Search in right subtree */
        return find(remblock, BLOCK_RIGHT(curblock));
    }
}

/*
 * 
 * AVL Tree implementation
 * 
 */


// TODO: disable assert()'s for better performance

// void *root;

/*
 * height - Safely get height of a block. Returns 0 for terminal leaves (NULL).
 */
int height(void *curblock)
{
    return (curblock == NULL ?0 :BLOCK_HEIGHT(curblock));
}

/*
 * insert - Insert new block into AVL tree. Sorts using block size first, and then using block addresses.
 */
void * insert(void *newblock, void *curblock)
{
    if (curblock == NULL) {
        /* Insert into tree as leaf */
        BLOCK_LEFT(newblock) = NULL;
        BLOCK_RIGHT(newblock) = NULL;
        BLOCK_HEIGHT(newblock) = 1;
        return newblock;
    }
    else if (BLOCK_SIZE(newblock) == BLOCK_SIZE(curblock)) {
        /* If block sizes are same, break tie using block address */
        if (newblock < curblock) {
            /* Insert into left subtree */
            BLOCK_LEFT(curblock) = insert(newblock, BLOCK_LEFT(curblock));
        }
        else if (newblock > curblock) {
            /* Insert into right subtree */
            BLOCK_RIGHT(curblock) = insert(newblock, BLOCK_RIGHT(curblock));
        }
    }
    else if (BLOCK_SIZE(newblock) < BLOCK_SIZE(curblock)) {
        /* Insert into left subtree */
        BLOCK_LEFT(curblock) = insert(newblock, BLOCK_LEFT(curblock));
    }
    else if (BLOCK_SIZE(newblock) > BLOCK_SIZE(curblock)) {
        /* Insert into right subtree */
        BLOCK_RIGHT(curblock) = insert(newblock, BLOCK_RIGHT(curblock));
    }

    /* Update tree height */
    BLOCK_HEIGHT(curblock) = max(height(BLOCK_LEFT(curblock)), height(BLOCK_RIGHT(curblock))) + 1;

    /* Balance tree */
    curblock = balance(curblock);
    
    return curblock;
}

/*
 * findBestFit - Returns smallest free block such that request_size <= block_size holds.
 */
void * findBestFit(size_t reqsize, void *curblock)
{
    if (curblock == NULL) {
        /* No best fit found in this subtree */
        return NULL;
    }
    else if (reqsize <= BLOCK_SIZE(curblock)) {
        /* Look for best fit in left subtree */
        void *bfblock = findBestFit(reqsize, BLOCK_LEFT(curblock));

        /* If any best fit is found return it */
        if (bfblock)
            return bfblock;

        /* Otherwise return this block */
        return curblock;
    }
    else /* if (reqsize > BLOCK_SIZE(curblock)) */ {
        /* Look for best fit in right subtree */
        return findBestFit(reqsize, BLOCK_RIGHT(curblock));
    }
}

// NOTE: remove is already in use (FIXED: changed (remove -> erase))

/*
 * erase - Removes a block that is already in the AVL tree.
 */
void * erase(void *remblock, void *curblock)
{
    ASSERT(curblock != NULL);
    
    if (BLOCK_SIZE(remblock) == BLOCK_SIZE(curblock)) {
        /* If block sizes are same, use block address to continue search */
        if (remblock == curblock) {
            /* Block to be removed is found */

            if (BLOCK_LEFT(curblock) && BLOCK_RIGHT(curblock)) {
                /* If current tree has both subtrees replace current block with leftmost
                   block in right subtree */

                /* Find leftmost block right subtree */
                void *lmblock = leftmost(BLOCK_RIGHT(curblock));

                /* Erase found leftmost block from tree */
                BLOCK_RIGHT(curblock) = erase(lmblock, BLOCK_RIGHT(curblock));

                /* And make the leftmost block root of current subtree */
                BLOCK_LEFT(lmblock) = BLOCK_LEFT(curblock);
                BLOCK_RIGHT(lmblock) = BLOCK_RIGHT(curblock);
                curblock = lmblock;
            }
            else if (BLOCK_LEFT(curblock) == NULL) {
                /* If current tree has only right subtree return it */
                return BLOCK_RIGHT(curblock);
            }
            else if (BLOCK_RIGHT(curblock) == NULL) {
                /* If current tree has only left subtree return it */
                return BLOCK_LEFT(curblock);
            }
        }
        else if (remblock < curblock) {
            /* Search in left subtree */
            BLOCK_LEFT(curblock) = erase(remblock, BLOCK_LEFT(curblock));
        }
        else if (remblock > curblock) {
            /* Search in right subtree */
            BLOCK_RIGHT(curblock) = erase(remblock, BLOCK_RIGHT(curblock));
        }
    }
    else if (BLOCK_SIZE(remblock) < BLOCK_SIZE(curblock)) {
        /* Search in left subtree */
        BLOCK_LEFT(curblock) = erase(remblock, BLOCK_LEFT(curblock));
    }
    else if (BLOCK_SIZE(remblock) > BLOCK_SIZE(curblock)) {
        /* Search in right subtree */
        BLOCK_RIGHT(curblock) = erase(remblock, BLOCK_RIGHT(curblock));
    }

    /* Update tree height */
    BLOCK_HEIGHT(curblock) = max(height(BLOCK_LEFT(curblock)), height(BLOCK_RIGHT(curblock))) + 1;
    
    /* Balance tree */
    curblock = balance(curblock);

    return curblock;
}

/*
 * leftmost - Returns leftmost block in given subtree.
 */
void * leftmost(void *curblock)
{
    if (BLOCK_LEFT(curblock))
        return leftmost(BLOCK_LEFT(curblock));
    return curblock;
}

/*
 * singleRightRotate - Does right rotate on current subtree.
 */
void * singleRightRotate(void *curblock)
{
    ASSERT(curblock != NULL);
    void *leftblock = BLOCK_LEFT(curblock);
    ASSERT(leftblock != NULL);
    BLOCK_LEFT(curblock) = BLOCK_RIGHT(leftblock);
    BLOCK_RIGHT(leftblock) = curblock;
    BLOCK_HEIGHT(curblock) = max(height(BLOCK_LEFT(curblock)), height(BLOCK_RIGHT(curblock))) + 1;
    BLOCK_HEIGHT(leftblock) = max(height(BLOCK_LEFT(leftblock)), height(BLOCK_RIGHT(leftblock))) + 1;
    return leftblock;
}

/*
 * singleLeftRotate - Does left rotate on current subtree.
 */
void * singleLeftRotate(void *curblock)
{
    ASSERT(curblock != NULL);
    void *rightblock = BLOCK_RIGHT(curblock);
    ASSERT(rightblock != NULL);
    BLOCK_RIGHT(curblock) = BLOCK_LEFT(rightblock);
    BLOCK_LEFT(rightblock) = curblock;
    BLOCK_HEIGHT(curblock) = max(height(BLOCK_LEFT(curblock)), height(BLOCK_RIGHT(curblock))) + 1;
    BLOCK_HEIGHT(rightblock) = max(height(BLOCK_LEFT(rightblock)), height(BLOCK_RIGHT(rightblock))) + 1;
    return rightblock;
}

/*
 * doubleRightRotate - Does left rotate on left subtree and then right rotate on current subtree.
 */
void * doubleRightRotate(void *curblock)
{
    BLOCK_LEFT(curblock) = singleLeftRotate(BLOCK_LEFT(curblock));
    return singleRightRotate(curblock);
}

/*
 * doubleRightRotate - Does right rotate on right subtree and then left rotate on current subtree.
 */
void * doubleLeftRotate(void *curblock)
{
    BLOCK_RIGHT(curblock) = singleRightRotate(BLOCK_RIGHT(curblock));
    return singleLeftRotate(curblock);
}

/*
 * balance - Balances current subtree.
 */
void * balance(void *curblock)
{
    if (height(BLOCK_LEFT(curblock)) - height(BLOCK_RIGHT(curblock)) == 2) {
        /* Balance left-heavy subtree */
        ASSERT(BLOCK_LEFT(curblock) != NULL);

        if (height(BLOCK_RIGHT(BLOCK_LEFT(curblock))) - height(BLOCK_LEFT(BLOCK_LEFT(curblock))) == 1)
            return doubleRightRotate(curblock);
        else
            return singleRightRotate(curblock);
    }
    else if (height(BLOCK_RIGHT(curblock)) - height(BLOCK_LEFT(curblock)) == 2) {
        /* Balance right-heavy subtree */
        ASSERT(BLOCK_RIGHT(curblock) != NULL);

        if (height(BLOCK_LEFT(BLOCK_RIGHT(curblock))) - height(BLOCK_RIGHT(BLOCK_RIGHT(curblock))) == 1)
            return doubleLeftRotate(curblock);
        else
            return singleLeftRotate(curblock);
    }
    else {
        /* Subtree is already balanced */
        ASSERT(height(BLOCK_LEFT(curblock)) - height(BLOCK_RIGHT(curblock)) < 2);
        ASSERT(height(BLOCK_RIGHT(curblock)) - height(BLOCK_LEFT(curblock)) < 2);

        return curblock;
    }
}
