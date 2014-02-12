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
 * This test verifies that Pin properly saves and restores the applicaton's
 * FP state when emulating a delivered signal.  The application's main thread
 * simply does some FP calculation in a loop while ALRM signals are handled.
 * The signal handler also does some FP computation, which will change the
 * FP state.  If Pin doesn't properly save/restore the FP state, the handler
 * will mess up the main thread's calculations.
 *
 *********************************************************************************
 *
 * I have observed that this test occasionally fails on vs-lin64-4 (running SUSE10
 * on Intel64).  The cause of the problem is probably the same as the bug
 * described at the top of "xmmcheck.c".
 */

#include <stdlib.h>
#include <math.h>
#include <stdio.h>
#include <string.h>
#include <signal.h>
#include <sys/time.h>

#define COUNT   100

#ifdef TARGET_MAC
#define ITIMER_TYPE ITIMER_REAL
#define SIGNAL_TYPE SIGALRM
#else
#define ITIMER_TYPE ITIMER_VIRTUAL
#define SIGNAL_TYPE SIGVTALRM
#endif

volatile unsigned SigCount = 0;


static double fpcheck();
static void handle1(int);
static void handle2(int, siginfo_t *, void *);


int main()
{
    struct sigaction sigact;
    struct itimerval itval;
    double fact;
    char buf[100];
    char *point;


    printf("Before sigaction call\n");
    sigact.sa_handler = handle1;
    sigact.sa_flags = 0;
    sigemptyset(&sigact.sa_mask);
    if (sigaction(SIGNAL_TYPE, &sigact, 0) == -1)
    {
        fprintf(stderr, "Unable to set up handler\n");
        return 1;
    }

    printf("Before setitimer\n");
    itval.it_interval.tv_sec = 0;
    itval.it_interval.tv_usec = 100000;
    itval.it_value.tv_sec = 0;
    itval.it_value.tv_usec = 100000;
    if (setitimer(ITIMER_TYPE, &itval, 0) == -1)
    {
        fprintf(stderr, "Unable to set up timer\n");
        return 1;
    }

    printf("Before fpcheck\n");
    fact = fpcheck();
    printf("After fpcheck\n");

    itval.it_value.tv_sec = 0;
    itval.it_value.tv_usec = 0;
    if (setitimer(ITIMER_TYPE, &itval, 0) == -1)
    {
        fprintf(stderr, "Unable to disable timer\n");
        return 1;
    }

    sprintf(buf, "%.0f", fact);
    point = strchr(buf, '.');
    if (point)
        *point = '\0';
    if (strcmp(buf, "1307674368000") != 0)
    {
        fprintf(stderr, "15! should be 1307674368000, but computed as '%s'\n", buf);
        return 1;
    }
    printf("15! = %s\n", buf);
    return 0;
}


static double fpcheck()
{
    double x[15];
    double fact, calc;
    unsigned i;


    for (i = 1;  i <= 15;  i++)
        x[i-1] = (double)i;

    fact = 1.0;
    for (i = 0;  i < 15;  i++)
        fact = fact * x[15 - (i+1)];

    while (SigCount < COUNT)
    {
        calc = 1.0;
        for (i = 0;  i < 15;  i++)
            calc = calc * x[15 - (i+1)];
        if ((calc - fact > 0.5) || (calc - fact < -0.5))
        {
            fprintf(stderr, "Unexpected FP change (fact=%f, calc=%f)\n", fact, calc);
            return 1;
        }
    }

    return fact;
}


static void handle1(int sig)
{
    SigCount++;
    return;
    double x[100];
    unsigned i;


    fprintf(stderr, "handle1: %d\n", SigCount);

    for (i = 0;  i < 100;  i++)
        x[i] = (double)(i+1);
    for (i = 2;  i < 100;  i++)
        x[i] = x[i] / x[i-1] * x[i-2] + x[i];

    /*
     * After a while, switch to using a "siginfo" handler.  This exercises different
     * signal emulation paths within Pin.
     */
    if (SigCount > COUNT/2)
    {
        struct sigaction sigact;

        sigact.sa_sigaction = handle2;
        sigact.sa_flags = SA_SIGINFO;
        sigemptyset(&sigact.sa_mask);
        if (sigaction(SIGNAL_TYPE, &sigact, 0) == -1)
        {
            fprintf(stderr, "Unable to reset handler\n");
            exit(1);
        }
    }
}


static void handle2(int sig, siginfo_t *si, void *v)
{
    double x[100];
    unsigned i;

    SigCount++;

    fprintf(stderr, "handle1: %d\n", SigCount);

    for (i = 0;  i < 100;  i++)
        x[i] = (double)(i+1);
    for (i = 2;  i < 100;  i++)
        x[i] = x[i] / x[i-1] * x[i-2] + x[i];
}
