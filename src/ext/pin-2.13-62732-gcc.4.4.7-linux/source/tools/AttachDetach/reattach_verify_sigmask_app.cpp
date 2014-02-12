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
// @ORIGINAL_AUTHOR: Elena Demikhovsky

/*! @file
 *  Test detaching - reattach Pin on Linux
 *  The application verifies that signal mask is preserved during attach - detach.
 */
#include <assert.h>
#include <stdio.h>
#include <dlfcn.h>
#include <signal.h>
#include <sys/types.h>
#include <unistd.h>
#include <sys/syscall.h>
#include <pthread.h>
#include <sys/wait.h>
#include <sched.h>
#include <stdlib.h>
#include <string>
#include <list>


using namespace std;

# define TLS_GET_GS_REG() \
  ({ int __seg; __asm ("movw %%gs, %w0" : "=q" (__seg)); __seg & 0xffff; })

pid_t GetTid()
{
     return syscall(__NR_gettid);
}

volatile unsigned int unblockedUsr1Tid = 0;
volatile unsigned int unblockedUsr2Tid = 0;
volatile bool usr1Tested = false;
volatile bool usr2Tested = false;

pthread_mutex_t mutex;

void SigUsrHandler(int sig)
{
    pthread_mutex_lock(&mutex);

    //fprintf(stderr, "The gs val in sig handler is 0x%x\n", TLS_GET_GS_REG());
    
    if (sig == SIGUSR1)
    {
        if (unblockedUsr1Tid == GetTid())
        {
            usr1Tested = true;
        }
        else
        {            
            fprintf(stderr, "The signal mask is incorrect, SIGUSR1 is caught by %d, expected %d\n",
             GetTid(), unblockedUsr1Tid);
            exit(-1);
        }
    }
    if (sig == SIGUSR2)
    {
        if (unblockedUsr2Tid == GetTid())
        {
            usr2Tested = true;
        }
        else
        {
            fprintf(stderr, "The signal mask is incorrect, SIGUSR2 is caught by %d, expected %d\n",
             GetTid(), unblockedUsr2Tid);
            exit(-1);
        }
    }
    pthread_mutex_unlock(&mutex);
}


sigset_t sigSet;

void BlockSignal(int sigNo)
{
    sigset_t mask;
    sigemptyset(&mask);
    sigaddset(&mask, sigNo);   
    sigprocmask(SIG_BLOCK, &mask, 0);
}

void UnblockSignal(int sigNo)
{
    sigset_t mask;
    sigemptyset(&mask);
    sigaddset(&mask, sigNo);
    sigprocmask(SIG_UNBLOCK, &mask, 0);
}
void UnblockAllSignals()
{
     sigset_t mask;
     sigemptyset(&mask);
     sigprocmask(SIG_SETMASK, &mask, 0);
}

void * ThreadFunc(void * arg)
{
    unsigned int thread_no = *(unsigned int *)&arg;
    
    if (thread_no == 1)
    {
        unblockedUsr1Tid = GetTid();
        UnblockSignal(SIGUSR1);
    }
    else if (thread_no == 2)
    {
        unblockedUsr2Tid = GetTid();
        UnblockSignal(SIGUSR2);
    }
    
	while (!usr1Tested || !usr2Tested)
	{
    	sleep(1);
	}
    return 0;
}


#define NUM_OF_THREADS 7
pthread_t threads[NUM_OF_THREADS];


int main(int argc, char *argv[])
{
    // Set the same signal handler for USR1 and USR2 signals
    signal(SIGUSR1, SigUsrHandler);
    signal(SIGUSR2, SigUsrHandler);
    
    // initialize a mutex that will be used by threads
    pthread_mutex_init(&mutex, 0);

    /* Block signals in all threads */
    BlockSignal(SIGUSR1);
    BlockSignal(SIGUSR2);
    /*****************/
    
	while (1)
	{
		// launch threads
		usr1Tested = false;
		usr2Tested = false;
		for (unsigned int i = 0; i < NUM_OF_THREADS; i++)
		{
			pthread_create(&threads[i], 0, ThreadFunc, (void *)i);
		}
	
		while ((unblockedUsr1Tid == 0) || (unblockedUsr2Tid == 0))
		{
			sched_yield();
		}
		
        while (!usr1Tested || !usr2Tested)
        {
            kill(getpid(), SIGUSR1);
            kill(getpid(), SIGUSR2);
        }

		for (unsigned int i = 0; i < NUM_OF_THREADS; i++)
		{
			pthread_join(threads[i], 0);
		}
		unblockedUsr1Tid = 0;
		unblockedUsr2Tid = 0;
	}


    return 0;
}

