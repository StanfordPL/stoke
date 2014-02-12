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
// The tool demonstrates proper way to retrieve line and symbol information
// in arbitrary point. Access to the information is performed in analysis routine.

#include <iostream>
#include <fstream>
#include "pin.H"

KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE, "pintool",
    "o", "inscountmt.out", "specify output file name");

KNOB<UINT64> KnobSampleRate(KNOB_MODE_WRITEONCE, "pintool",
    "sample_rate", "100000", "number of executed instructions in thread per sample");

PIN_LOCK lock;

INT32 numThreads = 0;
const INT32 MaxNumThreads = 10000;
// Number of executed instructions in thread per sample
UINT64 sampleRate = 100000;

// The running count of instructions is kept here
// We let each thread's count be in its own data cache line so that
// multiple threads do not contend for the same data cache line.
// This has shown to improve the performance of inscount2_mt by up to 6X
// on SPECOMP2001.
#define PADSIZE 36  // Enough to provide 64byte distance between thread records
struct THREAD_DATA
{
    UINT64 _count;
    UINT64 _prev_count;
    UINT32 _line_number;
    string _file_name;
    string _rtn_name;
    UINT8 _pad[PADSIZE];
};

THREAD_DATA icount[MaxNumThreads];


// This function is called before every block
VOID PIN_FAST_ANALYSIS_CALL docount(UINT32 c, THREADID tid, ADDRINT iAddr)
{
    icount[tid]._count += c;

    if ((icount[tid]._count - icount[tid]._prev_count) >= sampleRate)
    {   // Arbitrary sample point
        icount[tid]._prev_count += sampleRate;

        // Get Pin client lock according to description of PIN_GetSourceLocation()
        PIN_LockClient();
        INT32 lineNumber;
        string fileName;
        // Get line info
        PIN_GetSourceLocation(iAddr, NULL, &lineNumber, &fileName);
        PIN_UnlockClient();

        // RTN_FindNameByAddress() may not be called under Pin client lock
        string rtnName = RTN_FindNameByAddress(iAddr);

        if (lineNumber != 0)
        {
            icount[tid]._line_number = lineNumber;
            icount[tid]._file_name = fileName;
            icount[tid]._rtn_name = rtnName;
        }
    }
}

VOID ThreadStart(THREADID threadid, CONTEXT *ctxt, INT32 flags, VOID *v)
{
    PIN_GetLock(&lock, threadid+1);
    numThreads++;
    PIN_ReleaseLock(&lock);
    
    ASSERT(numThreads <= MaxNumThreads, "Maximum number of threads exceeded\n");
}

// Pin calls this function every time a new basic block is encountered
// It inserts a call to docount
VOID Trace(TRACE trace, VOID *v)
{
    // Visit every basic block  in the trace
    for (BBL bbl = TRACE_BblHead(trace); BBL_Valid(bbl); bbl = BBL_Next(bbl))
    {
        // Insert a call to docount for every bbl, passing the number of instructions.
        // IPOINT_ANYWHERE allows Pin to schedule the call anywhere in the bbl to obtain best performance.
        
        BBL_InsertCall(bbl, IPOINT_ANYWHERE, (AFUNPTR)docount, IARG_FAST_ANALYSIS_CALL, IARG_UINT32, 
                       BBL_NumIns(bbl), IARG_THREAD_ID, IARG_INST_PTR, IARG_END);
    }
}

// This function is called when the application exits
VOID Fini(INT32 code, VOID *v)
{
    // Write to a file since cout and cerr maybe closed by the application
    ofstream OutFile;
    OutFile.open(KnobOutputFile.Value().c_str());
    OutFile << "Number of threads ever exist = " << numThreads << endl;
    
    for (INT32 t = 0; t < numThreads; t++)
    {
        OutFile << "Count[" << decstr(t) << "] = " << icount[t]._count << ", samples = "
                << icount[t]._prev_count / sampleRate << endl;
        OutFile << "Routine = " << icount[t]._rtn_name << ", line = " << icount[t]._line_number
                << ", source file = " << icount[t]._file_name << endl;
    }

    OutFile.close();
}

// argc, argv are the entire command line, including pin -t <toolname> -- ...
int main(int argc, char * argv[])
{
    // Enable symbol and line info support
    PIN_InitSymbols();

    // Initialize pin
    PIN_Init(argc, argv);

    // Initialize icount[]
    for (INT32 t = 0; t < MaxNumThreads; t++)
    {
        icount[t]._count = 0;
        icount[t]._prev_count = 0;
        icount[t]._line_number = 0;
        icount[t]._file_name = "";
        icount[t]._rtn_name = "";
    }
    sampleRate = KnobSampleRate.Value();

    PIN_AddThreadStartFunction(ThreadStart, 0);

    // Register Instruction to be called to instrument instructions
    TRACE_AddInstrumentFunction(Trace, 0);

    // Register Fini to be called when the application exits
    PIN_AddFiniFunction(Fini, 0);

    // Start the program, never returns
    PIN_StartProgram();
    
    return 0;
}
