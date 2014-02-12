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
#ifdef TARGET_WINDOWS
#include <windows.h>
#endif

#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include "../Utils/threadlib.h"
#include "atomic.hpp"

#define NUM_TH 16
#define LOOPS 5000000

volatile size_t numThreads = 0;

void *compute(void *ptr)
{
    size_t newptr = (size_t) ptr;
    size_t i = 0, start_count = newptr;

    printf("Thread start %lld %lld\n", newptr, start_count);

    ATOMIC::OPS::Increment<size_t>(&numThreads, 1);

    for (i = 0; i < start_count; i++)
        newptr += (i + newptr);

    printf("Thread end %lld\n", newptr);
    return (void*) newptr;
}

THREAD_HANDLE threads[MAXTHREADS];

int main()
{

    for (int i = 0; i < NUM_TH; i++)
        CreateOneThread(&threads[i], compute, (void*) (LOOPS + i));

    while (numThreads != NUM_TH)
    {
        DelayCurrentThread(10);
    }
    printf("All threads started running\n");
    fflush(stdout);

    for (int i = 0; i < NUM_TH; i++)
        JoinOneThread(threads[i]);

    exit(0);
}

