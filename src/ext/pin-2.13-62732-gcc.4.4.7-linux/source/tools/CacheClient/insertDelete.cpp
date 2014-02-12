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
//  This tool deletes a hot program address from the code cache
//      from an instrumentation routine (in the Jit).
//  Sample usage:
//    pin -t insertDelete -- /bin/ls

#include "pin.H"
#include "utils.H"
#include "portability.H"
#include <iostream>
#include <fstream>

using namespace std;

/* ================================================================== */
/* Global Variables                                                   */
/* ================================================================== */
int insertions, deletions, readyToDelete;
ADDRINT hotAddress;
ofstream TraceFile;

/* ===================================================================== */
/* Commandline Switches */
/* ===================================================================== */

KNOB<BOOL>  KnobHelp(KNOB_MODE_WRITEONCE, "pintool",
    "hh", "0", "Print help message (command-line switches)");
KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE, "pintool",
    "o", "insertDelete.out", "specify trace file name");
KNOB<BOOL>  KnobPid(KNOB_MODE_WRITEONCE, "pintool",
    "p", "0", "append pid to output");

/* ===================================================================== */
VOID InitCounters()
{
    string logFileName = KnobOutputFile.Value();
    if( KnobPid )
        logFileName += "." + decstr( getpid_portable() );
    TraceFile.open(logFileName.c_str());

    insertions = 0;
    deletions = 0;
    readyToDelete = 0;
    hotAddress = 0x4000d8c0;
}

/* ================================================================== */
/*
 Print details of traces as they are inserted
*/
VOID WatchTraces(TRACE trace, VOID *v)
{
    insertions++;
    ADDRINT orig_pc = TRACE_Address(trace);
    TraceFile << "Code cache insertion #" << dec << insertions;
    TraceFile << "\torig pc=0x" << hex << orig_pc;
    TraceFile << "\tcache pc=0x" << hex << TRACE_CodeCacheAddress(trace);
    TraceFile << "\ttrace size (original)=" << dec << TRACE_Size(trace);
    TraceFile << "\ttrace size (in cache)=" << dec << TRACE_CodeCacheSize(trace);
    TraceFile << " (BBL=" << dec << TRACE_NumBbl(trace);
    TraceFile << " Ins=" << dec << TRACE_NumIns(trace) << ")" << endl;

    // Make sure deletion only happens after the trace has been inserted
    if (orig_pc == hotAddress) readyToDelete = 1;

    // Delete trace after every 10 insertions, make sure we don't delete what
    //  we're currently inserting.
    if ((insertions % 10 == 0)  && (readyToDelete == 1) && (orig_pc != hotAddress))
    {
        int numRemoved = CODECACHE_InvalidateTraceAtProgramAddress( hotAddress);
        deletions += numRemoved;
        TraceFile << "DELETING " << dec << numRemoved << " traces at 0x" << hex << hotAddress;
        TraceFile << "\tTotal Deletions: " << dec << deletions << endl;
        readyToDelete = 0;
    }
}
/* ================================================================== */
/*
 Print details at the end of the run
*/
VOID PrintDetailsOnExit(INT32 code, VOID *v)
{
    int traces = CODECACHE_NumTracesInCache();
    int stubs = CODECACHE_NumExitStubsInCache();
    int compensation = traces - stubs;
    traces = traces - compensation; 

    TraceFile << endl << "------------------------" << endl;
    TraceFile << dec << traces << " traces" << endl;
    TraceFile << stubs << " exit stubs" << endl;
    // TraceFile << compensation << " compensations" << endl;
    // TraceFile << (traces+stubs+compensation) << " total regions in the code cache" << endl;
    TraceFile << endl << deletions << " deletions" << endl;
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
    CODECACHE_AddTraceInsertedFunction(WatchTraces, 0);

    // Register a routine that gets called when the program ends
    PIN_AddFiniFunction(PrintDetailsOnExit, 0);
    
    PIN_StartProgram();  // Never returns
    
    return 0;
}
