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
#include <signal.h>
#include <sys/types.h>
#include <unistd.h>
#include <iostream>
#include <fstream>
#include <sys/wait.h>

using namespace std;

string expected;

void SigUsr1Handler(int sig)
{
    cerr << expected << "Caught signal SIGUSR1" << endl;
}

void SigUsr2Handler(int sig)
{
    cerr << expected << "Caught signal SIGUSR2" << endl;
}
void BlockSignal(int sigNo)
{
    sigset_t mask;
    sigprocmask(SIG_SETMASK, 0, &mask);
    sigaddset(&mask, sigNo);
    sigprocmask(SIG_SETMASK, &mask, 0);
}

void UnblockAllSignals()
{
     sigset_t mask;
     sigemptyset(&mask);
     sigprocmask(SIG_SETMASK, &mask, 0);
}

void BlockAllSignals()
{
     sigset_t mask;
     sigfillset(&mask);
     sigprocmask(SIG_SETMASK, &mask, 0);
}

void UnblockSignal(int sigNo)
{
    sigset_t mask;
    sigprocmask(SIG_SETMASK, 0, &mask);
    sigdelset(&mask, sigNo);
    sigprocmask(SIG_SETMASK, &mask, 0);
}

int main(int argc, char *argv[])
{
    if (argc == 1)
    {
        expected = "Expected U1 or U2: ";
    }
    else
    {
        expected = "Expected U2: ";
    }
    signal(SIGUSR1, SigUsr1Handler);   
    signal(SIGUSR2, SigUsr2Handler);   
    kill(getpid(), SIGUSR1);
    kill(getpid(), SIGUSR2);
    
    if (argc == 1)
    {
        // Second run with non-empty mask
        BlockAllSignals();
        UnblockSignal(SIGUSR2);
        
        char *execv_argv[3];
        execv_argv[0] = argv[0];
        execv_argv[1] = "1";
        execv_argv[2] = NULL;
        execv(execv_argv[0], execv_argv);
        printf("exec failed\n");
        return -1;
    }  
    return 0;
}

