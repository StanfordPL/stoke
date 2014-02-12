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
#include <stdio.h>
#include <set>
#include "pin.H"

// On Mac OS we have workq threads that might be reused.
// This tool is used to count the number of system threads
// and compare it to the number of "new" threads that have
// been seen by pin.

KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE, "pintool",
    "o", "thcnt.out", "specify output file name");

PIN_LOCK lock;

static UINT32 numThreads = 0;
static UINT32 numSysThreads = 0;
static UINT32 maxThreads = 0;

typedef set<OS_THREAD_ID> OSTID_MAP;
typedef set<OS_THREAD_ID>::iterator OSTID_ITER;

static OSTID_MAP tidMap;

VOID ThreadStart(THREADID threadid, CONTEXT *ctxt, INT32 flags, VOID *v)
{
    PIN_GetLock(&lock, threadid+1);
    numThreads++;
    if (threadid > maxThreads)
        maxThreads = threadid;

    OS_THREAD_ID oid = PIN_GetTid();
    OSTID_ITER iter = tidMap.find(oid);
    if (iter == tidMap.end())
    {
        // new threads
        numSysThreads++;
        tidMap.insert(oid);
    }
    PIN_ReleaseLock(&lock);
}

// This function is called when the application exits
VOID Fini(INT32 code, VOID *v)
{
    ASSERT(numThreads > 1, "Pin didn't catch any workq threads!");
    // Write to a file since std stream might be closed by the application
    FILE *fp = fopen(KnobOutputFile.Value().c_str(), "w");
    if (fp == NULL) {
        fprintf(stderr, "Couldn't open %s for output\n", KnobOutputFile.Value().c_str());
        return;
    }

    fprintf(fp, "Number of threads ever existed: %d\n", numThreads);
    fprintf(fp, "Number of different OS threads: %d\n", numSysThreads);
    fprintf(fp, "Max value of pin thread ID: %d\n", maxThreads);

    fclose(fp);
}
/* ===================================================================== */
/* Print Help Message                                                    */
/* ===================================================================== */

INT32 Usage()
{
    fprintf(stderr, "This Pintool counts the number of threads in the application\n");
    fprintf(stderr, "%s\n", KNOB_BASE::StringKnobSummary().c_str());
    return -1;
}

/* ===================================================================== */
/* Main                                                                  */
/* ===================================================================== */

// argc, argv are the entire command line, including pin -t <toolname> -- ...
int main(int argc, char * argv[])
{
    // Initialize pin
    if (PIN_Init(argc, argv)) return Usage();

    PIN_AddThreadStartFunction(ThreadStart, 0);

    // Register Fini to be called when the application exits
    PIN_AddFiniFunction(Fini, 0);

    // Start the program, never returns
    PIN_StartProgram();
    
    return 0;
}
