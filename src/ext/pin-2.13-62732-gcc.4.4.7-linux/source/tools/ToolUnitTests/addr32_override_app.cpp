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
#include <stdlib.h>
#include <unistd.h>
#include <sys/mman.h>
#include <dlfcn.h>
#include <stdio.h>
#include <string.h>

extern "C" int Do32BitOverride (int *dst, int *src);

#define MEMSIZE 1024
int src[MEMSIZE];
main (int argc, char *argv[])
{
    int *ptrTo32BitMem
        = (int *)mmap(NULL, MEMSIZE, PROT_READ | PROT_WRITE, MAP_32BIT | MAP_PRIVATE | MAP_ANON, 0, 0);
    printf ("memory allocated at %p\n", ptrTo32BitMem);
    fflush (stdout);
    if ((long long)(ptrTo32BitMem) & 0xffffffff00000000L)
    {
        printf ("***Error did not get 32bit memory\n");
        exit (1);
    }
    memset (ptrTo32BitMem, 0, MEMSIZE);
    for (int i=0; i<MEMSIZE; i++)
    {
        src[i] = 0xdeadbee0+i;
    }
    Do32BitOverride (ptrTo32BitMem, src);
    printf ("%x %x %x %x %x\n%x %x %x %x %x\n", ptrTo32BitMem[0], ptrTo32BitMem[1], ptrTo32BitMem[2], ptrTo32BitMem[3], ptrTo32BitMem[4], ptrTo32BitMem[5],
            ptrTo32BitMem[6], ptrTo32BitMem[7], ptrTo32BitMem[8], ptrTo32BitMem[9]);
    if (ptrTo32BitMem[0] != src[0]
        || ptrTo32BitMem[1] != 0
        || ptrTo32BitMem[2] != src[2]
        || ptrTo32BitMem[3] != 0
        || ptrTo32BitMem[4] != src[4]
        || ptrTo32BitMem[5] != src[5]
        || ptrTo32BitMem[6] != 0
        || ptrTo32BitMem[7] != src[4]
        || ptrTo32BitMem[8] != src[5]
        || ptrTo32BitMem[9] != 0)
    {
        printf ("***Error Do32BitOverride did not get expected values into ptrTo32BitMem\n");
        exit (1);
    }
    return (0);
}
