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
// This tool verifies that Pin computes the JKZD/JKNZD predicate correctly. It is used with the maskedJump_app application.
// The application runs two jkzd instructions, we expect the first to be taken and the second not to be taken.
// The application then runs two jknzd instructions, we expect the first not to be taken and the second to be taken.

#include <iostream>
#include <fstream>
#include <cassert>
#include "pin.H"

using std::ofstream;
using std::cerr;


/////////////////////
// TYPE DEFINITIONS
/////////////////////

// Enumeration of all the tested instructions
enum TestInstruction
{
    TI_JKZD = 0,
    TI_JKNZD,
    TI_SIZE
};

// Enumeration of all the tested registers
enum TestRegister
{
    TR_K2 = 0,
    TR_K3,
    TR_SIZE
};


/////////////////////
// GLOBAL VARIABLES
/////////////////////

// A knob for defining the output file name.
KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE, "pintool", "o", "maskedBranchTaken.out",
                            "specify file name for maskedBranchTaken output");

// ofstream object for handling the output.
ofstream OutFile;

//  All entries in the success matrix below should be true to indicate a successful test.
//
//       |  k2  |  k3  |
// ---------------------
// JKZD  |      |      |
// ---------------------
// JKNZD |      |      |
// ---------------------
bool successMatrix[TI_SIZE][TR_SIZE];


/////////////////////
// UTILITY FUNCTIONS
/////////////////////

static int Usage()
{
    cerr << "This tool verifies that Pin computes the JKZD/JKNZD predicate correctly" <<
            endl << endl << KNOB_BASE::StringKnobSummary() << endl;
    return 1;
}

static void InitSuccessMatrix()
{
    for (int i = 0; i < TI_SIZE; ++i)
    {
        for (int j = 0; j < TR_SIZE; ++j)
        {
            successMatrix[i][j] = false;
        }
    }
}

static bool TestSucceeded()
{
    for (int i = 0; i < TI_SIZE; ++i)
    {
        for (int j = 0; j < TR_SIZE; ++j)
        {
            if (!successMatrix[i][j]) return false;
        }
    }
    return true;
}

// Mapping: opcode -> TestInstruction
static TestInstruction GetTI(OPCODE opcode)
{
    switch (opcode)
    {
    case XED_ICLASS_JKZD:
        return TI_JKZD;
    case XED_ICLASS_JKNZD:
        return TI_JKNZD;
    default:
        PIN_ExitApplication(3);
    }
    return TI_SIZE;
}

// Mapping: Pin REG -> TestRegister
static TestRegister GetTR(REG reg)
{
    switch (reg)
    {
    case REG_K2:
        return TR_K2;
    case REG_K3:
        return TR_K3;
    default:
        PIN_ExitApplication(4);
    }
    return TR_SIZE;
}


/////////////////////
// ANALYSIS FUNCTIONS
/////////////////////

static void BranchInstruction(OPCODE opcode, REG maskReg, ADDRINT regvalue, BOOL branchTaken)
{
    string taken = (branchTaken) ? "" : "not ";
    OutFile << "TOOL: " << OPCODE_StringShort(opcode) << " with " << REG_StringShort(maskReg)
            << "=0x" << hex << regvalue << dec << " was " << taken << "taken" << endl;
    bool shouldBeTaken;
    switch (opcode)
    {
    case XED_ICLASS_JKZD:
        shouldBeTaken = (0 == regvalue);
        break;
    case XED_ICLASS_JKNZD:
        shouldBeTaken = (0 != regvalue);
        break;
    default:
        OutFile << "Illegal opcode for a masked jump: " << OPCODE_StringShort(opcode) << endl;
        PIN_ExitApplication(2);
    }
    successMatrix[GetTI(opcode)][GetTR(maskReg)] = (shouldBeTaken == branchTaken);
}


/////////////////////
// INSTRUMENTATION FUNCTIONS
/////////////////////

static void SearchRoutineAndInstrument(IMG img, CHAR* rtnName, OPCODE opcode)
{
    RTN rtn = RTN_FindByName(img, rtnName);
    assert(RTN_Valid(rtn));
    RTN_Open(rtn);
    for (INS ins = RTN_InsHead(rtn); INS_Valid(ins); ins = INS_Next(ins))
    {
        if (INS_Opcode(ins) == opcode)
        {
            REG maskReg = INS_RegW(ins, 0);
            INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)BranchInstruction, IARG_UINT32, opcode,
                                                                           IARG_UINT32, maskReg,
                                                                           IARG_REG_VALUE, maskReg,
                                                                           IARG_BRANCH_TAKEN,
                                                                           IARG_END);
        }
    }
    RTN_Close(rtn);
}

static VOID ImageLoad(IMG img, VOID* v)
{
    if (IMG_IsMainExecutable(img))
    {
        // Instrument the JKZD instructions
        SearchRoutineAndInstrument(img, "DoJkzdTests", XED_ICLASS_JKZD);

        // Instrument the JKNZD instructions
        SearchRoutineAndInstrument(img, "DoJknzdTests", XED_ICLASS_JKNZD);
    }
}


/////////////////////
// CALLBACKS
/////////////////////

static VOID Fini(INT32 code, VOID *v)
{
    string successStr = (TestSucceeded()) ? "SUCCESS" : "FAILURE";
    OutFile << "TOOL: " << successStr << endl;
    OutFile.close();
}


/////////////////////
// MAIN FUNCTION
/////////////////////

int main(int argc, char * argv[])
{
    // Initialize pin
    PIN_InitSymbols();
    if (PIN_Init(argc, argv)) return Usage();

    // Output file
    OutFile.open(KnobOutputFile.Value().c_str());

    // Initialize global variables
    InitSuccessMatrix();

    // Register Instruction to be called to instrument instructions
    IMG_AddInstrumentFunction(ImageLoad, 0);

    // Register Fini to be called when the application exits
    PIN_AddFiniFunction(Fini, 0);

    // Start the program, never returns
    PIN_StartProgram();

    return 0;
}
