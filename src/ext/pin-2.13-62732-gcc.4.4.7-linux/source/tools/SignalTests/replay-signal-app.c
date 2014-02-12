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
 * This application is used to test Pin's PIN_ReplayUnixSignal() API.
 * It must be run with the Pin tool "replay-signal-tool.cpp".
 */

#include <signal.h>
#include <stdio.h>
#include <stdlib.h>

typedef void (*PF)();
volatile PF pfReplaySignal1;

void Handle(int);
void ReplaySignal1();
void ReplaySignal2();


static int First = 1;


int main()
{
    struct sigaction sigact;

    sigact.sa_handler = Handle;
    sigemptyset(&sigact.sa_mask);
    sigact.sa_flags = 0;
    if (sigaction(SIGUSR1, &sigact, 0) == -1)
    {
        fprintf(stderr, "Unable to handle signal\n");
        return 1;
    }

    raise(SIGUSR1);

    pfReplaySignal1 = ReplaySignal1;
    pfReplaySignal1();

    fprintf(stderr, "Should not get here (1)\n");
    return 1;
}

void Handle(int sig)
{
    if (sig != SIGUSR1)
    {
        fprintf(stderr, "Expected signal %d (SIGUSR1), but got %d\n", SIGUSR1, sig);
        exit(1);
    }

    printf("Got signal SIGUSR1\n");
    fflush(stdout);

    if (First)
    {
        First = 0;
        return;
    }

    pfReplaySignal1 = ReplaySignal2;
    pfReplaySignal1();

    fprintf(stderr, "Should not get here (2)\n");
    exit(1);
}

void ReplaySignal1()
{
    /*
     * Pin puts an instrumentation point here to replay a handled SIGUSR1 signal.
     */
}

void ReplaySignal2()
{
    /*
     * Pin puts an instrumentation point here to replay a fatal SIGUSR1 signal.
     */
}
