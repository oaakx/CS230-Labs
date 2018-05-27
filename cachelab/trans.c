/*
 * Silap Aliyev
 *
 * trans.c - Matrix transpose B = A^T
 *
 * Each transpose function must have a prototype of the form:
 * void trans(int M, int N, int A[N][M], int B[M][N]);
 *
 * A transpose function is evaluated by counting the number of misses
 * on a 1KB direct mapped cache with a block size of 32 bytes.
 */
#include <stdio.h>
#include "cachelab.h"

int is_transpose(int M, int N, int A[N][M], int B[M][N]);

/*
 * Transpose function optimized for 64x64 matrix size
 *
 * Warning: indices in the below code might go out of range
 * if used on matrix of size other than 64x64.
 */
char transpose_64x64_desc[] = "Transpose for 64x64";
void transpose_64x64(int M, int N, int A[N][M], int B[M][N])
{
    int i, j;
    int i1, j1;
    int aa, bb, cc, dd; // Assume that these are stored in registers

    // Explanation:
    // Use two 4x8 submatrices at the lower right
    // corner of B as intermediate storage.
    // That is, first, copy from 8x8 submatrix of A into
    // those two 4x8 submatrices. Then, from the intermediate
    // storage copy into corresponding 8x8 submatrix of B.
    // Avoid accessing any value at indices with i >= N-16 or 
    // j >= M-16, since that will cause some of the "intermediate storage"
    // data to be evicted from cache.
    for (i = 0; i < N-16; i += 8) {
        for (j = 0; j < M-16; j += 8) {
            // Copy to 4x8 matrix #1 (intermediate storage)
            for (i1 = i; i1 < i+4 && i1 < N-16; i1++)
                for (j1 = j; j1 < j+8 && j1 < M-16; j1++)
                    B[N-8+i1-i][M-16+j1-j] = A[i1][j1];

            // Copy to 4x8 matrix #2 (intermediate storage)
            for (i1 = i+4; i1 < i+8 && i1 < N-16; i1++)
                for (j1 = j; j1 < j+8 && j1 < M-16; j1++)
                    B[N-8+i1-i-4][M-8+j1-j] = A[i1][j1];

            // Copy to corresponding submatrix of B
            for (j1 = j; j1 < j+8 && j1 < M-16; j1++) {
                for (i1 = i; i1 < i+4 && i1 < N-16; i1++)
                    B[j1][i1] = B[N-8+i1-i][M-16+j1-j];
                for (i1 = i+4; i1 < i+8 && i1 < N-16; i1++)
                    B[j1][i1] = B[N-8+i1-i-4][M-8+j1-j];
            }
        }
    }

    // Copy remaining values
    //
    // Explanation:
    // Copy using 4x4 blocking.
    for (i = 0; i < N; i += 4) {
        for (j = 0; j < M; j += 4)
        if (N-16 <= i || M-16 <= j) {
            for (i1 = i; i1 < i+4; i1++) {
                    aa = A[i1][j+0];
                    bb = A[i1][j+1];
                    cc = A[i1][j+2];
                    dd = A[i1][j+3];

                    B[j+0][i1] = aa;
                    B[j+1][i1] = bb;
                    B[j+2][i1] = cc;
                    B[j+3][i1] = dd;
            }
        }
    }
}

/*
 * Transpose function optimized for 32x32 matrix size
 */
char transpose_32x32_desc[] = "Transpose for 32x32";
void transpose_32x32(int M, int N, int A[N][M], int B[M][N])
{
    int i, j;
    int i1;
    int aa, bb, cc, dd; // Assume that these are stored in registers
    int ee, ff, gg, hh;

    // Explanation:
    // Divide A into 8x8 submatrices and optimize each
    // 8x8 submatrix transpose similarly.
    for (i = 0; i < N; i += 8) {
        for (j = 0; j < M; j += 8) {
            for (i1 = i; i1 < i+8 && i1 < N; i1++) {
                // Copy 8 consecutive values from A into intermediate variables
                //
                // Explanation:
                // First access misses, 7 others hit.
                if (j+0 < M)
                    aa = A[i1][j+0];
                if (j+1 < M)
                    bb = A[i1][j+1];
                if (j+2 < M)
                    cc = A[i1][j+2];
                if (j+3 < M)
                    dd = A[i1][j+3];
                if (j+4 < M)
                    ee = A[i1][j+4];
                if (j+5 < M)
                    ff = A[i1][j+5];
                if (j+6 < M)
                    gg = A[i1][j+6];
                if (j+7 < M)
                    hh = A[i1][j+7];

                // Copy intermediate variables into B
                //
                // Explanation:
                // For i1=i all accesses miss. For i1=[i+1..i+7] all accesses hit,
                // except, when 8x8 matrix lies on the diagonal (in which case copying data
                // from a row of A (above code) evicts one of the sets reserved for accesses
                // below and results in 7 hits and 1 miss).
                if (j+0 < M)
                    B[j+0][i1] = aa;
                if (j+1 < M)
                    B[j+1][i1] = bb;
                if (j+2 < M)
                    B[j+2][i1] = cc;
                if (j+3 < M)
                    B[j+3][i1] = dd;
                if (j+4 < M)
                    B[j+4][i1] = ee;
                if (j+5 < M)
                    B[j+5][i1] = ff;
                if (j+6 < M)
                    B[j+6][i1] = gg;
                if (j+7 < M)
                    B[j+7][i1] = hh;
            }
        }
    }

}

/*
 * Transpose function optimized for 61x67 matrix size
 */
char transpose_61x67_desc[] = "Transpose for 61x67";
void transpose_61x67(int M, int N, int A[N][M], int B[M][N])
{
    int i, j;
    int i1;
    int aa, bb, cc, dd;  // Assume that these are stored in registers
    int ee, ff, gg, hh;

    // Explanation:
    // Unlike other cases, in 61x67 matrices there is no good pattern on
    // how some rectangular block of matrix maps to some set.
    // Just optimize using 8x8 blocking. Also, keep row jumps high (13, not 8 or 4)
    // to benefit from 32 sets we have in our cache.
    for (i = 0; i < N; i += 13) {
        for (j = 0; j < M; j += 8) {
            for (i1 = i; i1 < i+13 && i1 < N; i1++) {
                // Copy 8 consecutive values from A into intermediate variables
                //
                // Explanation:
                // First access misses, all others hit.
                if (j+0 < M)
                    aa = A[i1][j+0];
                if (j+1 < M)
                    bb = A[i1][j+1];
                if (j+2 < M)
                    cc = A[i1][j+2];
                if (j+3 < M)
                    dd = A[i1][j+3];
                if (j+4 < M)
                    ee = A[i1][j+4];
                if (j+5 < M)
                    ff = A[i1][j+5];
                if (j+6 < M)
                    gg = A[i1][j+6];
                if (j+7 < M)
                    hh = A[i1][j+7];

                // Copy intermediate variables into B
                if (j+0 < M)
                    B[j+0][i1] = aa;
                if (j+1 < M)
                    B[j+1][i1] = bb;
                if (j+2 < M)
                    B[j+2][i1] = cc;
                if (j+3 < M)
                    B[j+3][i1] = dd;
                if (j+4 < M)
                    B[j+4][i1] = ee;
                if (j+5 < M)
                    B[j+5][i1] = ff;
                if (j+6 < M)
                    B[j+6][i1] = gg;
                if (j+7 < M)
                    B[j+7][i1] = hh;
            }
        }
    }

}

/*
 * You can define additional transpose functions below. We've defined
 * a simple one below to help you get started.
 */

/*
 * trans - A simple baseline transpose function, not optimized for the cache.
 */
char trans_desc[] = "Simple row-wise scan transpose";
void trans(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, tmp;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; j++) {
            tmp = A[i][j];
            B[j][i] = tmp;
        }
    }

}

/*
 * transpose_submit - This is the solution transpose function that you
 *     will be graded on for Part B of the assignment. Do not change
 *     the description string "Transpose submission", as the driver
 *     searches for that string to identify the transpose function to
 *     be graded.
 */
char transpose_submit_desc[] = "Transpose submission";
void transpose_submit(int M, int N, int A[N][M], int B[M][N])
{
    // Handle each matrix size differently
    if (M == 61 && N == 67)
        transpose_61x67(M, N, A, B);
    else if (M == 32 && N == 32)
        transpose_32x32(M, N, A, B);
    else if (M == 64 && N == 64)
        transpose_64x64(M, N, A, B);
}

/*
 * registerFunctions - This function registers your transpose
 *     functions with the driver.  At runtime, the driver will
 *     evaluate each of the registered functions and summarize their
 *     performance. This is a handy way to experiment with different
 *     transpose strategies.
 */
void registerFunctions()
{
    /* Register your solution function */
    registerTransFunction(transpose_submit, transpose_submit_desc);

    /* Register any additional transpose functions */
    // registerTransFunction(trans, trans_desc);
    // registerTransFunction(transpose_8x8, transpose_8x8_desc);

}

/* 
 * is_transpose - This helper function checks if B is the transpose of
 *     A. You can check the correctness of your transpose by calling
 *     it before returning from the transpose function.
 */
int is_transpose(int M, int N, int A[N][M], int B[M][N])
{
    int i, j;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; ++j) {
            if (A[i][j] != B[j][i]) {
                return 0;
            }
        }
    }
    return 1;
}

