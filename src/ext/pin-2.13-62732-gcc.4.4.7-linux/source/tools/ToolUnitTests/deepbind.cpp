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
/*
 * This test checks the usage of the -selfcontained_tool knob. This knob loads the
 * tool with the RTLD_DEEPBIND flag, making it a self-contained library. The test
 * verifies that the usage does not impact Pin or the application. We override two
 * libc functions, "sched_yield" and "sleep", which are used by the application and
 * Pin. Both functions will cause the process to exit with a non-zero return value.
 * "sched_yield" is implemented in this file, while "sleep" is implemented in
 * deepbind_syscalls.o which is linked to the tool.
 */
 
#include "pin.H"
#include <cstdio>
#include <cstdlib>

extern "C" int sched_yield() {
    fprintf(stderr, "ERROR: In deepbind.cpp implementation of sched_yield\n");
    exit(2);
}

int main(int argc, char** argv)
{
    PIN_InitSymbols();
    
    if (!PIN_Init(argc, argv))
    {
        PIN_StartProgram();
    }

    return(1);
}
