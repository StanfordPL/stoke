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
#include <map>
#include <cstdio>
#include <cstdlib>
#include "threadUtils.h"

using std::map;

HANDLE cancellationPoint;


/**************************************************
 * Global variables                               *
 **************************************************/
volatile int numOfThreads = 0;
map<TidType, HANDLE> handles;


/**************************************************
 * Global locks                                   *
 **************************************************/
CRITICAL_SECTION printLock;          // This lock is used for synchronizing prints.
CRITICAL_SECTION numThreadsLock;     // This lock is used for synchronizing access to numOfThreads.


/**************************************************
 * Static functions declaration                   *
 **************************************************/
static void GetLock(CRITICAL_SECTION* thelock);
static void ReleaseLock(CRITICAL_SECTION* thelock);


/**************************************************
 * External functions implementation              *
 **************************************************/
unsigned int GetTid() {
    return (unsigned int)GetCurrentThreadId();
}

void InitLocks() {
    InitializeCriticalSection(&printLock);
    InitializeCriticalSection(&numThreadsLock);
    cancellationPoint = CreateEvent(NULL, TRUE, FALSE, NULL); // manual reset event
}

bool CreateNewThread(TidType* tid, void* func, void* info) {
    HANDLE hThread = CreateThread(NULL, 0, (LPTHREAD_START_ROUTINE)func, info, 0, tid);
    if (hThread == NULL) return false;
    handles[*tid] = hThread;
    return true;
}

void CancelThread(TidType tid) {
    if (TerminateThread(handles[tid], 0) == 0) {
        ErrorExit(RES_CANCEL_FAILED);
    }
}

void WaitForThread(TidType tid) {
    if (WaitForSingleObject(handles[tid], INFINITE) == WAIT_FAILED) {
        ErrorExit(RES_JOIN_FAILED);
    }
}

void ThreadExit() {
    ExitThread(0);
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
    fflush(stderr);
    ReleaseLock(&printLock);
}

void ErrorExit(Results res) {
    GetLock(&printLock);
    fprintf(stderr, "APP ERROR <%d>: %s\n", GetTid(), errorStrings[res].c_str());
    fflush(stderr);
    ReleaseLock(&printLock);
    exit(res);
}

void DoSleep(unsigned int seconds) {
    Sleep(seconds*1000);
}

void DoYield() {
    Yield();
}

void EnterSafeCancellationPoint() {
    WaitForSingleObject(cancellationPoint, INFINITE);
}


/**************************************************
 * Static functions implementation                *
 **************************************************/
void GetLock(CRITICAL_SECTION* thelock) {
    EnterCriticalSection(thelock);
}

void ReleaseLock(CRITICAL_SECTION* thelock) {
    LeaveCriticalSection(thelock);
}
