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

/* ===================================================================== */
/*
  @ORIGINAL_AUTHOR: Robert Cohn
*/

/* ===================================================================== */
/*! @file

  Demonstrates low cost instrumentation by selectively instrumenting the program.
  The uninstrumented parts of the program execution the original code and have no
  overhead. The application transitions to instrumented code by calling PIN_ExecuteInstrumented.
  This function must be passed a context, which is allocated by the application by calling
  PIN_NewThread().
  The application transitions back to original code by calling PIN_ExecuteUninstrumented. See an
  example application in mttraceapp.c.

 */



#include "pin.H"
#include <iostream>
#include <fstream>

using namespace std;

/* ===================================================================== */
/* Global Variables */
/* ===================================================================== */

ofstream TraceFile("atraceprobe.out");

/* ===================================================================== */
/* Commandline Switches */
/* ===================================================================== */


/* ===================================================================== */

INT32 Usage()
{
    cerr <<
        "This pin tool collects an address trace\n"
        "\n";

    cerr << KNOB_BASE::StringKnobSummary();

    cerr << endl;

    return -1;
}

PIN_LOCK ioLock;

// Print a memory read record
VOID RecordMemRead(UINT32 id, VOID * ip, VOID * addr)
{
    PIN_GetLock(&ioLock, 1);
    
    TraceFile << "T" << id << " " << ip << ": R " << addr << endl;

    PIN_ReleaseLock(&ioLock);
}

// Print a memory write record
VOID RecordMemWrite(UINT32 id, VOID * ip, VOID * addr)
{
    PIN_GetLock(&ioLock, 1);

    TraceFile  << "T" << id << " " << ip << ": W " << addr << endl;

    PIN_ReleaseLock(&ioLock);
}

// Is called for every instruction and instruments reads and writes
VOID Instruction(INS ins, VOID *)
{
    // instruments loads using a predicated call, i.e.
    // the call happens iff the load will be actually executed
    // (this does not matter for ia32 but arm and ipf have predicated instructions)
    if (INS_IsMemoryRead(ins))
    {
        INS_InsertPredicatedCall(
            ins, IPOINT_BEFORE, (AFUNPTR)RecordMemRead,
            IARG_THREAD_ID,
            IARG_INST_PTR,
            IARG_MEMORYREAD_EA,
            IARG_END);
    }

    // instruments stores using a predicated call, i.e.
    // the call happens iff the store will be actually executed
    if (INS_IsMemoryWrite(ins))
    {
        INS_InsertPredicatedCall(
            ins, IPOINT_BEFORE, (AFUNPTR)RecordMemWrite,
            IARG_THREAD_ID,
            IARG_INST_PTR,
            IARG_MEMORYWRITE_EA,
            IARG_END);
    }
}

    
/* ===================================================================== */

int main(int argc, CHAR *argv[])
{
    PIN_InitSymbols();

    if( PIN_Init(argc,argv) )
    {
        return Usage();
    }

    INS_AddInstrumentFunction(Instruction, 0);
    
    TraceFile << hex;
    
    PIN_InitLock(&ioLock);

    PIN_StartProgramProbed();
    
    return 0;
}

/* ===================================================================== */
/* eof */
/* ===================================================================== */
