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
 * This test prints the application's blocked signal mask at various points.
 * By comparing a native run with a run under Pin, we can verify that Pin emulates
 * the signal mask correctly.
 */

#include <stdio.h>
#include <stdlib.h>
#include <signal.h>

#ifdef TARGET_ANDROID
#include "android_ucontext.h"
#else
#include <sys/ucontext.h>
#endif

#if defined(TARGET_MAC) || (TARGET_ANDROID)
#define MAXMASK 32
#else
#define MAXMASK 64
#endif


static void Handle(int);
static void PrintCurrentMask(const char *);
static void PrintMask(const char *, sigset_t *);


int main()
{
    struct sigaction act;
    sigset_t mask;

    sigemptyset(&mask);
    sigaddset(&mask, SIGSTOP);
    sigaddset(&mask, SIGFPE);
    if (sigprocmask(SIG_SETMASK, &mask, 0) != 0)
    {
        fprintf(stderr, "unable to set blocked signal mask\n");
        return 1;
    }

    PrintCurrentMask("Initial: ");

    act.sa_handler = Handle;
    act.sa_flags = SA_NODEFER;
    sigemptyset(&act.sa_mask);
    sigaddset(&act.sa_mask, SIGSEGV);
    sigaddset(&act.sa_mask, SIGHUP);
    sigaddset(&act.sa_mask, SIGKILL);
    if (sigaction(SIGUSR1, &act, 0) != 0)
    {
        fprintf(stderr, "Unable to set USR1 handler\n");
        return 1;
    }

    act.sa_flags = 0;
    if (sigaction(SIGUSR2, &act, 0) != 0)
    {
        fprintf(stderr, "Unable to set USR2 handler\n");
        return 1;
    }

    raise(SIGUSR1);
    PrintCurrentMask("After USR1: ");

    raise(SIGUSR2);
    PrintCurrentMask("After USR2: ");

    sigemptyset(&act.sa_mask);
    if (sigaction(SIGUSR1, 0, &act) != 0)
    {
        fprintf(stderr, "Unable to get USR1 hander\n");
        return 1;
    }
    PrintMask("USR1 Blocks: ", &act.sa_mask);

    sigemptyset(&act.sa_mask);
    if (sigaction(SIGUSR2, 0, &act) != 0)
    {
        fprintf(stderr, "Unable to get USR2 hander\n");
        return 1;
    }
    PrintMask("USR2 Blocks: ", &act.sa_mask);

    return 0;
}


static void Handle(int sig)
{
    if (sig == SIGUSR1)
        PrintCurrentMask("USR1 handler: ");
    else if (sig == SIGUSR2)
        PrintCurrentMask("USR2 handler: ");
    else
    {
        fprintf(stderr, "Unexpected signal %d\n", sig);
        exit(1);
    }
}


static void PrintCurrentMask(const char *prefix)
{
    sigset_t mask;

    if (sigprocmask(SIG_SETMASK, 0, &mask) == 0)
        PrintMask(prefix, &mask);
    else
        printf("%s[ERROR]\n", prefix);
}


static void PrintMask(const char *prefix, sigset_t *mask)
{
    int sig;
    int first;

    first = 1;
    printf("%s[", prefix);
    for (sig = 1;  sig < MAXMASK;  sig++)
    {
        if (sigismember(mask, sig))
        {
            if (!first)
                printf(" ");
            first = 0;
            printf("%d", sig);
        }
    }
    printf("]\n");
}
