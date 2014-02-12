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
 * This is a test program that verifies Pin can deliver signal for different
 * types of instrumentation calls.  The tool "inst-type-tool.cpp" inserts different
 * types of instrumentation calls at each of the Do*() functions.
 */

#include <stdio.h>
#include <signal.h>
#include <sys/time.h>


static const unsigned SIGCOUNT = 100;

typedef void (*FN)();
volatile unsigned SigCount = 0;
volatile unsigned long LoopCount = 0;

static void Handle(int);
extern "C" void DoInline();
extern "C" void DoNoBridge();
extern "C" void DoBridge();
extern "C" void DoIfInlineThenInline();
extern "C" void DoIfInlineThenNoBridge();
extern "C" void DoIfInlineThenBridge();
extern "C" void DoIfNoBridgeThenInline();
extern "C" void DoIfNoBridgeThenNoBridge();
extern "C" void DoIfNoBridgeThenBridge();
extern "C" void DoIfBridgeThenInline();
extern "C" void DoIfBridgeThenNoBridge();
extern "C" void DoIfBridgeThenBridge();
extern "C" void DoAll();


int main()
{
    struct sigaction sigact;
    sigact.sa_handler = Handle;
    sigact.sa_flags = 0;
    sigemptyset(&sigact.sa_mask);
    if (sigaction(SIGALRM, &sigact, 0) == -1)
    {
        fprintf(stderr, "Unable to set up handler\n");
        return 1;
    }

    struct itimerval itval;
    itval.it_interval.tv_sec = 0;
    itval.it_interval.tv_usec = 100000;
    itval.it_value.tv_sec = 0;
    itval.it_value.tv_usec = 100000;
    if (setitimer(ITIMER_REAL, &itval, 0) == -1)
    {
        fprintf(stderr, "Unable to set up timer\n");
        return 1;
    }

    volatile FN doInline = DoInline;
    volatile FN doNoBridge = DoNoBridge;
    volatile FN doBridge = DoBridge;
    volatile FN doIfInlineThenInline = DoIfInlineThenInline;
    volatile FN doIfInlineThenNoBridge = DoIfInlineThenNoBridge;
    volatile FN doIfInlineThenBridge = DoIfInlineThenBridge;
    volatile FN doIfNoBridgeThenInline = DoIfNoBridgeThenInline;
    volatile FN doIfNoBridgeThenNoBridge = DoIfNoBridgeThenNoBridge;
    volatile FN doIfNoBridgeThenBridge = DoIfNoBridgeThenBridge;
    volatile FN doIfBridgeThenInline = DoIfBridgeThenInline;
    volatile FN doIfBridgeThenNoBridge = DoIfBridgeThenNoBridge;
    volatile FN doIfBridgeThenBridge = DoIfBridgeThenBridge;
    volatile FN doAll = DoAll;

    while (SigCount < SIGCOUNT)
    {
        doInline();
        doNoBridge();
        doBridge();
        doIfInlineThenInline();
        doIfInlineThenNoBridge();
        doIfInlineThenBridge();
        doIfNoBridgeThenInline();
        doIfNoBridgeThenNoBridge();
        doIfNoBridgeThenBridge();
        doIfBridgeThenInline();
        doIfBridgeThenNoBridge();
        doIfBridgeThenBridge();
        doAll();
        LoopCount++;
    }

    itval.it_value.tv_sec = 0;
    itval.it_value.tv_usec = 0;
    if (setitimer(ITIMER_REAL, &itval, 0) == -1)
    {
        fprintf(stderr, "Unable to disable timer\n");
        return 1;
    }

    return 0;
}


static void Handle(int sig)
{
    SigCount++;
    printf("SigCount=%u, LoopCount=%lu\n", SigCount, LoopCount);
    fflush(stdout);
}

void DoInline()
{
}

void DoNoBridge()
{
}

void DoBridge()
{
}

void DoIfInlineThenInline()
{
}

void DoIfInlineThenNoBridge()
{
}

void DoIfInlineThenBridge()
{
}

void DoIfNoBridgeThenInline()
{
}

void DoIfNoBridgeThenNoBridge()
{
}

void DoIfNoBridgeThenBridge()
{
}

void DoIfBridgeThenInline()
{
}

void DoIfBridgeThenNoBridge()
{
}

void DoIfBridgeThenBridge()
{
}

void DoAll()
{
}
