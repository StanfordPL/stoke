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
#include <fstream>
#include <iostream>
#include "context_utils.h"

using std::ofstream;


/////////////////////
// GLOBAL VARIABLES
/////////////////////

// A knob for defining the output file name
KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE, "pintool",
    "o", "emu_context_regvalue.out", "specify output file name");

// ofstream object for handling the output
ofstream OutFile;


/////////////////////
// UTILITY FUNCTIONS
/////////////////////

bool CheckAllModifiedValues(ostream& ost)
{
    bool success = true;
    vector<REG> regs = GetTestRegs();
    int numOfRegs = regs.size();
    for (int r = 0; r < numOfRegs; ++r)
    {
        REG reg = regs[r];
        success &= CompareValues(GetRegval(reg), GetToolRegisterValue(reg), REG_Size(reg), ost);
    }
    return success;
}


/////////////////////
// CALLBACKS
/////////////////////

static VOID OnSyscall(THREADID tid, CONTEXT* ctxt, SYSCALL_STANDARD std, VOID* v)
{
    // We only need to test this once
    static bool done = false;
    if (done) return;
    done = true;

    // Save the original context
    CONTEXT copy;
    PIN_SaveContext(ctxt, &copy);

    OutFile << "Begin tests before entering system call" << endl;

    // Test the "get" mechanism of EMU_CONTEXT
    StoreContext(ctxt);
    PrintStoredRegisters(OutFile);

    // Test the "set" mechanism of EMU_CONTEXT
    ModifyContext(ctxt);
    OutFile << endl << "After modifications" << endl;
    StoreContext(ctxt);
    PrintStoredRegisters(OutFile);
    if (!CheckAllModifiedValues(OutFile))
    {
        OutFile << "ERROR: values mismatch" << endl << flush;
        PIN_ExitApplication(1); // never returns
    }

    // Restore the original context
    PIN_SaveContext(&copy, ctxt);
    OutFile << endl << "After restoring" << endl;
    StoreContext(ctxt);
    PrintStoredRegisters(OutFile);

    // Test complete
    OutFile << endl << "Done" << endl;
}

static VOID Fini(INT32 code, VOID *v)
{
    OutFile.close();
}


/////////////////////
// MAIN FUNCTION
/////////////////////

int main(int argc, char * argv[])
{
    // Initialize Pin
    PIN_Init(argc, argv);

    // Open the output file
    OutFile.open(KnobOutputFile.Value().c_str());

    // Add instrumentation
    PIN_AddSyscallEntryFunction(OnSyscall, 0);
    PIN_AddFiniFunction(Fini, 0);

    // Start running the application
    PIN_StartProgram(); // never returns

    return 0;
}
