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
// This test verifies that Pin correctly flushes the code cache
// for an MT program.  It must be run with the "mtflush" tool.

#include <stdio.h>
#include <pthread.h>
#include <unistd.h>
#include <signal.h>
#include <sys/time.h>

pthread_mutex_t Lock = PTHREAD_MUTEX_INITIALIZER;

typedef void (*FLUSHFUN)();
typedef void (*CHECKFUN)(volatile int *);

volatile FLUSHFUN FlushFun;
volatile CHECKFUN CheckFun;
volatile int Flag;

static void *DoNothing(void *);
static void *DoWaiter(void *);
static void EnableWatchdog();
static void Watchdog(int);
extern "C" void DoFlush();
extern "C" void CheckFlush(volatile int *);


int main()
{
    // Create a thread and let it exit.  This verifies that the
    // the thread releases its generation count in Pin on exit.
    //
    pthread_t tid;
    if (pthread_create(&tid, 0, DoNothing, 0) != 0)
    {
        fprintf(stderr, "Unable to create thread\n");
        return 1;
    }
    pthread_join(tid, 0);

    // Create a thread that hangs on a system call.  This verifies that
    // the thread does not hold the generation count while blocked in
    // the system call.
    //
    pthread_mutex_lock(&Lock);
    if (pthread_create(&tid, 0, DoWaiter, 0) != 0)
    {
        fprintf(stderr, "Unable to create thread\n");
        return 1;
    }

    // Delay to make it more likely that the thread will block in the system
    // call.  This test will still pass even if the other thread doesn't block
    // by the time the sleep is finished, but we don't really test the intended
    // functionality in that case.
    //
    sleep(2);

    // Call through a volatile function pointer to ensure the compiler doesn't
    // inline it.  Pin sets an instrumentation point on its entry.
    //
    FlushFun = DoFlush;
    FlushFun();

    // Set up a watchdog timer that sets 'Flag' in case the Pin tool never sees
    // the code cache flushed.  (The test will fail in this case.)
    //
    Flag = 0;
    EnableWatchdog();

    // The Pin tool sets 'Flag' when it sees the code cache flushed notification.
    //
    CheckFun = CheckFlush;
    while (!Flag)
        CheckFun(&Flag);

    pthread_mutex_unlock(&Lock);
    pthread_join(tid, 0);
    return 0;
}

static void *DoNothing(void *)
{
    return 0;
}

static void *DoWaiter(void *)
{
    pthread_mutex_lock(&Lock);
    return 0;
}

static void EnableWatchdog()
{
    struct sigaction sigact;
    sigact.sa_handler = Watchdog;
    sigact.sa_flags = 0;
    sigemptyset(&sigact.sa_mask);
    sigaction(SIGVTALRM, &sigact, 0);

    struct itimerval itval;
    itval.it_interval.tv_sec = 0;
    itval.it_interval.tv_usec = 0;
    itval.it_value.tv_sec = 30;
    itval.it_value.tv_usec = 0;
    setitimer(ITIMER_VIRTUAL, &itval, 0);
}

static void Watchdog(int)
{
    Flag = 1;
}

void DoFlush()
{
    // Pin sets an anslysis function here to flush the code cache.
}

void CheckFlush(volatile int *Flag)
{
    // Pin sets an analysis function here to check that the code
    // cache was flushed.  It sets '*Flag' to non-zero if the flush
    // happened.
}
