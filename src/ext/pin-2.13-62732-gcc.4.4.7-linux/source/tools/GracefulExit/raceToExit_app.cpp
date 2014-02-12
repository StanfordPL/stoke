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
 * This test verifies that no new threads register in the depot after the termination request. If that happens,
 * the test should hang until the timeout and the result would be the RES_EXIT_TIMEOUT error. Also, we check
 * that the number of threadStart callbacks equals the number of threadFini callbacks. There is no requirement
 * that all threads will be created before termination.
 */

#include <cstdio>
#include <cstdlib>
#include <cstring>
#include "threadUtils.h"


/**************************************************
 * Global variables                               *
 **************************************************/
const int numOfFirstCreateLoop = 30;
const int numOfSecondCreateLoop = 50;
const int numOfSecondaryThreads = numOfFirstCreateLoop + numOfSecondCreateLoop + 1; // Total number of secondary threads.
TidType threads[numOfSecondaryThreads];


/**************************************************
 * Utility functions                              *
 **************************************************/
extern "C" EXPORT_SYM void doExit() {} // the tool expects to find this function, otherwise the test will fail.

static bool createThreads(int numOfThreads, void* func) {
    for (int i = 0; i < numOfThreads; ++i) {
        threads[i] = 0;
        if (!CreateNewThread(&threads[i], func, NULL)) {
            return false;
        }
    }
    return true;
}


/**************************************************
 * Secondary threads' main functions              *
 **************************************************/
void* DoExitThread(void* dummy) {
    Print("Exit thread is now going to exit");
    IncThreads();
    exit(RES_SUCCESS);
}
 
void* DoDummyThread(void* dummy) {
    IncThreads();
    DoYield();
    return NULL;
}


/**************************************************
 * Main                                           *
 **************************************************/
int main() {
    InitLocks();
    
    if (!createThreads(numOfFirstCreateLoop, (void*)DoDummyThread)) { // create first batch of dummy threads
        ErrorExit(RES_CREATE_FAILED);
    }
    Print("Creating the exit thread");
    if (!createThreads(1, (void*)DoExitThread)) { // create the exit thread
        ErrorExit(RES_CREATE_FAILED);
    }
    if (!createThreads(numOfSecondCreateLoop, (void*)DoDummyThread)) { // create second batch of dummy threads
        ErrorExit(RES_CREATE_FAILED);
    }
    
    DoSleep(1000); // wait here to be terminated
    
    // Failsafe - this should not be reached but we want to avoid a hung test.
    ErrorExit(RES_EXIT_TIMEOUT); // never returns
    
    // This can't be reached, simply for successful compilation.
    return RES_SUCCESS;
}
