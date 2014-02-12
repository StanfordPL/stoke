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
#include <pthread.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>
#include <dlfcn.h>
#include <sys/types.h>
#include <signal.h>

#define TIMEOUT 120

volatile bool thread1Init = false;

void ExitOnAlarm(int sig)
{
    fprintf(stderr, "Timeout has passed, stuck in the system function library call, exit on SIGALRM\n");
    exit(1);
}

extern "C" void WaitThread2AcquireClientLock()
{
    // do nothing
}

extern "C" void AcquireClientLock()
{
    // do nothing
}

void * thread_func1(void *arg)
{
    thread1Init = true;
    WaitThread2AcquireClientLock();

    system("/bin/ls");

    return 0;
}

void * thread_func2 (void *arg)
{
    while(!thread1Init) sched_yield();
    AcquireClientLock();

    return 0;
}

int main (int argc, char *argv[])
{
    pthread_t t1;
    pthread_t t2;

    pthread_create (&t1, 0, thread_func1, 0);
    pthread_create (&t2, 0, thread_func2, 0);

    signal(SIGALRM, ExitOnAlarm);
    alarm(TIMEOUT);

    pthread_join (t1, 0);
    pthread_join (t2, 0);

    printf("All threads exited. The test PASSED\n");
    return 0;
}
