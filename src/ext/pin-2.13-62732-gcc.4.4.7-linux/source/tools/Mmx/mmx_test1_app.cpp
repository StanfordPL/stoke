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
#include <windows.h>
#include <stdio.h>
extern "C" int MMXSequence (unsigned int a, unsigned int b, unsigned int c, UINT64 *aConcaTb);

int main ()
{
    UINT64 aConcaTb;
    UINT32 *ptr  = (UINT32 *)(&aConcaTb);
    UINT32 *ptr1 = ptr+1;
    unsigned int res = MMXSequence(0xdeadbeef, 0xbaadf00d, 0xfeedf00d, &aConcaTb);
    printf ("res is %x  aConcaTb is %x %x\n", res, (*ptr), *(ptr1));
    if (res != 0x3a061f04)
    {
        fprintf (stderr, "***Error unexpected value of res\n");
        return (1);
    }
    if (*ptr != 0xdeadbeef)
    {
        fprintf (stderr, "***Error unexpected value of *ptr\n");
        return (1);

    }
    if (*ptr1 != 0xbaadf00d)
    {
        fprintf (stderr, "***Error unexpected value of *ptr1\n");
        return (1);

    }
    return (0);
}

