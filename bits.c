/* 
 * CS:APP Data Lab 
 * 
 * Silap Aliyev (20160844) seeeelup@kaist.ac.kr
 * 
 * bits.c - Source file with your solutions to the Lab.
 *          This is the file you will hand in to your instructor.
 *
 * WARNING: Do not include the <stdio.h> header; it confuses the dlc
 * compiler. You can still use printf for debugging without including
 * <stdio.h>, although you might get a compiler warning. In general,
 * it's not good practice to ignore compiler warnings, but in this
 * case it's OK.  
 */

#if 0
/*
 * Instructions to Students:
 *
 * STEP 1: Read the following instructions carefully.
 */

You will provide your solution to the Data Lab by
editing the collection of functions in this source file.

INTEGER CODING RULES:
 
  Replace the "return" statement in each function with one
  or more lines of C code that implements the function. Your code 
  must conform to the following style:
 
  int Funct(arg1, arg2, ...) {
      /* brief description of how your implementation works */
      int var1 = Expr1;
      ...
      int varM = ExprM;

      varJ = ExprJ;
      ...
      varN = ExprN;
      return ExprR;
  }

  Each "Expr" is an expression using ONLY the following:
  1. Integer constants 0 through 255 (0xFF), inclusive. You are
      not allowed to use big constants such as 0xffffffff.
  2. Function arguments and local variables (no global variables).
  3. Unary integer operations ! ~
  4. Binary integer operations & ^ | + << >>
    
  Some of the problems restrict the set of allowed operators even further.
  Each "Expr" may consist of multiple operators. You are not restricted to
  one operator per line.

  You are expressly forbidden to:
  1. Use any control constructs such as if, do, while, for, switch, etc.
  2. Define or use any macros.
  3. Define any additional functions in this file.
  4. Call any functions.
  5. Use any other operations, such as &&, ||, -, or ?:
  6. Use any form of casting.
  7. Use any data type other than int.  This implies that you
     cannot use arrays, structs, or unions.

 
  You may assume that your machine:
  1. Uses 2s complement, 32-bit representations of integers.
  2. Performs right shifts arithmetically.
  3. Has unpredictable behavior when shifting an integer by more
     than the word size.

EXAMPLES OF ACCEPTABLE CODING STYLE:
  /*
   * pow2plus1 - returns 2^x + 1, where 0 <= x <= 31
   */
  int pow2plus1(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     return (1 << x) + 1;
  }

  /*
   * pow2plus4 - returns 2^x + 4, where 0 <= x <= 31
   */
  int pow2plus4(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     int result = (1 << x);
     result += 4;
     return result;
  }

FLOATING POINT CODING RULES

For the problems that require you to implent floating-point operations,
the coding rules are less strict.  You are allowed to use looping and
conditional control.  You are allowed to use both ints and unsigneds.
You can use arbitrary integer and unsigned constants.

You are expressly forbidden to:
  1. Define or use any macros.
  2. Define any additional functions in this file.
  3. Call any functions.
  4. Use any form of casting.
  5. Use any data type other than int or unsigned.  This means that you
     cannot use arrays, structs, or unions.
  6. Use any floating point data types, operations, or constants.


NOTES:
  1. Use the dlc (data lab checker) compiler (described in the handout) to 
     check the legality of your solutions.
  2. Each function has a maximum number of operators (! ~ & ^ | + << >>)
     that you are allowed to use for your implementation of the function. 
     The max operator count is checked by dlc. Note that '=' is not 
     counted; you may use as many of these as you want without penalty.
  3. Use the btest test harness to check your functions for correctness.
  4. Use the BDD checker to formally verify your functions
  5. The maximum number of ops for each function is given in the
     header comment for each function. If there are any inconsistencies 
     between the maximum ops in the writeup and in this file, consider
     this file the authoritative source.

/*
 * STEP 2: Modify the following functions according the coding rules.
 * 
 *   IMPORTANT. TO AVOID GRADING SURPRISES:
 *   1. Use the dlc compiler to check that your solutions conform
 *      to the coding rules.
 *   2. Use the BDD checker to formally verify that your solutions produce 
 *      the correct answers.
 */


#endif
/* Copyright (C) 1991-2016 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
/* This header is separate from features.h so that the compiler can
   include it implicitly at the start of every compilation.  It must
   not itself include <features.h> or any other header that includes
   <features.h> because the implicit include comes before any feature
   test macros that may be defined in a source file before it first
   explicitly includes a system header.  GCC knows the name of this
   header in order to preinclude it.  */
/* glibc's intent is to support the IEC 559 math functionality, real
   and complex.  If the GCC (4.9 and later) predefined macros
   specifying compiler intent are available, use them to determine
   whether the overall intent is to support these features; otherwise,
   presume an older compiler has intent to support these features and
   define these macros by default.  */
/* wchar_t uses Unicode 8.0.0.  Version 8.0 of the Unicode Standard is
   synchronized with ISO/IEC 10646:2014, plus Amendment 1 (published
   2015-05-15).  */
/* We do not support C11 <threads.h>.  */
/* 
 * bitAnd - x&y using only ~ and | 
 *   Example: bitAnd(6, 5) = 4
 *   Legal ops: ~ |
 *   Max ops: 8
 *   Rating: 1
 */
int bitAnd(int x, int y) {
  /**
   * x & y = ~(~(x & y)) = ~(~x | ~y)
   */

  return ~(~x | ~y);
}
/* 
 * leastBitPos - return a mask that marks the position of the
 *               least significant 1 bit. If x == 0, return 0
 *   Example: leastBitPos(96) = 0x20
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 6
 *   Rating: 2
 */
int leastBitPos(int x) {
  /**
   * x and -x share same least significant bits until least significant 1 bit (inclusive)
   * and all other bits reverse of each other.
   * Ex: x = 0b11100010000 and -x = 0b00011110000
   */

  return x & (~x + 1);
}
/* 
 * replaceByte(x,n,c) - Replace byte n in x with c
 *   Bytes numbered from 0 (LSB) to 3 (MSB)
 *   Examples: replaceByte(0x12345678,1,0xab) = 0x1234ab78
 *   You can assume 0 <= n <= 3 and 0 <= c <= 255
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 10
 *   Rating: 3
 */
int replaceByte(int x, int n, int c) {
  /**
   * zero out n-th byte and then write c there using |
   */

  int shift = n << 3;
  return (x & ~(0xFF << shift)) | (c << shift);
}
/* 
 * bang - Compute !x without using !
 *   Examples: bang(3) = 0, bang(0) = 1
 *   Legal ops: ~ & ^ | + << >>
 *   Max ops: 12
 *   Rating: 4 
 */
int bang(int x) {
  /**
   * Fact: x = 0 is the only number such that both itself (x) and
   * its negative (-x) are non-negative (sign-bit off).
   * Utilize this fact and sign bits to achieve bang.
   */

  return ((x >> 31) | ((~x + 1) >> 31)) + 1;
}
/*
 * leftBitCount - returns count of number of consective 1's in
 *     left-hand (most significant) end of word.
 *   Examples: leftBitCount(-1) = 32, leftBitCount(0xFFF0F0F0) = 12
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 50
 *   Rating: 4
 */
int leftBitCount(int x) {
  /**
   * Use following algorithm similar to dynamic programming/knapsack problem.
   * For n in 16, 8, 4, 2, 1:
   *   Check if leftmost n bits are all 1.
   *   If so add n to total and right-shift x n places.
   *   (That is, remove first n bits. Move remaining bits to right.)
   * Do the above for n = 1, for the case when all 32 bits are 1.
   */
  int tot = 0;
  int cur = 0;
  int xx = x;

  cur = !(~(xx >> 16)) << 4; // 16 or 0 (depending on whether first 16 bits are all 1s)
  tot = cur; // add cur to tot
  xx = xx << cur; // remove first cur bits of 1s

  cur = !(~(xx >> 24)) << 3;
  tot += cur;
  xx = xx << cur;

  cur = !(~(xx >> 28)) << 2;
  tot += cur;
  xx = xx << cur;

  cur = !(~(xx >> 30)) << 1;
  tot += cur;
  xx = xx << cur;

  cur = !(~(xx >> 31));
  tot += cur;
  xx = xx << cur;

  cur = !(~(xx >> 31));
  tot += cur;

  return tot;
}
/* 
 * TMax - return maximum two's complement integer 
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 4
 *   Rating: 1
 */
int tmax(void) {
  /**
   * Turn all bits to 1, then flip the sign bit.
   */

  return (~0) ^ (1 << 31);
}
/* 
 * implication - return x -> y in propositional logic - 0 for false, 1
 * for true
 *   Example: implication(1,1) = 1
 *            implication(1,0) = 0
 *   Legal ops: ! ~ ^ |
 *   Max ops: 5
 *   Rating: 2
 */
int implication(int x, int y) {
  /**
   * x -> y = ~x | y
   */
  
  return (!x) | (!!y);
}
/* 
 * negate - return -x 
 *   Example: negate(1) = -1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 5
 *   Rating: 2
 */
int negate(int x) {
  /**
   * Use standard algorithm: flip all bits and add 1.
   */

  return ~x + 1;
}
/* 
 * conditional - same as x ? y : z 
 *   Example: conditional(2,4,5) = 4
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 16
 *   Rating: 3
 */
int conditional(int x, int y, int z) {
  /**
   * Turn x into 0x00000000 or 0xffffffff accordingly.
   * Then using x and ~x choose one of y and z.
   */
  
  x = (x >> 31) | ((~x+1) >> 31);
  return (x & y) | (~x & z);
}
/* 
 * addOK - Determine if can compute x+y without overflow
 *   Example: addOK(0x80000000,0x80000000) = 0,
 *            addOK(0x80000000,0x70000000) = 1, 
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 3
 */
int addOK(int x, int y) {
  /**
   * Overflow doesn't happen, that is, adding is OK iff:
   * 1) sign(x) != sign(y)
   * OR
   * 2) sign(x) == sign(y) == sign(x+y)
   */

  int signx = (x >> 31) + 1; // 0 neg, 1 non-neg
  int signy = (y >> 31) + 1;
  int xaddy = x + y;
  int signa = (xaddy >> 31) + 1;

  return (signx ^ signy) | !(signy ^ signa);
}
/* 
 * isGreater - if x > y  then return 1, else return 0 
 *   Example: isGreater(4,5) = 0, isGreater(5,4) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 24
 *   Rating: 3
 */
int isGreater(int x, int y) {
  /**
   * x greater than y iff:
   * 1) x >= 0 > y
   * OR
   * 2) y >= 0 > x doesn't hold AND
   *    x - y is non-negative AND
   *    x - y is not zero
   */

  int signx = (x >> 31) + 1; // 0 neg, 1 non-neg
  int signy = (y >> 31) + 1;
  int xsuby = x + (~y + 1);
  int signs = (xsuby >> 31) + 1;

  return (signx & (!signy)) | ((!((!signx) & signy)) & signs & (!!xsuby));
}
/*
 * satMul3 - multiplies by 3, saturating to Tmin or Tmax if overflow
 *  Examples: satMul3(0x10000000) = 0x30000000
 *            satMul3(0x30000000) = 0x7FFFFFFF (Saturate to TMax)
 *            satMul3(0x70000000) = 0x7FFFFFFF (Saturate to TMax)
 *            satMul3(0xD0000000) = 0x80000000 (Saturate to TMin)
 *            satMul3(0xA0000000) = 0x80000000 (Saturate to TMin)
 *  Legal ops: ! ~ & ^ | + << >>
 *  Max ops: 25
 *  Rating: 3
 */
int satMul3(int x) {
  /**
   * Break 3*x to two steps: 2*x and 2*x + x.
   * Check if overflow happens in each step.
   * Saturate appropriately in case of overflow.
   */
  int tmin = 1 << 31;
  int tmax = ~tmin;

  int signx = x >> 31; // neg 0xFFFFFFFF, non-neg 0x00000000

  int x2 = x << 1; // x*2
  int sign2 = x2 >> 31;

  int x3 = x2 + x; // x*2 + x = x*3
  int sign3 = x3 >> 31;

  int overf = (signx ^ sign2) | (sign2 ^ sign3); // overflow 0xFFFFFFFF, otherwise 0x00000000

  return (~overf & x3) | (overf & ((signx & tmin) | (~signx & tmax)));
}
/* 
 * float_abs - Return bit-level equivalent of absolute value of f for
 *   floating point argument f.
 *   Both the argument and result are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representations of
 *   single-precision floating point values.
 *   When argument is NaN, return argument..
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 10
 *   Rating: 2
 */
unsigned float_abs(unsigned uf) {
  /**
   * Turn sign-bit off to get abs_uf.
   * If abs_uf is bigger than or equal to smallest "positive" NaN, return argument back.
   */

  unsigned abs_uf = uf & 0x7FFFFFFF;
  unsigned justBelowNaN = 0x7F800000;

  if (abs_uf > justBelowNaN) // uf is NaN
    return uf;

  return abs_uf;
}
/* 
 * float_f2i - Return bit-level equivalent of expression (int) f
 *   for floating point argument f.
 *   Argument is passed as unsigned int, but
 *   it is to be interpreted as the bit-level representation of a
 *   single-precision floating point value.
 *   Anything out of range (including NaN and infinity) should return
 *   0x80000000u.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
int float_f2i(unsigned uf) {
  // get individual parts
  unsigned sign = uf >> 31;
  unsigned exp = (uf >> 23) & 0xFF;
  unsigned frac = (uf & 0x7FFFFF);
  unsigned bias = 0x7F;
  unsigned res = frac;
  
  // NaN or inf
  if (exp == 0xFF)
    return 0x80000000u;
  
  // denormalized
  if (exp < bias)
    return 0x0;
  
  exp -= bias;
  
  // out of range
  if (exp >= 31)
    return 0x80000000u;
  
  // convert frac to int
  if (exp > 22)
    res = frac << (exp - 23);
  else
    res = frac >> (23 - exp);

  // add implied 1
  res += 1 << exp;
  
  // change sign appropriately
  if (sign)
    res = -res;
  
  return res;
}
