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
/***********************************************************************************/
/* This is a small application that calls a recursive function that have uses the  */
/* the stack. It expose a problem in the way the stack was setup on FreeBSD.       */
/***********************************************************************************/

#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <pthread.h>
#include <memory.h>
#include <string.h>

#define ARRAY_SIZE 10000
#define BUCKET 100000

static int total_compares = 0;

// compare function for qsort and merge sort
int compare_int(const void *p, const void *q)
{
    const int *pi = (const int *)p;
    const int *qi = (const int *)q;

    total_compares++;

    return ((*pi) - (*qi));
}

// a naive version of merge sort that uses the stack a lot
void stacksort(int *array, size_t nelem, int (*compar)(const void *, const void *))
{
    int left[ARRAY_SIZE];
    int right[ARRAY_SIZE];

    int i, nleft, nright, il, ir;

    // stop condition
    if (nelem == 1)
        return;

    if (nelem == 2)
    {
        if (compar(&array[0], &array[1]) > 0)
        {
            int t = array[0];
            array[0] = array[1];
            array[1] = t;
        }
        return;
    }

    // split the array to the left and right arrays
    for (i = 0; i < nelem/2; i++)
    {
        left[i] = array[2 * i];
        right[i] = array[2 * i + 1];
    }

    nleft = nright = nelem/2;
    if (nelem % 2)
    {
        left[nleft++] = array[nelem - 1];
    }

    stacksort(left, nleft, compar);
    stacksort(right, nright, compar);

    // merge the sorted arrays
    for (il = ir = i = 0; i < nelem; i++)
    {
        if (il == nleft)
        {
            array[i] = right[ir++];
            continue;
        }

        if (ir == nright)
        {
            array[i] = left[il++];
            continue;
        }

        if (compar(&left[il], &right[ir]) > 0)
            array[i] = right[ir++];
        else
            array[i] = left[il++];
    }
}

void use_array(int *arr)
{
    int i = 0, b[ARRAY_SIZE];

    for(i = 0; i < ARRAY_SIZE; i++)
    {
        b[i] = arr[i] = random() % BUCKET;
    }

    qsort(b, ARRAY_SIZE, sizeof(int), compare_int);
    printf("Total number of compares for qsort = %d\n", total_compares);
    total_compares = 0;

    stacksort(arr, ARRAY_SIZE, compare_int);
    printf("Total number of compares for mergesort = %d\n", total_compares);
    total_compares = 0;
}

void* thread(void *dummy)
{
    int a[ARRAY_SIZE];

    use_array(a);

    return 0;
}

 
int main(int argc, char* argv[])
{
    pthread_t l;

    fprintf(stderr,"Start\n");
    pthread_create(&l,0,thread,0);
    pthread_join(l, 0);

    return 0;
}

 

