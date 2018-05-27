/*
 * Silap Aliyev
 */

#include "cachelab.h"
#include <getopt.h>
#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>
#include <assert.h>

#define FALSE 0
#define TRUE 1

// a line of a cache set
typedef struct {
    int time;
    int valid;
    uint64_t tag;
} Line;

// a cache set
typedef struct {
    Line *lines;
} Set;

// information about cache state
Set* sets;
int sbits, eway, bbits;
int nsets, nlines, nblocks;
int nmisses, nhits, nevictions;

// name of tracefile
char *tracefile;

// timer
int lru_counter;

// allocate memory
void cache_init() {
    nmisses = 0;
    nhits = 0;
    nevictions = 0;
    lru_counter = 0;

    // allocate array of sets
    sets = malloc(sizeof(Set) * nsets);

    if (sets == NULL) { // allocation fail
        fprintf(stderr, "Failed to allocate Sets");
        exit(0);
    }

    int i;
    for (i = 0; i < nsets; i++) {
        // allocate lines for set[i]
        sets[i].lines = malloc(sizeof(Line) * nlines);

        if (sets[i].lines == NULL) { // allocation fail
            fprintf(stderr, "Failed to allocate Lines");
            exit(0);
        }

        int j;
        for (j = 0; j < nlines; j++) {
            sets[i].lines[j].time = 0;
            sets[i].lines[j].valid = FALSE;
            sets[i].lines[j].tag = 0;
        }
    }
}

// free allocated memory
void cache_free() {
    int i;
    for (i = 0; i < nsets; i++)
        free(sets[i].lines);

    free(sets);
}

// simulate memory access
void cache_access(uint64_t addr) {
    // calculate set index and tag from address
    uint64_t seti = (addr >> bbits) & ((1 << sbits) - 1);
    uint64_t tag = (addr >> (bbits + sbits));

    // lines of the set corresponding to address
    Line *lines = sets[seti].lines;

    // check if data already in cache
    // simultaneously, search for invalid line in current set
    int i;
    int invi = -1;
    int hit = FALSE;
    for (i = 0; i < nlines; i++) {
        if (lines[i].valid == TRUE && lines[i].tag == tag) {
            hit = TRUE;
            lines[i].time = lru_counter; // if data found in cache, update last access time
        }
        else if (lines[i].valid == FALSE && invi == -1)
            invi = i;
    }

    if (hit == TRUE) { // data already in cache
        nhits++;
    }
    else { // data not in cache
        nmisses++;

        if (invi != -1) { // if set not full and there is some invalid line
            // overwrite invalid line
            lines[invi].time = lru_counter;
            lines[invi].valid = TRUE;
            lines[invi].tag = tag;
        }
        else { // all lines in use, evict lru line
            nevictions++;

            // find line to evict
            int mintime = lru_counter;
            int evicti = -1;
            int i;
            for (i = 0; i < nlines; i++)
                if (mintime > lines[i].time) {
                    mintime = lines[i].time;
                    evicti = i;
                }

            // fvict line
            lines[evicti].time = lru_counter;
            lines[evicti].tag = tag;
            lines[evicti].valid = TRUE;
        }
    }

    // update timer, tick tock
    lru_counter++;
}

int main(int argc, char *argv[])
{
    // parse program arguments
    int c;
    while ( (c = getopt(argc, argv, "s:E:b:t:")) != -1) {
        switch (c) {
            case 's':
                sbits = atoi(optarg);
                nsets = 1 << sbits;
                break;
            case 'E':
                eway = atoi(optarg);
                nlines = eway;
                break;
            case 'b':
                bbits = atoi(optarg);
                nblocks = 1 << bbits;
                break;
            case 't':
                tracefile = optarg;
                break;
            default:
                printf("wow boi somin's wrong");
                break;
        }
    }

    // init cache
    cache_init();

    // open input file
    FILE* itrace = fopen(tracefile, "r");

    // read contents of input file
    char cmd;
    uint64_t raddr;
    int rsize;
    while (fscanf(itrace, " %c %"SCNx64",%d\n", &cmd, &raddr, &rsize) == 3) {
        if (cmd == 'M') { // modify
            cache_access(raddr); // load simulation
            cache_access(raddr); // store simulation
        }
        else if (cmd == 'L')
            cache_access(raddr); // load simulation
        else if (cmd == 'S')
            cache_access(raddr); // store simulation
    }

    // free memory
    cache_free();
    fclose(itrace);

    // print results
    printSummary(nhits, nmisses, nevictions);
    return 0;
}
