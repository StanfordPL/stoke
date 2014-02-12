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
 * This is a test case sent by a pinhead.  It used to demonstrate a problem on newer linux
 * kernels (e.g. 2.6.25) when a signal interrupts a futex system call.
 */

#include <stdio.h>
#include <pthread.h>
#include <signal.h>
#include <unistd.h>

volatile int flag = 0;

static void Handler(int);
static void *Start(void *);

int main()
{
    pthread_t thrd1;
    pthread_t thrd2;

    pthread_create(&thrd1, 0, Start, 0);
    pthread_create(&thrd2, 0, Start, (void *)1);
    pthread_join(thrd1, 0);
    pthread_join(thrd2, 0);

    return 0;
}

static void Handler(int sig)
{
    flag = 1;
    printf("received signal\n");

}

static void *Start(void *v)
{
    if (v != 0)
    {
        printf("setting alarm\n");
        signal(SIGALRM, &Handler);
        alarm(2);
    }
    printf("waiting for signal at %p\n", &flag);
    while (!flag);
    return 0;
}
