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
 * This application tests Pin's graceful termination when the application is terminated by an exception.
 * The application will generate a segmentation fault and we expect to receive the threadFini callbacks
 * on both threads.
 *
 */

#include "threadUtils.h"


/**************************************************
 * Global variables                               *
 **************************************************/
int* segfault = 0; // This is a global variable so that the compiler won't optimize it out.
const int numOfSecondaryThreads = 1;
TidType threads[numOfSecondaryThreads];


/**************************************************
 * Secondary thread's main functions              *
 **************************************************/
// The secondary thread spins in a busy wait.
static void* DoNewThread(void* dummy) {
    IncThreads();
    while(true);
    
    // This can't be reached, simply for successful compilation.
    return NULL;
}


/**************************************************
 * Utility functions                              *
 **************************************************/
extern "C" EXPORT_SYM void doExit() {} // the tool expects to find this function, otherwise the test will fail.

static bool createThreads() {
    for (int i = 0; i < numOfSecondaryThreads; ++i) {
        threads[i] = 0;
        if (!CreateNewThread(&threads[i], (void*)DoNewThread, NULL)) {
            return false;
        }
    }
    return true;
}


static void waitForThreads() {
    // Wait for all threads to be created.
    while (NumOfThreads() != numOfSecondaryThreads) {
        DoYield();
    }
}

int main(int argc, char* argv[]) {
    InitLocks();
    
    if (!createThreads()) { // returns true if all threads were created successfully
        ErrorExit(RES_CREATE_FAILED);
    }
    waitForThreads(); // wait for the secondary thread(s) to be created
    
    *segfault = 5;
    ErrorExit(RES_UNEXPECTED_EXIT);

    // This can't be reached, simply for successful compilation.
    return 0;
}
