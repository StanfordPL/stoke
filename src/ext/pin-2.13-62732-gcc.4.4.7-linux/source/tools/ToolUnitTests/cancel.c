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
 * Verify that Pin can trace an application that uses asynchronous cancel.
 */

#include <stdio.h>
#include <stdlib.h>
#include <signal.h>
#include <pthread.h>
#include <sched.h>
#include <unistd.h>

#define TIMEOUT 3*60

static void *Thread(void *);
static void Terminate(int);

static volatile int Ready = 0;


int main()
{
    pthread_t tid;

    pthread_create(&tid, 0, Thread, 0);

    while (!Ready)
        sched_yield();

    pthread_cancel(tid);
    pthread_join(tid, 0);

    printf("Thread was cancelled\n");
    return 0;
}


volatile unsigned Val;
volatile unsigned A = 5;
volatile unsigned B = 4;

static void *Thread(void *dummy)
{
    struct sigaction act;


    /*
     * This causes the thread to terminate even if it doesn't receive the cancel
     * request.  The handler prints an error message, which causes the test to
     * fail.
     */
    act.sa_handler = Terminate;
    act.sa_flags = 0;
    sigemptyset(&act.sa_mask);
    sigaction(SIGALRM, &act, 0);
    alarm(TIMEOUT);

    pthread_setcanceltype(PTHREAD_CANCEL_ASYNCHRONOUS, 0);
    Ready = 1;

    for (;;)
        Val = A / B;
}


static void Terminate(int sig)
{
    printf("Thread not cancelled\n");
    exit(1);
}
