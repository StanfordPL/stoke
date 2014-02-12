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
#include <stdio.h>
#include <stdlib.h>
#include "pin.H"

#define CHECKNULL(P) \
    if ((P) != 0) { \
        fprintf(stderr, "Failed: expected 0 got %p\n", P); \
        exit(1); \
    }


KNOB<INT32> KnobMaxSize(KNOB_MODE_WRITEONCE, "pintool",
    "m", "0x6000000", "Total bytes to allocate");
KNOB<INT32> KnobIncrement(KNOB_MODE_WRITEONCE, "pintool",
    "i", "100", "Bytes to malloc each time");


VOID MalMalloc()
{
    for (INT32 size = 0; size < KnobMaxSize; size+=KnobIncrement)
    {
        VOID * m = malloc(KnobIncrement);
        if (m == 0)
        {
            fprintf(stderr, "Failed malloc\n");
        }
    }
}

int main(INT32 argc, CHAR **argv)
{
    
#if defined(TARGET_IA32)
    // Test the initial pool
    void * p = malloc(0xf0000000);
    CHECKNULL(p);
#endif

    PIN_Init(argc, argv);
    
    MalMalloc();
    
#if defined(TARGET_IA32)
    // Test after we are out of initial pool
    void * p2 = malloc(0xf0000000);
    CHECKNULL(p2);
#endif

    // Never returns
    PIN_StartProgram();
    
    return 0;
}
