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

/*
 * Only run this on IA32, Linux (could also run on other gcc compatible platforms).
 * The code in Pin is all generic, but generating the test is simpler if we constrain things.
 */
int deleteMov () __attribute__((noinline));
int deleteMov () 
{
    int res;
    // The mov will be deleted by the tool
    __asm__ volatile ("xor   %0,%0;"
                      "mov   $-1,%0":"=r"(res));
    return res;
}

int insertJump() __attribute__((noinline));
int insertJump()
{
    int res;
    // The mov will be branched over by the tool
    __asm__ volatile ("xor   %0,%0;"
                      "mov   $-1,%0":"=r"(res));
    return res;
}

int insertIndirectJump() __attribute__((noinline));
int insertIndirectJump()
{
    int res;
    // The mov will be branched over by the tool
    __asm__ volatile ("xor   %0,%0;"
                      "mov   $-1,%0":"=r"(res));
    return res;
}

static int values[] = {0,-1};

int modifyAddressing(int) __attribute__((noinline));
int modifyAddressing(int idx)
{
    int *base = &values[0];
    int res   = 0;
    // The addressing on this or will be modified...
    __asm__ volatile ("or   (%1,%2,4),%0"
                      :"+r"(res):"r"(base),"r"(idx));

    return res;
}

int main (int argc, char ** argv)
{
    int failed = 0;
    if (deleteMov() != 0)
    {
        fprintf (stderr, "Mov instruction was not deleted\n");
        failed++;
    }
    if (insertJump() != 0)
    {
        fprintf (stderr, "Mov instruction was not branched over\n");
        failed++;
    }
    if (insertIndirectJump() != 0)
    {
        fprintf (stderr, "Mov instruction was not indirectly branched over\n");
        failed++;
    }
    if (modifyAddressing(1) != 0)
    {
        fprintf (stderr, "Addressing was not modified\n");
        failed++;
    }

    return failed;
}
