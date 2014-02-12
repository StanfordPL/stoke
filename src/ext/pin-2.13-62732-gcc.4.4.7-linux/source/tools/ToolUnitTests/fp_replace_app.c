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
 
// Encapsulating all floating point operations within the Pintool
// replacement function inside "fxsave; emms" and "fxrstor" causes
// a seg fault.
//
// Robert reproduced this problem on vs-lin64-3. The problem is
// that the stack pointer is not properly aligned in the replacement
// routine and you get a segv trying to save an xmm to memory.
//
// (gdb) x/i$pc
// 0x2a96429676:	movaps XMMWORD PTR [rax-0x7f],xmm0
// (gdb) p/x $rax-0x7f
// $2 = 0x2a9816b8b8
//
// At the entry point, it should be 8 mod 16, but it is 0 mod 16. 

#include <stdio.h>

void print (int x);

void print(int x)
{
    printf("old print: %d\n", x);
}


int main(void)
{
    print(3.3);
    fprintf(stdout, "main:%6.2f\n", 3.3);

    return 0;
}
