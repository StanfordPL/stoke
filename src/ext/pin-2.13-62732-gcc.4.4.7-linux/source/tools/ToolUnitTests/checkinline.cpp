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
 * Check that things work OK with inlined instrumentation which is passed
 * IARG_EXECUTING, IARG_FIRST_REP_ITERATION and IARG_BRANCH_TAKEN. 
 * The generation of those IARGs is non-trivial, and I have seen it cause problems...
 *
 * This checks firstly that Pin doesn't assert when we do this,
 * and secondly that we get the same results when we pass the arguments
 * and when we use them in if/then instrumentation.
 */
#include "pin.H"
#include <iostream>
#include <fstream>
#include <iomanip>
#include <stdlib.h>

static KNOB<string> KnobOutput(KNOB_MODE_WRITEONCE, "pintool", "o", "checkinline.out", "output file");

static ofstream out;

static UINT64 predicatedTrueCount = 0;
static UINT64 firstRepCount       = 0;

static UINT64 predicatedTrueCountArg = 0;
static UINT64 firstRepCountArg       = 0;

struct branchCount_t 
{
    UINT64 taken;
    UINT64 takenArg;
};
static branchCount_t branchCounts[XED_ICLASS_LAST];

// Trivial analysis routine to pass its argument back in an IfCall so that we can use it 
// to control the next piece of instrumentation.
// Simple enough to be inlined.
static ADDRINT returnArg (BOOL arg)
{
    return arg;
}

static VOID increment (UINT64 * counter)
{
    (*counter)++;
}

static VOID add (UINT64 * counter, BOOL value)
{
    (*counter) += (value ? 1 : 0);
}

static VOID InstrumentInstruction(INS ins, VOID *)
{
    if (INS_IsPredicated(ins))
    {
        INS_InsertIfCall(ins, IPOINT_BEFORE, (AFUNPTR)returnArg, IARG_EXECUTING, IARG_END);
        INS_InsertThenCall(ins, IPOINT_BEFORE, (AFUNPTR)increment, IARG_ADDRINT, ADDRINT(&predicatedTrueCount), IARG_END);
        
        INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)add, IARG_ADDRINT, ADDRINT(&predicatedTrueCountArg), 
                       IARG_EXECUTING, IARG_END);
        // CountOp = TRUE;
    }

    if (INS_HasRealRep(ins))
    {
        INS_InsertIfCall(ins, IPOINT_BEFORE, (AFUNPTR)returnArg, IARG_FIRST_REP_ITERATION, IARG_END);
        INS_InsertThenCall(ins, IPOINT_BEFORE, (AFUNPTR)increment, IARG_ADDRINT, ADDRINT(&firstRepCount), IARG_END);

        INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)add, IARG_ADDRINT, ADDRINT(&firstRepCountArg), 
                       IARG_FIRST_REP_ITERATION, IARG_END);
    }

    if (INS_IsBranch(ins))
    {
        UINT32 op = INS_Opcode(ins);

        INS_InsertIfCall(ins, IPOINT_BEFORE, (AFUNPTR)returnArg, IARG_BRANCH_TAKEN, IARG_END);
        INS_InsertThenCall(ins, IPOINT_BEFORE, (AFUNPTR)increment, 
                           IARG_ADDRINT, ADDRINT(&(branchCounts[op].taken)), 
                           IARG_END);

        INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)add, 
                       IARG_ADDRINT, ADDRINT(&(branchCounts[op].takenArg)), 
                       IARG_BRANCH_TAKEN, IARG_END);
    }
}

static VOID Fini(INT32,VOID *)
{
    out << "                          If/Then              Arg" << endl;
    out << "True predicated: " << setw(16) << predicatedTrueCount << " " << setw(16) << predicatedTrueCountArg << endl;
    out << "First Rep      : " << setw(16) << firstRepCount << " " << setw(16) << firstRepCountArg << endl;
    UINT64 takenTotal = 0;
    UINT64 takenArgTotal = 0;
    for (UINT32 i=0; i<(sizeof(branchCounts)/sizeof(branchCounts[0])); i++)
    {
        takenTotal = takenTotal + branchCounts[i].taken;
        takenArgTotal = takenArgTotal + branchCounts[i].takenArg;
    }
    out << "Branch taken   : " << setw(16) << takenTotal << " " << setw(16) << takenArgTotal << endl;
    out <<  endl;

    for (UINT32 i=0; i<(sizeof(branchCounts)/sizeof(branchCounts[0])); i++)
    {
        UINT64 taken    = branchCounts[i].taken;
        UINT64 takenArg = branchCounts[i].takenArg;

        if (taken || takenArg)
        {
            string mnemonic = OPCODE_StringShort(i);

            out << std::setw(20) << std::left << mnemonic << std::right <<
                setw(13) << taken << " " << setw(16) << takenArg;
            if (taken != takenArg)
                out << " <==ERROR==";
            out << endl;
        }
    }

    if (predicatedTrueCount != predicatedTrueCountArg ||
        firstRepCount       != firstRepCountArg ||
        takenTotal          != takenArgTotal 
        )
    {
        out << "***MISMATCH***" << endl;
        exit(1);
    }
    out.close();
    exit(0);
}

static VOID CheckThreadCount(THREADID threadIndex, CONTEXT *, INT32, VOID *)
{
    ASSERT (threadIndex==0, "This tool does not handle multiple threads\n");
}

int main(int argc, char *argv[])
{
    PIN_Init(argc, argv);

    out.open(KnobOutput.Value().c_str());

    INS_AddInstrumentFunction(InstrumentInstruction, 0);

    // Fini prints the results.
    PIN_AddFiniFunction(Fini, 0);
    PIN_AddThreadStartFunction(CheckThreadCount, 0);

    // Never returns
    PIN_StartProgram();
    
    return 0;
}
