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
 * This application tests for graceful exit when a tool calls PIN_ExitApplication while holding the client lock. The main thread
 * waits in a blocking system call to be terminated. The secondary thread will never execute its code since the tool will call
 * PIN_ExitApplication from the thread-start callback.
 *
 */

#include <sstream>
#include <cstdlib>
#include "threadUtils.h"

using std::stringstream;


/**************************************************
 * Secondary thread's main functions              *
 **************************************************/
// The secondary thread simply exits, the tool will do the rest.
static void* DoNewThread(void* v) {
    IncThreads();
    ErrorExit(RES_EXIT_FAILED); // never returns
    return NULL; // simply for successful compilation
}


/**************************************************
 * Main function                                  *
 **************************************************/
int main(int argc, char* argv[]) {
    InitLocks();

    TidType tid;
    if (!CreateNewThread(&tid, (void*)DoNewThread, NULL)) {
        ErrorExit(RES_CREATE_FAILED);
    }

    DoSleep(300);   // wait here to be terminated

    // Failsafe - this should not be reached but we want to avoid a hung test.
    ErrorExit(RES_EXIT_TIMEOUT); // never returns

    // This can't be reached, simply for successful compilation.
    return 0;
}
