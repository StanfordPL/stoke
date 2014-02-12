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
#include <pthread.h>
#include <sys/wait.h>
#include <unistd.h>
#include <signal.h>
#include <stdio.h>
#include <errno.h>
#include <semaphore.h>
#include <sys/syscall.h>

/*
 * This application checks the correctness of the retrieve and alteration
 * of the thread sigmask when a tool retrieve/alter it.
 */
 
static sem_t mutex, mutex1;
static	pthread_t one_tid, two_tid, main_thread;
static FILE * fd_signals;
static char * FILE_NAME = "signal_list.txt";
static int MAX_SIZE = 128; /*maximum line size*/

void HandleSigusr1()
{
    signal(SIGUSR1, HandleSigusr1);
    sleep(1);
}

void HandlerSigusr2()
{
    signal(SIGUSR2, HandlerSigusr2);
    sleep(1);
}

/*
 * block all the signals 
 */
void BlockAllSignal()
{ 
    sigset_t sigmask;
    sigfillset(&sigmask);
    pthread_sigmask(SIG_SETMASK, &sigmask, NULL);    
} 

/*
 * block only the signals in the list: "signalsListToBlock"
 */
void BlockSignals(int signalsListToBlock[] , int len, sigset_t * sigmask)
{
    sigemptyset(sigmask);
    int i;
    for(i=0; i< len; ++i) 
        sigaddset(sigmask, signalsListToBlock[i]);
    pthread_sigmask(SIG_SETMASK, sigmask, NULL);
}


/*
 *  A thread function that processes SIGUSR1 and SIGUSR2 signals sent by the SignalSender thread function
 */
void SignalReceiver()
{ 
    int numSigReceived=0; 
    fd_signals= fopen(FILE_NAME, "wt"); 
    int sigList[1] = {SIGUSR2};
    sigset_t sigmask;
    BlockSignals(sigList, 1, &sigmask);
    signal(SIGUSR2, HandlerSigusr2);
    signal(SIGUSR1, HandleSigusr1);
    sem_post(&mutex);
    int k;
    for(k=0; k<10; k++)
    { 
        numSigReceived=0;
        sigwait(&sigmask, &numSigReceived);    
        if(numSigReceived == SIGUSR2)
            fprintf(fd_signals, "%d", 2 );
        if(numSigReceived == SIGUSR1)
            fprintf(fd_signals, "%d", 1 );
        pthread_sigmask(SIG_SETMASK, NULL, &sigmask);
        sleep(3);
        sem_post(&mutex);
        sem_wait(&mutex1);
    } 
    fclose(fd_signals);
} 

/*
 *  Send repeatedly signals (SIGUSR1 and SIGUSR2) to the thread which starts execution by invoking the function
 *  SignalReceiver
 */
void SignalSender()
{
    sigset_t sigmask;
    int sigList[2] = {SIGUSR1, SIGUSR2};
    BlockSignals(sigList, 2, &sigmask);
    sem_wait(&mutex);   
    int j;
    for(j=0; j<10; j++)
    {
        pthread_kill(two_tid, SIGUSR2); /* Delivers a signal*/     
        pthread_kill(two_tid, SIGUSR1); /* Delivers a signal*/    
        sleep(3);
        sem_post(&mutex1);
        sem_wait(&mutex);           
    }  
}

int main(int argc, char * argv[])
{
    pid_t parentPid = getpid();
    pid_t pid = fork();
    BlockAllSignal();
 
    if (pid)
    {
        sem_init(&mutex, 0, 0);
        sem_init(&mutex1, 0, 0);
    
        /*
         * create two threads, one which sends siganls to the other threads, which receives them.
         */
        pthread_create(&one_tid, NULL, (void *)SignalSender, NULL); 
        pthread_create(&two_tid, NULL, (void *)SignalReceiver, NULL);
     
        /*
         * suspended excution until the two threads terminate
         */
        pthread_join(one_tid, NULL);
        pthread_join(two_tid,NULL);

        /*
         * cleanup  
         */
        pthread_kill(one_tid, SIGTERM); /* terminate thread */
        pthread_kill(two_tid, SIGTERM); /* terminate thread */
        sem_destroy(&mutex); /* destroy semaphore */
        sem_destroy(&mutex1); /* destroy semaphore */
    }
    else 
    {
        // inside child
        sleep(5);
        char attachPid[MAX_SIZE];
        sprintf(attachPid, "%d", parentPid);
        sleep(5);
        char * pinExecv = argv[1];
        char * slowAssert = argv[2];
        char * toolName = argv[3];
          
        /*
         * Pin attach to the parent thread.
         * never return
         */
        execl(pinExecv, pinExecv, slowAssert, "-probe", "-pid", attachPid, "-t",
            toolName, NULL); 
        fprintf(stderr, "execl failed with errno: %d\n", errno);
    }
}
