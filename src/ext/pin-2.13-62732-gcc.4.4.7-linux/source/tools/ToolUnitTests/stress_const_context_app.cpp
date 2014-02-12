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
#if defined (TARGET_WINDOWS)
#define DLLEXPORT __declspec(dllexport)
#else
#define DLLEXPORT 
#endif

unsigned int numCallsToStressTestConstContextAppFunc = 0;
int globVal0;
int globVal1;
int globVal2;
int globVal3;
int globVal4;
int globVal5;
extern "C"
DLLEXPORT
void StressTestConstContextAppFunc (int arg0, int arg1, int arg2, int arg3, int arg4, int arg5)
{
    numCallsToStressTestConstContextAppFunc++;
    if ((numCallsToStressTestConstContextAppFunc % 100000)==0)
    {
        printf ("%d calls to StressTestConstContextAppFunc\n", numCallsToStressTestConstContextAppFunc);
        fflush(stdout);
    }
    globVal0 = arg0;
    globVal1 = arg1;
    globVal2 = arg2;
    globVal3 = arg3;
    globVal4 = arg4;
    globVal5 = arg5;
}

int main ()
{
    for (int i=0; i<5000000; i++)
    {
        StressTestConstContextAppFunc (i, i+1, i+2, i+3, i+4, i+5);
    }
}
