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
 * This application is meant to be run with the Pin tool "call-app-stress-tool.cpp".
 * It is a stress test for calling PIN_CallApplicationFunction() while handling signals.
 */

#include <stdio.h>
#include <signal.h>
#include <sys/time.h>

extern "C" void PIN_TEST_FOO();
extern "C" void PIN_TEST_BAR();
static void Handle(int);

typedef void (*FUN)();

static const unsigned SIGCOUNT = 1000;

volatile FUN pFoo = PIN_TEST_FOO;
volatile unsigned SigCount = 0;
volatile unsigned long LoopCount = 0;


int main()
{
    struct sigaction act;
    act.sa_handler = Handle;
    act.sa_flags = 0;
    sigemptyset(&act.sa_mask);
    if (sigaction(SIGALRM, &act, 0) != 0)
    {
        fprintf(stderr, "Unable to set ALRM handler\n");
        return 1;
    }

    struct itimerval itval;
    itval.it_interval.tv_sec = 0;
    itval.it_interval.tv_usec = 10000;
    itval.it_value.tv_sec = 0;
    itval.it_value.tv_usec = 10000;
    if (setitimer(ITIMER_REAL, &itval, 0) == -1)
    {
        fprintf(stderr, "Unable to set up timer\n");
        return 1;
    }

    // Each iteration of this loop causes the Pin tool to execute a PIN_CallApplicationFunction().
    //
    while (SigCount < SIGCOUNT)
    {
        pFoo();
        LoopCount++;
    }

    itval.it_value.tv_sec = 0;
    itval.it_value.tv_usec = 0;
    if (setitimer(ITIMER_REAL, &itval, 0) == -1)
    {
        fprintf(stderr, "Unable to disable timer\n");
        return 1;
    }

    printf("Main returning\n");
    return 0;
}


void PIN_TEST_FOO()
{
    // The Pin tool places an instrumentation point here, which calls PIN_TEST_BAR().
}


void PIN_TEST_BAR()
{
}


static void Handle(int sig)
{
    SigCount++;
    printf("SigCount=%u, LoopCount=%lu\n", SigCount, LoopCount);
    fflush(stdout);
}
