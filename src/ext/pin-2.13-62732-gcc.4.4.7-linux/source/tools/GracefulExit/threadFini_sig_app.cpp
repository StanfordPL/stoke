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
 * This application tests Pin's graceful termination when an external signal terminates the application. We expect
 * to receive the threadFini callbacks on both threads.
 *
 * This is a Linux specific test.
 *
 */

#include <sys/types.h>
#include <unistd.h>
#include <sstream>
#include "threadUtils.h"

using std::stringstream;


/**************************************************
 * Global variables                               *
 **************************************************/
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
extern "C" void doExit() {} // the tool expects to find this function, otherwise the test will fail.

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

static void createChild(char* sigapp) {
    stringstream strm;
    strm << getpid();

    pid_t childPid = fork();
    if (childPid < 0) {
        ErrorExit(RES_FORK_FAILED);
    }
    
    if (childPid == 0) {
        // Child's code
        execl(sigapp, sigapp, strm.str().c_str(), (char*)NULL);
        ErrorExit(RES_EXECV_FAILED);
    }
}

int main(int argc, char* argv[]) {
    if (argc != 2) {
        ErrorExit(RES_INVALID_ARGS);
    }

    InitLocks();
    
    if (!createThreads()) { // returns true if all threads were created successfully
        ErrorExit(RES_CREATE_FAILED);
    }
    waitForThreads(); // wait for the secondary thread(s) to be created
    
    createChild(argv[1]);   // create the child that will send the SIGTERM signal
    DoSleep(1000);           // wait here to be terminated
        
    // Failsafe - this should not be reached but we want to avoid a hung test.
    ErrorExit(RES_EXIT_TIMEOUT); // never returns

    // This can't be reached, simply for successful compilation.
    return 0;
}
