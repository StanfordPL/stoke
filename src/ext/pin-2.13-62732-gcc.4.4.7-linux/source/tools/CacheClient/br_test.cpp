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
//  ORIGINAL_AUTHOR: Ady Tal
//
//  This tool test the big-region binary. We know that the region
//  is about > 1000 instructions. Since we want to create a region
//  larger than 64K, we create inlined analysis routine larger 
//  than 50 bytes for each instructions.
//  Use fat instcoun.

//  Sample usage:
//    pin -xyzzy -region-max-inss 5000 -mesgon warning -t br_test -- bigRegion

#include "pin.H"
#include "utils.H"
#include <iostream>
#include <fstream>

using namespace std;

/* ================================================================== */
/* Global Variables                                                   */
/* ================================================================== */
UINT32 maxInsInTrace = 0;
UINT32 maxBytesInTrace = 0;
UINT64 totalIns = 0;
UINT64 insertions = 0;
ofstream TraceFile;

/* ===================================================================== */
/* Commandline Switches */
/* ===================================================================== */

KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE, "pintool",
    "o", "br_test.out", "specify trace file name");

/* ================================================================== */

// making these volatile tells the compiler not to optimize them away
volatile UINT64 *ptr = 0;
volatile UINT64 one = 1;

VOID fatcount(UINT64 *counter)
{
    // Do expensive counting
    ptr = &one;
    (*ptr) = 1;
    ptr = counter;
    (*ptr) += one;
    ptr = &one;
    ptr = 0;
}

/* ================================================================== */

VOID Trace(TRACE trace, VOID *v)
{
    if (TRACE_NumIns(trace) > maxInsInTrace)
        maxInsInTrace = TRACE_NumIns(trace);

    if (TRACE_Size(trace) > maxBytesInTrace)
        maxBytesInTrace = TRACE_Size(trace);

    for (BBL bbl = TRACE_BblHead(trace); BBL_Valid(bbl); bbl = BBL_Next(bbl))
    {
        for (INS ins = BBL_InsHead(bbl); INS_Valid(ins); ins = INS_Next(ins))
        {
            INS_InsertCall(ins, IPOINT_BEFORE, AFUNPTR(fatcount), IARG_PTR, &totalIns, IARG_END);
        }
    }
}

/* ================================================================== */

VOID Fini(INT32 code, VOID *v)
{
    TraceFile << "Max inst in basic block: " << maxInsInTrace << endl;
    TraceFile << "Dynamic inst: " << totalIns << endl;
    TraceFile << "Insertion to the cache: " << insertions << endl;
    TraceFile.close();
}

/* ================================================================== */

VOID TraceInserted(TRACE trace, VOID *v)
{
    insertions++;
    ADDRINT orig_pc = TRACE_Address(trace);
    TraceFile << "Code cache insertion #" << insertions;
    TraceFile << "\torig pc=0x" << hex << orig_pc;
    TraceFile << "\tcache pc=0x" << hex << TRACE_CodeCacheAddress(trace);
    TraceFile << "\ttrace size (orig)=" << dec << TRACE_Size(trace);
    TraceFile << "\ttrace size (cache)=" << dec << TRACE_CodeCacheSize(trace);
    TraceFile << "\ttrace stub size=" << dec << TRACE_StubSize(trace);
    TraceFile << "\t(BBL=" << dec << TRACE_NumBbl(trace) << " Ins=" << dec << TRACE_NumIns(trace) << ")";
    TraceFile << endl;
}


/* ================================================================== */
/*
 Initialize and begin program execution under the control of Pin
*/
int main(INT32 argc, CHAR **argv)
{
    if (PIN_Init(argc, argv))
        return Usage();

    // Open the trace file
    string logFileName = KnobOutputFile.Value();
    TraceFile.open(logFileName.c_str());
    
    // Register a routine that gets called on instrumentation of new trace
    TRACE_AddInstrumentFunction(Trace, 0);

    // Register a routine that gets called when the program ends
    PIN_AddFiniFunction(Fini, 0);
    
    // Register a routine that gets called when the trace is insert to the code cache
    CODECACHE_AddTraceInsertedFunction(TraceInserted, 0);

    PIN_StartProgram();  // Never returns
    
    return 0;
}
