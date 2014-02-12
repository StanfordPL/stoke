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

// The tool callapp9.cpp and application inner.c showed a bug with the way REG_INST_G0 
// is handled.  That register should have the value "1" when executing code
// from PIN_CallApplicationFunction() and the value "0" when executing other
// code. However, after execution returns from the replaced function, REG_INST_G0
// continued to have the value "1". The correct behavior is is for REG_INST_G0
// to have the value "0" when it returns from the replacement function.
//
// The correct output is:
// At Inner G0=0
// Calling replaced Replaced()
// REPLACE_Replaced: REG_INST_G0=1
// At Inner G0=1
// REPLACE_Replaced: REG_INST_G0=1
// Returning from replaced Replaced()
// i=2
// At Inner G0=0

#include <stdio.h>

#if defined (TARGET_WINDOWS)
#define EXPORT_SYM __declspec( dllexport ) 
#else
#define EXPORT_SYM extern
#endif

EXPORT_SYM int Replaced();
EXPORT_SYM void Inner();

int Glob = 0;

int main()
{
    int i;

    Inner();
    i = Replaced();
    printf("i=%d\n", i);
    Inner();

    return 0;
}

EXPORT_SYM int Replaced()
{
    Inner();
    return Glob;
}

EXPORT_SYM void Inner()
{
    Glob++;
}
