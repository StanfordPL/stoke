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
 * This tools checks that all thread-fini and application fini callbacks are delivered upon program
 * termination in the correct order.
 * Various scenarios are checked depending on the application being run with this tool.
 */

#include <cstdio>
#include <cstring>
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

// Output file streams
ofstream startsOut;
ofstream finisOut;

// Flag for signaling the tool's internal exit thread that it can call PIN_ExitApplication.
volatile bool releaseExitThread = false;

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
 * Function declarations                          *
 **************************************************/
static void InternalThreadMain(void* v);


/**************************************************
 * Utility functions                              *
 **************************************************/
// Retrieve a tid sotred in the TLS.
static OS_THREAD_ID* GetTLSData(THREADID threadIndex) {
    return static_cast<OS_THREAD_ID*>(PIN_GetThreadData(tidKey, threadIndex));
}

// Creates an internal thread for the tool.
static void CreateToolThread() {
    if (PIN_SpawnInternalThread(InternalThreadMain, NULL, 0, NULL) == INVALID_THREADID) {
        fprintf(stderr, "TOOL: <%d> Unable to spawn internal thread. Killing the test!\n", PIN_GetTid());
        fflush(stderr);
        PIN_ExitProcess(101);
    }
}

// Calls exit application either directly (by the application thread) or indirectly (by releasing the internal thread).
static void callExitApplication(bool appThread) {
    if (appThread) {
        fprintf(stderr, "TOOL: <%d> Application thread calling PIN_ExitApplication()\n", PIN_GetTid());
        fflush(stderr);
        PIN_ExitApplication(0);
    }
    else {
        fprintf(stderr, "TOOL: <%d> Releasing the internal exit thread\n", PIN_GetTid());
        fflush(stderr);
        releaseExitThread = true;
    }
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
}

static VOID Fini(INT32 code, VOID* v) {
    fprintf(stderr, "TOOL: <%d> fini function %d %d\n", PIN_GetTid(), numOfActiveThreads, totalNumOfThreads);
    fflush(stderr);
}


/**************************************************
 * Instrumentation routines                       *
 **************************************************/
static VOID OnImage(IMG img, VOID *v) {
    if (IMG_IsMainExecutable(img)) {
        RTN rtn = RTN_FindByName(img, "doExit");
        if (RTN_Valid(rtn)) {
            fprintf(stderr, "TOOL: <%d> Found doExit routine\n", PIN_GetTid());
            fflush(stderr);
            RTN_Open(rtn);
            RTN_InsertCall(rtn, IPOINT_BEFORE, (AFUNPTR)callExitApplication, IARG_FUNCARG_ENTRYPOINT_VALUE, 0, IARG_END);
            RTN_Close(rtn);
        }
        else {
            fprintf(stderr, "TOOL: <%d> Unable to find the doExit routine. Killing the test!\n", PIN_GetTid());
            fflush(stderr);
            PIN_ExitProcess(102);
        }
    }
}


/**************************************************
 * Main functions                                 *
 **************************************************/
// Internal thread's main function
void InternalThreadMain(void* v) {
    fprintf(stderr, "TOOL: <%d> Internal thread was created succesfully.\n", PIN_GetTid());
    fflush(stderr);
    while (!releaseExitThread); { // wait here until the application requests to exit
        PIN_Yield();
    }
    fprintf(stderr, "TOOL: <%d> Internal thread calling PIN_ExitApplication()\n", PIN_GetTid());
    fflush(stderr);
    PIN_ExitApplication(0);
}


// Tool's main function.
// The last parameter is expected to be a number which signifies which test is being run.
int main(INT32 argc, CHAR **argv) {

    // Initialize Pin and TLS
    PIN_InitSymbols();
    PIN_Init(argc, argv);
    tidKey = PIN_CreateThreadDataKey(0);

    // Set up output files
    startsOut.open(KnobThreadsStartsFile.Value().c_str());
    finisOut.open(KnobThreadsFinisFile.Value().c_str());

    // Register callbacks
    PIN_AddThreadStartFunction(ThreadStart, 0);
    IMG_AddInstrumentFunction(OnImage, 0);
    PIN_AddThreadFiniFunction(ThreadFini, 0);
    PIN_AddFiniFunction(Fini, 0);
    
    // test "1" calls PIN_ExitApplication by a tool internal thread. We need to create that thread only in this case.
    if (strcmp(argv[argc-1], "1") == 0) {
        CreateToolThread();
    }
    
    // Start running the application
    PIN_StartProgram(); // Never returns

    return 0;
}
