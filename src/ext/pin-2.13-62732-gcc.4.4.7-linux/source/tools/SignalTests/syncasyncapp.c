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
 * This test validates an edge case within Pin.  Pin checks for and delivers
 * any pending asynchronous signals at the end of each trace.  However, it
 * handles any synchronous signals (i.e. faults) immediately.  There is a weird
 * edge case if Pin has a pending asynchronous signal at the time a synchronous
 * signal is generated.
 *
 * In an old version of Pin, there was a bug that caused the application's
 * signal mask to be set incorrectly in the above case.  This test forces the
 * edge case to occur, and then validates that the signal mask is set correctly.
 *
 * Forcing the edge case is a little tricky.  The test expects to handle two
 * signals: a VTALRM (from an i-timer) and a SEGV (by executing an invalid store).
 * To force the edge case, we want the VTALRM to be delivered while Pin is
 * executing the basic block that contains the invalid (faulting) store.  Obviously,
 * this is a very small timing window.  We use a special Pin tool to open up this
 * timing window.  The Pin tool finds the basic block that contains the faulting
 * store and inserts a long-running analysis routine at the first instruction of
 * this basic block.  This essentially causes the basic block to run for a very
 * long time, which makes it much more likely that the VTALRM will be delivered
 * during that basic block.
 */

#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>


static void HandleSegv(int);
static void HandleAlarm(int);
static void CheckMask();
static void MakeSegv();


int main()
{
    struct sigaction sigact;
    struct itimerval itval;

    sigact.sa_handler = HandleSegv;
    sigemptyset(&sigact.sa_mask);
    sigact.sa_flags = 0;
    if (sigaction(SIGSEGV, &sigact, 0) == -1)
    {
        fprintf(stderr, "Unable handle SEGV\n");
        return 1;
    }

    if (sigaction(SIGBUS, &sigact, 0) == -1)
    {
        fprintf(stderr, "Unable handle SEGV\n");
        return 1;
    }

    sigact.sa_handler = HandleAlarm;
    if (sigaction(SIGVTALRM, &sigact, 0) == -1)
    {
        fprintf(stderr, "Unable handle VTALRM\n");
        return 1;
    }

    itval.it_value.tv_sec = 0;
    itval.it_value.tv_usec = 100000;
    itval.it_interval.tv_sec = 0;
    itval.it_interval.tv_usec = 0;
    if (setitimer(ITIMER_VIRTUAL, &itval, 0) == -1)
    {
        fprintf(stderr, "Unable to set up alarm\n");
        return 1;
    }

    MakeSegv();
    return 0;
}


static void HandleSegv(int sig)
{
    printf("Got SEGV\n");
    CheckMask();
    exit(0);
}

static void HandleAlarm(int sig)
{
    printf("Got VTALRM\n");
    CheckMask();
}


static void CheckMask()
{
    sigset_t mask;
    int sig;

    if (sigprocmask(SIG_SETMASK, 0, &mask) == -1)
    {
        fprintf(stderr, "Unable to get mask\n");
        exit(1);
    }

    for (sig = 1;  sig < 32;  sig++)
    {
        if (sigismember(&mask, sig))
        {
            printf("Signal %d blocked\n", sig);
            if (sig != SIGSEGV && sig != SIGVTALRM && sig != SIGBUS)
            {
                fprintf(stderr, "Signal %d unexpectedly blocked\n", sig);
                exit(1);
            }
        }
    }
}


static void MakeSegv()
{
    volatile int * p;
    int i;

    /*
     * Make a big basic block, which the Pin tool can find.  The Pin tool
     * inserts an analysis call at the beginning of this block, which stalls
     * for a long time.  We expect that the VTALRM signal will be delivered
     * to Pin during the analysis call.  Pin should keep that signal pending
     * until the end of this basic block.
     */
    p = &i;
    *p = 1;
    *p = 2;
    *p = 3;
    *p = 4;
    *p = 5;
    *p = 6;
    *p = 7;
    *p = 8;
    *p = 9;

    /*
     * The following store must be in the same basic block as the stores above
     * in order for the test to be valid.
     *
     * This store causes a SEGV, thus forcing a synchronous signal to be delivered
     * while an asynchronous signal (the VTALRM) is pending inside of Pin.
     */
    p = (volatile int *)0x9;
    i = *p;
}
