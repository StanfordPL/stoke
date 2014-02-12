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
// This tool prints the percentage of vector instructions among the total instruction count.

#include <cstdio>
#include <cstring>
#include <iostream>
#include <fstream>
#include "pin.H"
extern "C" {
#include "xed-interface.h"
}

using std::ofstream;
using std::cerr;


/////////////////////
// GLOBAL VARIABLES
/////////////////////

// A knob for defining the output file name
KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE, "pintool", "o", "vcount.out",
                            "specify file name for vcount output");

// ofstream object for handling the output.
ofstream OutFile;

volatile UINT64 icount = 0;
volatile UINT64 vcount = 0;


/////////////////////
// UTILITY FUNCTIONS
/////////////////////

static int Usage()
{
    cerr << "This tool prints the percentage of vector instructions among the total instruction count" <<
            endl << endl << KNOB_BASE::StringKnobSummary() << endl;
    return 1;
}


/////////////////////
// ANALYSIS FUNCTIONS
/////////////////////

static void BlockCount(ADDRINT numInsts) { ATOMIC::OPS::Increment<UINT64>(&icount, numInsts); }
static void VectorCount() { ATOMIC::OPS::Increment<UINT64>(&vcount, 1); }


/////////////////////
// INSTRUMENTATION FUNCTIONS
/////////////////////

static void Instruction(INS ins)
{
    xed_decoded_inst_t const* const xedd = INS_XedDec(ins);
    xed_extension_enum_t ext = xed_decoded_inst_get_extension(xedd);
    if (XED_EXTENSION_KNCE == ext)
    {
        INS_InsertCall(ins, IPOINT_AFTER, (AFUNPTR)VectorCount, IARG_END);
    }
}

static void BasicBlock(BBL bbl)
{
    BBL_InsertCall(bbl, IPOINT_ANYWHERE, AFUNPTR(BlockCount), IARG_ADDRINT, ADDRINT(BBL_NumIns(bbl)), IARG_END);
}

static VOID Trace(TRACE trace, VOID* v)
{
    for (BBL bbl = TRACE_BblHead(trace); BBL_Valid(bbl); bbl = BBL_Next(bbl))
    {
        BasicBlock(bbl);
        for (INS ins = BBL_InsHead(bbl); INS_Valid(ins); ins = INS_Next(ins))
        {
            Instruction(ins);
        }
    }
}


/////////////////////
// CALLBACKS
/////////////////////

static VOID Fini(INT32 code, VOID *v)
{
    OutFile << "Total instruction count: " << dec << icount << endl;
    OutFile << "Vector Instructions: " << vcount << endl;
    OutFile.precision(2);
    OutFile << "Percentage of vector instructions: " << ((double)vcount / (double)icount * 100) << "%" << endl;
    OutFile.close();
}


/////////////////////
// MAIN FUNCTION
/////////////////////

int main(int argc, char * argv[])
{
    // Initialize pin
    if (PIN_Init(argc, argv)) return Usage();

    OutFile.open(KnobOutputFile.Value().c_str());

    // Register Instruction to be called to instrument instructions
    TRACE_AddInstrumentFunction(Trace, 0);

    // Register Fini to be called when the application exits
    PIN_AddFiniFunction(Fini, 0);
    
    // Start the program, never returns
    PIN_StartProgram();
    
    return 0;
}
