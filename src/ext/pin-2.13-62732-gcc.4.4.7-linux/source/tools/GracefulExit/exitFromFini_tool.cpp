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
 * This tool tests for correctness when a tool calls PIN_ExitApplication/PIN_ExitProcess from within a thread-fini
 * or application-fini callback. See exitFromFini_app.cpp for complete details.
 */

#include <cstdio>
#include <cstring>
#include <cassert>
#include <fstream>
#include "pin.H"

using std::ofstream;


/**************************************************
 * Global variables                               *
 **************************************************/
// TLS key for saving each thread's OS thread ID.
// In the ThreadStart callback, each thread stores its tid in the TLS and prints it to the startsOut file.
// In the threadFini callback, each thread prints the tid as it appears in the TLS to the finisOut file.
// We expect this value to correspond to the exiting thread (for which the callback is given) and not the
// OS thread ID of the actual thread executing the callback.
static TLS_KEY tidKey;

// Knobs for defining the output filenames. We need one for the thread start callbacks
// and one for the thread fini callbacks.
// When the test is done, we sort and compare them and expect them to be identical. This verifies access
// to the correct TLS during the thread fini callbacks.
KNOB<string> KnobThreadsStartsFile(KNOB_MODE_WRITEONCE,  "pintool",
    "startsfile", "threadStarts.out", "specify file name for thread start callbacks output");
KNOB<string> KnobThreadsFinisFile(KNOB_MODE_WRITEONCE,  "pintool",
    "finisfile", "threadFinis.out", "specify file name for thread fini callbacks output");

// Knob for specifying the scenario to be tested.
KNOB<int> KnobScenario(KNOB_MODE_WRITEONCE, "pintool",
	"scenario", "0", "specify the current scenario to be checked (1-6)");

// Output file streams
ofstream startsOut;
ofstream finisOut;

// Scenario
int scenario = 0;

// Counter for verifying that the application's fini function is called after all the thread finis.
// This is done in the makefile:
// 1. Verify that all started threads (threads that executed the ThreadStart callback) have terminated
//    gracefully by comparing the startsOut file and the finisOut file.
// 2. Check that numOfActiveThreads is 0. If it is positive, it means that the Fini callback was called
//    before one of the ThreadFini callbacks. It should not be negative.
volatile int numOfActiveThreads = 0;

// Counter for verifying that all expected threads were created. Its value is printed in the Fini callback
// and checked in the makefile.
volatile int totalNumOfThreads = 0;


/**************************************************
 * Utility functions                              *
 **************************************************/
// Retrieve a tid stored in the TLS.
static OS_THREAD_ID* GetTLSData(THREADID threadIndex) {
    return static_cast<OS_THREAD_ID*>(PIN_GetThreadData(tidKey, threadIndex));
}


/**************************************************
 * Analysis routines                              *
 **************************************************/
static VOID ThreadStart(THREADID threadIndex, CONTEXT* c, INT32 flags, VOID *v) {
    ++numOfActiveThreads;
    ++totalNumOfThreads;
    OS_THREAD_ID* tidData = new OS_THREAD_ID(PIN_GetTid());
    PIN_SetThreadData(tidKey, tidData, threadIndex);
    startsOut << *tidData << endl;
    fprintf(stderr, "TOOL: <%d> thread start, active: %d\n", *tidData, numOfActiveThreads);
    fflush(stderr);
}

static VOID ThreadFini(THREADID threadIndex, CONTEXT const * c, INT32 code, VOID *v) {
    --numOfActiveThreads;
    OS_THREAD_ID* tidData = GetTLSData(threadIndex);
    finisOut << *tidData << endl;
    fprintf(stderr, "TOOL: <%d> thread fini, fini: %d\n", *tidData, numOfActiveThreads);
    fflush(stderr);
    switch (scenario) {
    case 2:
        if (threadIndex != 0) break; // in scenario 2, call PIN_ExitApplication for the main thread only.
    case 1:
        fprintf(stderr, "TOOL: <%d> calling PIN_ExitApplication from thread fini for thread %d\n",
                *tidData, threadIndex);
        fflush(stderr);
        PIN_ExitApplication(0);
    case 5:
        if (threadIndex != 0) break; // in scenario 5, call PIN_ExitApplication for the main thread only.
    case 4:
        fprintf(stderr, "TOOL: <%d> calling PIN_ExitProcess from thread fini for thread %d\n",
                *tidData, threadIndex);
        fflush(stderr);
        PIN_ExitProcess(0);
    default: break;
    }
}

static VOID Fini(INT32 code, VOID* v) {
	OS_THREAD_ID tid = PIN_GetTid();
    fprintf(stderr, "TOOL: <%d> fini function %d %d\n", tid, numOfActiveThreads, totalNumOfThreads);
    fflush(stderr);
    switch (scenario) {
    case 3:
    	fprintf(stderr, "TOOL: <%d> calling PIN_ExitApplication from application fini\n", tid);
    	fflush(stderr);
    	PIN_ExitApplication(0);
    case 6:
    	fprintf(stderr, "TOOL: <%d> calling PIN_ExitProcess from application fini\n", tid);
    	fflush(stderr);
    	PIN_ExitProcess(0);
    default:
    	break;
    }
}


/**************************************************
 * Main function 	                              *
 **************************************************/
int main(INT32 argc, CHAR **argv) {

    // Initialize Pin and TLS
    PIN_InitSymbols();
    PIN_Init(argc, argv);
    tidKey = PIN_CreateThreadDataKey(0);

    // Set up output files
    startsOut.open(KnobThreadsStartsFile.Value().c_str());
    finisOut.open(KnobThreadsFinisFile.Value().c_str());

    // Verify scenario
    if (KnobScenario.Value() < 1 || KnobScenario > 6) {
    	fprintf(stderr, "TOOL ERROR: Invalid scenario specified\n%s\n", KnobScenario.StringKnobSummary().c_str());
    	return 1;
    }

    scenario = KnobScenario.Value();

    // Register callbacks
    PIN_AddThreadStartFunction(ThreadStart, 0);
    PIN_AddThreadFiniFunction(ThreadFini, 0);
    PIN_AddFiniFunction(Fini, 0);

    // Start running the application
    PIN_StartProgram(); // Never returns

    return 0;
}
