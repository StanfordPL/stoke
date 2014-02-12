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
#include <assert.h>
#include <stdio.h>
#include <dlfcn.h>
#include <signal.h>
#include <sys/types.h>
#include <unistd.h>
#include <pthread.h>
#include <sys/wait.h>
#include <sched.h>
#include <stdlib.h>
#include <string>
#include <list>
#include <sys/syscall.h>


using namespace std;

# define TLS_GET_GS_REG() \
  ({ int __seg; __asm ("movw %%gs, %w0" : "=q" (__seg)); __seg & 0xffff; })

pid_t GetTid()
{
     return syscall(__NR_gettid);
}

volatile unsigned int unblockedUsr1Tid = 0;
volatile unsigned int unblockedUsr2Tid = 0;
pthread_mutex_t mutex;

void SigUsrHandler(int sig)
{
    pthread_mutex_lock(&mutex);
    static bool usr1Tested = false;
    static bool usr2Tested = false;

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
    if (usr1Tested && usr2Tested)
    {
        fprintf(stderr, "The signal mask is correctly restored\n");
        exit(0);
    }
    pthread_mutex_unlock(&mutex);
}


int a[100000];
int n = 10;
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

void * ThreadEndlessLoopFunc(void * arg)
{
    unsigned int thread_no = *(unsigned int *)&arg;
    
    if (thread_no == 1)
    {
        UnblockSignal(SIGUSR1);
        unblockedUsr1Tid = GetTid();
    }
    else if (thread_no == 2)
    {
        UnblockSignal(SIGUSR2);
        unblockedUsr2Tid = GetTid();
    }
    
    int x = 0;
    while (1) 
    {
        x++;
        if (x > 10) 
        {
            x = 0;
        }
    }

    return 0;
}

#define DECSTR(buf, num) { buf = (char *)malloc(10); sprintf(buf, "%d", num); }

inline void PrintArguments(char **inArgv)
{
    fprintf(stderr, "Going to run: ");
    for(unsigned int i=0; inArgv[i] != 0; ++i)
    {
        fprintf(stderr, "%s ", inArgv[i]);
    }
    fprintf(stderr, "\n");
}


/* AttachAndInstrument()
 * a special thread routine that runs $PIN
 */
void AttachAndInstrument(list <string > * pinArgs)
{
    list <string >::iterator pinArgIt = pinArgs->begin();

    string pinBinary = *pinArgIt;
    pinArgIt++;

    pid_t parent_pid = getpid();
    
    pid_t child = fork();

    if (child) 
    {
        // inside parent
        
        return;
    }
    else
    {
        // inside child

        UnblockAllSignals();

        char **inArgv = new char*[pinArgs->size()+10];

        unsigned int idx = 0;
        inArgv[idx++] = (char *)pinBinary.c_str(); 
        inArgv[idx++] = (char*)"-pid"; 
        inArgv[idx] = (char *)malloc(10);
        sprintf(inArgv[idx++], "%d", parent_pid);

        for (; pinArgIt != pinArgs->end(); pinArgIt++)
        {
            inArgv[idx++]= (char *)pinArgIt->c_str();
        }
        inArgv[idx] = 0;
        
        PrintArguments(inArgv);

        execvp(inArgv[0], inArgv);
        fprintf(stderr, "ERROR: execv %s failed\n", inArgv[0]);
        kill(parent_pid, 9);
    }
}

/*
 * Invoke external process that will send signals
 */
void SendSignals(int signo)
{

    pid_t parentPid = getpid();
    pid_t pid = fork();
    if ( pid != 0 ) // child
    {
        return;
    }

    char **inArgv = new char*[15];

    unsigned int idx = 0;
    inArgv[idx++] = (char *)"./send_signals_android.sh"; 
    DECSTR(inArgv[idx], parentPid);
    idx++;
    DECSTR(inArgv[idx], signo);
    idx++;
    inArgv[idx] = 0;

    PrintArguments(inArgv);

    execvp(inArgv[0], inArgv);
    fprintf(stderr, "ERROR: execv %s failed\n", inArgv[0]);

}


void ParseCommandLine(int argc, char *argv[], list < string>* pinArgs)
{
    string pinBinary;
    for (unsigned int i=1; i<argc; i++)
    {
        string arg = string(argv[i]);
        if (arg == "-pin")
        {
            pinBinary = argv[++i];
        }
        if (arg == "-pinarg")
        {
            for (int parg = ++i; parg < argc; parg++)
            {
                pinArgs->push_back(string(argv[parg]));
                ++i;
            }
        }
    }
    assert(!pinBinary.empty());
    pinArgs->push_front(pinBinary);
}

#define NUM_OF_THREADS 4
pthread_t threads[NUM_OF_THREADS];

extern "C" int ThreadsReady(unsigned int numOfThreads)
{
    return 0;
}


int main(int argc, char *argv[])
{
    list <string> pinArgs;
    ParseCommandLine(argc, argv, &pinArgs);
    
    // Set the same signal handler for USR1 and USR2 signals
    signal(SIGUSR1, SigUsrHandler);
    signal(SIGUSR2, SigUsrHandler);
    
    // initialize a mutex that will be used by threads
    pthread_mutex_init(&mutex, 0);

    /* Block signals in all threads */
    BlockSignal(SIGUSR1);
    BlockSignal(SIGUSR2);
    /*****************/
    
    // launch threads
    for (unsigned int i = 0; i < NUM_OF_THREADS; i++)
    {
        pthread_create(&threads[i], 0, ThreadEndlessLoopFunc, (void *)i);
    }


    // Attach Pin to the running process    
    AttachAndInstrument(&pinArgs);
    
    // Give enough time for all threads to get started 
    while (!ThreadsReady(NUM_OF_THREADS+1) || !unblockedUsr1Tid || !unblockedUsr2Tid)
    {
        sched_yield();
    }        

    SendSignals(SIGUSR1);
    SendSignals(SIGUSR2);

    // Signals should kill this application
    while(1)
    {
        sched_yield();
    }

    return 0;
}

