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
#include <cstdio>
#include <cstdlib>
#include <unistd.h>
#include <sys/syscall.h>
#include "threadUtils.h"


/**************************************************
 * Type definitions                               *
 **************************************************/
typedef void *(*startfunc)(void*);


/**************************************************
 * Global variables                               *
 **************************************************/
volatile int numOfThreads = 0;


/**************************************************
 * Global locks                                   *
 **************************************************/
pthread_mutex_t printLock;          // This lock is used for synchronizing prints.
pthread_mutex_t numThreadsLock;     // This lock is used for synchronizing access to numOfThreads.


/**************************************************
 * Static functions declaration                   *
 **************************************************/
void GetLock(pthread_mutex_t* mutex);
void ReleaseLock(pthread_mutex_t* mutex);


/**************************************************
 * External functions implementation              *
 **************************************************/
unsigned int GetTid() {
    return (unsigned int)syscall(__NR_gettid);
}

void InitLocks() {
    if (pthread_mutex_init(&printLock, NULL)) {
        ErrorExit(RES_INIT_FAILED);
    }
    if (pthread_mutex_init(&numThreadsLock, NULL)) {
        ErrorExit(RES_INIT_FAILED);
    }
}
 
bool CreateNewThread(TidType* tid, void* func, void* info) {
    return (pthread_create(tid, NULL, (startfunc)func, info) == 0);
}

void CancelThread(TidType tid) {
    if (pthread_cancel(tid) != 0) {
        ErrorExit(RES_CANCEL_FAILED);
    }
}

void WaitForThread(TidType tid) {
    if (pthread_join(tid, NULL) != 0) {
        ErrorExit(RES_JOIN_FAILED);
    }
}

void ThreadExit() {
    pthread_exit(NULL);
}

void IncThreads() {
    GetLock(&numThreadsLock);
    ++numOfThreads;
    ReleaseLock(&numThreadsLock);
}

void DecThreads() {
    GetLock(&numThreadsLock);
    --numOfThreads;
    ReleaseLock(&numThreadsLock);
}

int NumOfThreads() {
    return numOfThreads;
}

void Print(const string& str) {
    GetLock(&printLock);
    fprintf(stderr, "APP:  <%d> %s\n", GetTid(), str.c_str());
    ReleaseLock(&printLock);
}

void ErrorExit(Results res) {
    GetLock(&printLock);
    fprintf(stderr, "APP ERROR <%d>: %s\n", GetTid(), errorStrings[res].c_str());
    ReleaseLock(&printLock);
    exit(res);
}

void DoSleep(unsigned int seconds) {
    sleep(seconds);
}

void EnterSafeCancellationPoint() {
    while(1) {
        sleep(1);
    }
}


/**************************************************
 * Static functions implementation                *
 **************************************************/
void GetLock(pthread_mutex_t* mutex) {
    if (pthread_mutex_lock(mutex) != 0) {
        ErrorExit(RES_LOCK_FAILED);
    }
}

void ReleaseLock(pthread_mutex_t* mutex) {
    if (pthread_mutex_unlock(mutex) != 0) {
        ErrorExit(RES_UNLOCK_FAILED);
    }
}

void DoYield() {
    sched_yield();
}
