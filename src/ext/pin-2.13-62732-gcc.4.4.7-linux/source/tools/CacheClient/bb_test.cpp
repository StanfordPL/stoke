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
//  This tool shows the result of limiting the trace size to a 
//      given number of basic blocks 
//  Sample usage:
//    pin -t bb_test -b 1 -- /bin/ls

#include "pin.H"
#include "utils.H"
#include "portability.H"
#include <iostream>
#include <fstream>

using namespace std;

/* ================================================================== */
/* Global Variables                                                   */
/* ================================================================== */
int numBBs;
int insertions;
ofstream TraceFile;

/* ===================================================================== */
/* Commandline Switches */
/* ===================================================================== */

KNOB<BOOL>  KnobHelp(KNOB_MODE_WRITEONCE, "pintool",
    "hh", "0", "Print help message (command-line switches)");
KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE, "pintool",
    "o", "bb_test.out", "specify trace file name");
KNOB<BOOL>   KnobPid(KNOB_MODE_WRITEONCE,                "pintool",
    "p", "0", "append pid to output");
KNOB<UINT32> KnobBBLimit(KNOB_MODE_WRITEONCE, "pintool",
    "b", "0", "Maximum number of basic blocks per trace");

/* ================================================================== */
/*
 Change the max basic blocks
*/
VOID InitBBCount()
{
    string logFileName = KnobOutputFile.Value();
    if( KnobPid )
        logFileName += "." + decstr( getpid_portable() );
    TraceFile.open(logFileName.c_str());
    
    insertions = 0;
    
    numBBs = KnobBBLimit.Value();
    ASSERTX(numBBs > 0);
    CODECACHE_ChangeMaxBblsPerTrace(numBBs);
    
    TraceFile << "Max BBs Set To: " << numBBs << endl;
}

/* ================================================================== */
/*
 Print details of traces as they are inserted
*/
VOID WatchTraces(TRACE trace, VOID *v)
{
    insertions++;
    ADDRINT orig_pc = TRACE_Address(trace);
    TraceFile << "Code cache insertion #" << insertions;
    TraceFile << "\torig pc=0x" << hex << orig_pc;
    TraceFile << "\tcache pc=0x" << hex << TRACE_CodeCacheAddress(trace);
    string name = RTN_FindNameByAddress(orig_pc);
    if (name == "")
        name = "*noname*";
        
    TraceFile << "\ttrace size (orig)=" << TRACE_Size(trace);
    TraceFile << "\ttrace size (cache)=" << TRACE_CodeCacheSize(trace);
    TraceFile << " (BBL=" << TRACE_NumBbl(trace) << " Ins=" << TRACE_NumIns(trace) << ")";
    TraceFile << "\t+stub size=" << TRACE_StubSize(trace);
    TraceFile << "\t+name=" << name << endl;
}

/* ================================================================== */
/*
 Print sizes
*/
VOID PrintFinalInfo(INT32 code, VOID *v)
{
    TraceFile << "Final trace count: " << CODECACHE_NumTracesInCache() << endl;
    TraceFile << "Final cache size: " << BytesToString(CODECACHE_CodeMemUsed()) << endl;
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

    // Register a routine that gets called when the cache is first initialized
    CODECACHE_AddCacheInitFunction(InitBBCount, 0);

    // Register a routine that gets called when a trace is
    //  inserted into the codecache
    CODECACHE_AddTraceInsertedFunction(WatchTraces, 0);
    
    // Register a routine that gets called when the program ends
    PIN_AddFiniFunction(PrintFinalInfo, 0);
    
    PIN_StartProgram();  // Never returns
    
    return 0;
}
