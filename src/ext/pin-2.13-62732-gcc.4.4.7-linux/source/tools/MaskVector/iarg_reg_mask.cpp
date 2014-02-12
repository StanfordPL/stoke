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
// This tool verifies that the mask registers can be passed as IARG_REG_* parameters to analysis routines.

#include <iostream>
#include <fstream>
#include <cassert>
#include "pin.H"
#include "../Utils/regvalue_utils.h"
#include "vectorvalues.h"

using std::ofstream;
using std::cerr;
using std::endl;


/////////////////////
// GLOBAL VARIABLES
/////////////////////

// A knob for defining the test mode. One of:
// 1. readonly   - Only read the mask, but do not change it.
// 2. modify     - Modify the mask register used in the vgather instructions.
KNOB<string> KnobTestMode(KNOB_MODE_WRITEONCE, "pintool",
    "testmode", "readonly", "specify which context to test. One of readonly|modify.");

// A knob for defining the output file name
KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE, "pintool", "o", "iarg_reg_mask.out", "specify output file name");

// ofstream object for handling the output.
ofstream OutFile;

// A variable for capturing the errors.
bool valuesMismatch = false;

// Emulated gathered value.
unsigned char gatherValues[VECTORSIZE] = { 0 };


/////////////////////
// UTILITY FUNCTIONS
/////////////////////

static int Usage()
{
    cerr << "This tool verifies that the mask registers can be passed as IARG_REG_* parameters to analysis routines." <<
            endl << endl << KNOB_BASE::StringKnobSummary() << endl;
    return 1;
}

static inline void compareValues(ADDRINT val, ADDRINT expected)
{
    if (val != expected)
    {
        OutFile << "WARNING: Expected value: 0x" << hex << expected << dec << endl << flush;
        OutFile << "WARNING: Received value: 0x" << hex << val << dec << endl << flush;
        valuesMismatch = true;
    }
}

static void updateGatheredValue(ADDRINT mask, int numOfElements, int elementSize)
{
    for (int elm = 0; elm < numOfElements; ++elm, mask >>= 1)
    {
        if (mask & 0x1)
        {
            int end = (elm+1) * elementSize;
            for (int b = elm * elementSize; b < end; ++b)
            {
                gatherValues[b] = memValues[b];
            }
        }
    }
}


/////////////////////
// ANALYSIS FUNCTIONS
/////////////////////

static void ReadValue(ADDRINT val, UINT32 opByteWidth)
{
    compareValues(val, gatherMask);
    OutFile << "mask: 0x" << hex << val << dec << ". opwidth: " << opByteWidth << endl;
    updateGatheredValue(val, VECTORSIZE / opByteWidth, opByteWidth);
}

static void ReadReference(PIN_REGISTER* ref)
{
    compareValues(ref->word[0], gatherMask);
}

static void ModifyReference(PIN_REGISTER* ref)
{
    ref->word[0] = fullmask;
}

static void VerifyGatheredValue(CONTEXT* ctxt, REG reg)
{
    UINT size = REG_Size(reg);
    PIN_REGISTER val;
    PIN_GetContextRegval(ctxt, reg, reinterpret_cast<UINT8*>(&val));
    OutFile << "Value of " << REG_StringShort(reg) << " after gather: " << Val2Str(&val, size) << endl;
    if (!CompareValues(&val, (const void*)gatherValues, size, OutFile))
    {
        valuesMismatch = true;
    }
}

static void VerifyModifiedGatheredValue(CONTEXT* ctxt, REG reg)
{
    UINT size = REG_Size(reg);
    PIN_REGISTER val;
    PIN_GetContextRegval(ctxt, reg, reinterpret_cast<UINT8*>(&val));
    OutFile << "Value of " << REG_StringShort(reg) << " after gather: " << Val2Str(&val, size) << endl;
    if (!CompareValues(&val, (const void*)memValues, size, OutFile))
    {
        valuesMismatch = true;
    }
}


/////////////////////
// INSTRUMENTATION FUNCTIONS
/////////////////////

static VOID Instruction(INS ins, VOID* v)
{
    if (INS_IsVgather(ins))
    {
        REG vec = INS_OperandReg(ins,0);
        REG mask = INS_OperandReg(ins, 1);
        assert(REG_ZMM_BASE <= vec && REG_ZMM_LAST >= vec);
        assert(REG_K_BASE <= mask && REG_K_LAST >= mask);
        if (KnobTestMode.Value() == "readonly")
        {
            // size (in bytes) of a vector element (double or single precision)
            UINT32 width = INS_OperandWidth(ins, 2) / 8;
            INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)ReadValue, IARG_REG_VALUE, mask, IARG_UINT32, width, IARG_END);
            INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)ReadReference, IARG_REG_REFERENCE, mask, IARG_END);
            INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)ReadReference, IARG_REG_CONST_REFERENCE, mask, IARG_END);
            INS_InsertCall(ins, IPOINT_AFTER, (AFUNPTR)VerifyGatheredValue, IARG_CONTEXT, IARG_UINT32, vec, IARG_END);
        }
        else if (KnobTestMode.Value() == "modify")
        {
            INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)ModifyReference, IARG_REG_REFERENCE, mask, IARG_END);
            INS_InsertCall(ins, IPOINT_AFTER, (AFUNPTR)VerifyModifiedGatheredValue, IARG_CONTEXT, IARG_UINT32, vec,
                                                                                    IARG_END);
        }
        else
        {
            OutFile << "ERROR: Unknown test mode requested: " << KnobTestMode.Value() << endl;
            PIN_ExitApplication(1); // never returns
        }
    }
}


/////////////////////
// CALLBACKS
/////////////////////

VOID Fini(INT32 code, VOID *v)
{
    if (valuesMismatch)
    {
        OutFile << "ERROR: Values mismatch detected." << endl;
        OutFile.close();
        PIN_ExitProcess(2);
    }
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
    INS_AddInstrumentFunction(Instruction, 0);

    // Register Fini to be called when the application exits
    PIN_AddFiniFunction(Fini, 0);

    // Start the program, never returns
    PIN_StartProgram();

    return 0;
}
