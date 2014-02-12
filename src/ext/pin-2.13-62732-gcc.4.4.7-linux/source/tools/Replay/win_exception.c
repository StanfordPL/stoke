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
#include <Windows.h>
#include <stdio.h>
#define EXPORT_SYM __declspec( dllexport ) 

int dummy;

// Our pintool notices when we enter this function, and replays the same exception as before.
void EXPORT_SYM ReplayException()
{
    dummy = 1;
}

int main (int argc, char ** argv)
{
    __try {
        // Explicitly raising an exception does not cause a kernel exception in some versions
        // of Windows, and therefore is invisible to Pin.
        // RaiseException(99, 22, 0, 0);

        // To guarantee that we get a kernel exception we have to be more drastic...
        * (int volatile *)0 = 0;
    }
    __except(EXCEPTION_EXECUTE_HANDLER) {
        printf ("Inner Exception code 0x%x\n", GetExceptionCode());
    }

    // Our tool reraises the same exception when ReplayException is
    // called, though it then terminates, because the process is in a funny state
    // at that point, and we can't easily continue to execute here.
    // Since the point of the test is to verify that the relevant Pin callbacks
    // are made, that doesn't matter.
    ReplayException();

    // We should never get here. If we do something is wrong.
    return 1;
}
