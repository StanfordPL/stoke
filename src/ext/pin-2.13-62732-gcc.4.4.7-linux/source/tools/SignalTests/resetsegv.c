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
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>


void Handle(int, siginfo_t*, void*);
void MakeSegv();

int First = 1;


int main()
{
    struct sigaction sigact;

    sigact.sa_sigaction = Handle;
    sigact.sa_flags = (SA_RESETHAND | SA_SIGINFO);
    sigemptyset(&sigact.sa_mask);
    sigaddset(&sigact.sa_mask, SIGUSR1);
    if (sigaction(SIGSEGV, &sigact, 0) == -1)
    {
        printf("Unable to handle signal\n");
        return 1;
    }
    if (sigaction(SIGBUS, &sigact, 0) == -1)
    {
        printf("Unable to handle signal\n");
        return 1;
    }

    MakeSegv();
    printf("Should not return from first SEGV\n");
    return 1;
}

void Handle(int sig, siginfo_t* info, void* vctxt)
{
    struct sigaction sigact;

    if (sig == SIGSEGV)
        printf("Got signal SEGV\n");
    else if(sig == SIGBUS)
        printf("Got signal SIGBUS\n");
    else
        printf("Got signal %d\n", sig);

    /*
     * Print out some information about the SEGV disposition.  The handler should
     * be reset to SIG_DFL.  I'm not sure if the standard defines what happens to
     * the other fields.
     */
    if (sigaction(sig, 0, &sigact) == -1)
    {
        printf("Unable to read signal information\n");
        exit(1);
    }
    if (sigact.sa_handler == SIG_DFL)
        printf("sa_handler = SIG_DFL\n");
    else
        printf("sa_handler = 0x%p\n", sigact.sa_handler);
    if (sigact.sa_flags & (SA_RESETHAND | SA_SIGINFO))
        printf("sa_flags = [SA_RESETHAND, SA_SIGINFO]\n");
    else if (sigact.sa_flags & SA_RESETHAND)
        printf("sa_flags = [SA_RESETHAND]\n");
    else if (sigact.sa_flags & SA_SIGINFO)
        printf("sa_flags = [SA_SIGINFO]\n");
    else
        printf("sa_flags = []\n");
    if (sigismember(&sigact.sa_mask, SIGUSR1))
        printf("sa_mask = [SIGUSR1]\n");
    else
        printf("sa_mask = []\n");
    fflush(stdout);

    if (First)
    {
        First = 0;
        MakeSegv();
        /* does not return */
    }

    printf("Should not receive second SEGV\n");
    exit(1);
}

void MakeSegv()
{
    volatile int * p;
    int i;

    p = (volatile int *)0x9;
    i = *p;
}
