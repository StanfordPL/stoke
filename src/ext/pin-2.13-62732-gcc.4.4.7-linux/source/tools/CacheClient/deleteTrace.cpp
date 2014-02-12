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
//
//  ORIGINAL_AUTHOR: Kim Hazelwood
//
//  This tool deletes a hot program addresses from the code cache
//      from inside an analysis routine.
//  Sample usage:
//    pin -t deleteTrace -- /bin/ls

#include "pin.H"
#include "utils.H"
#include "portability.H"
#include <iostream>
#include <fstream>

using namespace std;

/* ================================================================== */
/* Global Variables                                                   */
/* ================================================================== */
UINT32 insertions, deletions;
ADDRINT hotAddress;
UINT32 * executionCount;
ofstream TraceFile;

/* ===================================================================== */
/* Commandline Switches */
/* ===================================================================== */

KNOB<BOOL>  KnobHelp(KNOB_MODE_WRITEONCE, "pintool",
    "hh", "0", "Print help message (command-line switches)");
KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE, "pintool",
    "o", "deleteTrace.out", "specify trace file name");
KNOB<BOOL>  KnobPid(KNOB_MODE_WRITEONCE, "pintool",
    "p", "0", "append pid to output");


/* ================================================================== */
VOID InitCounters()
{
    string logFileName = KnobOutputFile.Value();
    if( KnobPid )
        logFileName += "." + decstr( getpid_portable() );
    TraceFile.open(logFileName.c_str());

    insertions = 0;
    deletions = 0;
    hotAddress = 0x4000d8c0;
}

/* ================================================================== */
/*
 Print details of traces as they are inserted
*/
VOID PrintImportantInsertions(TRACE trace, VOID *v)
{
    insertions++;

    ADDRINT orig_pc = TRACE_Address(trace);
    if (orig_pc == hotAddress) 
    {
        TraceFile << "INSERTION #" << dec << insertions;
        TraceFile << "\torig pc=0x" << hex << orig_pc;
        TraceFile << "\tcache pc=0x" << hex << TRACE_CodeCacheAddress(trace);
        TraceFile << "\ttrace size (orig)=" << TRACE_Size(trace);
        TraceFile << "\ttrace size (cache)=" << dec << TRACE_CodeCacheSize(trace);
        TraceFile << " (BBL=" << dec <<  TRACE_NumBbl(trace);
        TraceFile << " Ins=" << dec << TRACE_NumIns(trace) << ")" << endl;
        TraceFile << "\t+stub size=" << dec << TRACE_StubSize(trace) << endl;
    }
}

/* ================================================================== */
/*
 Print details of traces as they are deleted
*/
VOID PrintImportantInvalidations(ADDRINT orig_pc, ADDRINT cache_pc,
    BOOL success)
{
    if (success) 
    {
        deletions++;
        TraceFile << "   SUCCESSFUL INVALIDATION #" << dec << deletions;
        TraceFile << "\torig pc=0x" << hex << orig_pc;
        TraceFile << "\tcache pc=0x" << hex << cache_pc << endl;
    }
    else
    {
        TraceFile << "   FAILED INVALIDATION";
        TraceFile << "\torig pc=0x" << hex << orig_pc;
        TraceFile << "\tcache pc=0x" << hex << cache_pc << endl;
    }
}

VOID InvalidateTrace()
{
    TraceFile << "INVALIDATION of 0x" << hex << hotAddress << " initiated" << endl;
    
    UINT32 numRemoved = CODECACHE_InvalidateTraceAtProgramAddress( hotAddress);
    
    TraceFile << "INVALIDATION " << dec << numRemoved << " traces at 0x" << hex << hotAddress;
    TraceFile << "\tTotal Invalidations: " << dec << deletions << endl;
}

VOID CheckForInvalidateTrace(UINT32 *theCount)
{
    (*theCount)++;
    if (*theCount > 50) 
    {
        cerr << "[ERROR] I should have been deleted!" << endl;
    }
    if (*theCount > 20) 
    {
        InvalidateTrace();
        (*theCount) = 0;
    }
}

VOID CheckForHotAddress(TRACE Trace, VOID *v)
{
    if (TRACE_Address(Trace) == hotAddress)
    {
        executionCount = new UINT32;
        (*executionCount) = 0;

        TRACE_InsertCall(Trace, IPOINT_BEFORE, (AFUNPTR) CheckForInvalidateTrace, IARG_PTR, executionCount, IARG_END);
    }
}

/* ================================================================== */
/*
 Print details at the end of the run
*/
VOID PrintDetailsOnExit(INT32 code, VOID *v)
{
    TraceFile << endl << dec << deletions << " deletions" << endl;
    TraceFile << "#eof" << endl;
    TraceFile.close();
}

/* ================================================================== */
/*
 Initialize and begin program execution under the control of Pin
*/
int main(INT32 argc, CHAR **argv)
{
    if (PIN_Init(argc, argv) || KnobHelp) return Usage();

    // Initialize some counters we're using in this tool
    InitCounters();

    // Register a routine that gets called when the cache is first initialized
    CODECACHE_AddCacheInitFunction(PrintInitInfo, 0);

    // Register a routine that gets called when a trace is 
    //  inserted into the codecache
    CODECACHE_AddTraceInsertedFunction(PrintImportantInsertions, 0);

    // Register a routine that gets called when a trace is 
    //  inserted into the codecache
    CODECACHE_AddTraceInvalidatedFunction(PrintImportantInvalidations, 0);

    // Register an instrumentation routine that counts traces and evicts the
    // hot trace after 50 executions.
    TRACE_AddInstrumentFunction(CheckForHotAddress, 0);

    // Register a routine that gets called when the program ends
    PIN_AddFiniFunction(PrintDetailsOnExit, 0);
    
    PIN_StartProgram();  // Never returns
    
    return 0;
}
