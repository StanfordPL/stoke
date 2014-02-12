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
 * This test verifies that Pin can emulate signal #64, which is the last signal on Linux.
 */

#include <iostream>
#include <signal.h>
#include <unistd.h>

#ifdef TARGET_BSD
 #ifndef SIGRTMAX 
  #define SIGRTMAX 128
 #endif
#endif

#ifdef TARGET_MAC
 #ifndef SIGRTMAX 
  #define SIGRTMAX 32
 #endif
#endif


static void Handle(int sig);


int main()
{
    int maxSig = SIGRTMAX;
    std::cout << "SIGRTMAX=" << maxSig << "\n";

    struct sigaction act;
    act.sa_handler = Handle;
    act.sa_flags = 0;
    sigemptyset(&act.sa_mask);
    int ret = sigaction(64, &act, 0);
    std::cout << "sigaction(64) returns: " << ret << "\n";

    sigset_t set;
    ret = sigaddset(&set, 64);
    std::cout << "sigaddset(64) returns: " << ret << "\n";

    ret = kill(getpid(), 64);
    std::cout << "kill(64) returns: " << ret << "\n";

    return 0;
}

static void Handle(int sig)
{
    std::cout << "Got signal " << sig << "\n";
}
