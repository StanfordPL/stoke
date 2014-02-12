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
#include <stdint.h>
#include <stdio.h>

typedef struct {
    uint64_t data[2] __attribute__ ((aligned (16)));
} XMM_VALUE ;

XMM_VALUE in;
XMM_VALUE out;


int main()
{
    in.data[0] = 0x1234567887654321;
    in.data[1] = 0x1234567887654321;
    
    asm("movapd %0,%%xmm0"::"m"(in));
    asm("movlpd %0,%%xmm0"::"m"(in));
    asm("movapd %%xmm0,%0":"=m"(out));
    if (memcmp(&in, &out, sizeof(in)) != 0)
    {
        printf("Error:\n");
        printf("in:%llx %llx\n", in.data[0],in.data[1]);
        printf("out: %llx %llx\n", out.data[0],out.data[1]);
        return 1;
    }
    else
    {
        printf("Passed\n");
    }
    return 0;
}

