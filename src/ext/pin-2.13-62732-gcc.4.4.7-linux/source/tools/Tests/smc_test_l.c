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
/* each iteration of the loop changes the code for the next iteration */
#include <sys/mman.h>
#include <unistd.h>
#include <stdio.h>

unsigned int a = 0;
int  i;
int main(void)
{
    void *p;
    int  ret;

l1:
    p = &&l1;
    p = (char*)((int)p & 0xFFFFF000);
    
    ret =  mprotect(p, 4096, PROT_WRITE | PROT_READ | PROT_EXEC);
    if (ret != 0) {
        perror("mprotect");
        return -1;
    }
    for(i = 0; i < 1000; i++) {
        __asm__ __volatile__ (
            "movl a, %%eax
l3:         movl $1, %%ecx
l2:         incl %%eax
            loop l2
            movl %%eax, a
            movl i, %%eax
            incl %%eax
            movl $l3, %%ebx
            movl %%eax, 1(%%ebx)"
            :::"%ecx", "%ebx", "%eax"
        );
    }

    if (a == 499501)
        printf("Success!\n");
    else
        printf("Failed! a = %i\n", a);

    return 0;
}
