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
#include <iostream>
#include <cstdlib>
#include <signal.h>


static void HandleSigill(int);
extern "C" void LoadYmm0(const unsigned char *);

int main()
{
    // Create a SIGILL handler in case this processor does not support
    // AVX instructions.
    //
    struct sigaction act;
    act.sa_handler = HandleSigill;
    act.sa_flags = 0;
    sigemptyset(&act.sa_mask);
    sigaction(SIGILL, &act, 0);

    unsigned char ymmVal[32];
    for (unsigned i = 0;  i < sizeof(ymmVal);  i++)
        ymmVal[i] = static_cast<unsigned char>(i+1);

    // If the processor supports AVX, the debugger stops at a breakpoint
    // immediately after loading YMM0.  Otherwise, the debugger stops at
    // a breakpoint in HandleSigill().
    //
    LoadYmm0(ymmVal);

    return 0;
}


static void HandleSigill(int sig)
{
    std::cout << "Processor does not support AVX" << std::endl;
    std::exit(0);
}
