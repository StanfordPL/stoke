/*BEGIN_LEGAL 
Intel Open Source License 

Copyright (c) 2002-2013 Intel Corporation. All rights reserved.
 
Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are
met:

Redistributions of source code must retain the above copyright notice,
this list of conditions and the following disclaimer.  Redistributions
in binary form must reproduce the above copyright notice, this list of
conditions and the following disclaimer in the documentation and/or
other materials provided with the distribution.  Neither the name of
the Intel Corporation nor the names of its contributors may be used to
endorse or promote products derived from this software without
specific prior written permission.
 
THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE INTEL OR
ITS CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
END_LEGAL */
// Developed by Ady Tal
// This file produces a binary with large trace that can be used 
//   for testing purposes.
// Sample use: pin -xyzzy -region-max-inss 5000 -t <pintool> -- bigBinary

#include <stdio.h>

// Use array of struct to make access to a cell more exensive
#define SETVAL(X, V) \
    mat[X][0] = V;   \
    mat[X][1] = V;   \
    mat[X][2] = V;   \
    mat[X][3] = V;   \
    mat[X][4] = V;   \
    mat[X][5] = V;   \
    mat[X][6] = V;   \
    mat[X][7] = V;   \
    mat[X][8] = V;   \
    mat[X][9] = V
    

#define INIT(X, V)     \
    SETVAL((X)+0, V);   \
    SETVAL((X)+1, V);   \
    SETVAL((X)+2, V);   \
    SETVAL((X)+3, V);   \
    SETVAL((X)+4, V);   \
    SETVAL((X)+5, V);   \
    SETVAL((X)+6, V);   \
    SETVAL((X)+7, V);   \
    SETVAL((X)+8, V);   \
    SETVAL((X)+9, V)

int mat[50][10];

int init_mat(int val)
{
    // This create a function with 500 C lines, each line is translated
    // to about 3 assembly instructions, the size of the function is approx. 1400 ins.
    int sum = 0;
    INIT(0, val);
    INIT(10, val+1);
    INIT(20, val+2);
    INIT(30, val+3);
    INIT(40, val+4);

    if (val) {
        sum = 100 * (5 * val + 10);
    } else{
        sum = 5000;
    }
    return sum;
}
   
int mat_sum()
{
    int s = 0, i, j;
    for (i = 0; i < 50; i++)
        for (j = 0; j < 10; j++)
            s += mat[i][j];
    
    return s;
}

int main()
{
    int sum1, sum2;
    sum1 = init_mat(3);
    sum2 = mat_sum();
    printf("sum1 = %d sum2 = %d\n", sum1, sum2);
    return 0;
}

