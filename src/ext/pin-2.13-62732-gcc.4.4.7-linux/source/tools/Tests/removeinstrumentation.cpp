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
#include "pin.H"
#include <iostream>
#include <fstream>
#include <stdlib.h>

//
// Usage of PIN_RemoveInstrumentation()
//
// PIN_RemoveInstrumentation() invalidates the code cache to facilitate different 
// instrumentation midway through the program execution.
//


KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE, "pintool",
    "o", "removeinstrumentation1.out", "specify output file name");

UINT64 numInstrumentation1Calls = 0;
UINT64 numInstrumentation2Calls = 0;
UINT64 numRemovals1 = 0;
UINT64 numRemovals2 = 0;
#ifdef TARGET_ANDROID
// In Android, less than 1M instructions are executed, so we need a smaller number.
const UINT64 NUM_CALLS_TO_FLUSH_AT = 1024 * 256;
#else
const UINT64 NUM_CALLS_TO_FLUSH_AT = 1024 * 1024;
#endif
BOOL doInstrumentation1 = TRUE;

ADDRINT TimeForSwitchFrom1To2()
{
    numInstrumentation1Calls++;
    return ((ADDRINT)((numInstrumentation1Calls&(NUM_CALLS_TO_FLUSH_AT-1)) == 0));
}
VOID SwitchFrom1To2()
{
    doInstrumentation1 = FALSE;
    numRemovals1++;
    PIN_RemoveInstrumentation();
}

ADDRINT TimeForSwitchFrom2To1()
{
    numInstrumentation2Calls++;
    return ((ADDRINT)((numInstrumentation2Calls&(NUM_CALLS_TO_FLUSH_AT-1)) == 0));
}
VOID SwitchFrom2To1()
{
    doInstrumentation1 = TRUE;
    numRemovals2++;
    PIN_RemoveInstrumentation();
}

 
VOID Instruction(INS ins, VOID *v)
{
    if (doInstrumentation1)
    {
        INS_InsertIfCall(ins, IPOINT_BEFORE, (AFUNPTR)TimeForSwitchFrom1To2, IARG_END);
        INS_InsertThenCall(ins, IPOINT_BEFORE, (AFUNPTR)SwitchFrom1To2, IARG_END);
    }
    else
    {
        INS_InsertIfCall(ins, IPOINT_BEFORE, (AFUNPTR)TimeForSwitchFrom2To1, IARG_END);
        INS_InsertThenCall(ins, IPOINT_BEFORE, (AFUNPTR)SwitchFrom2To1, IARG_END);
    }
}

VOID Fini(INT32 code, VOID *v)
{
    // Write to a file since cout and cerr maybe closed by the application
    ofstream OutFile;
    OutFile.open(KnobOutputFile.Value().c_str());
    OutFile << "numInstrumentation1Calls " << numInstrumentation1Calls << endl;
    OutFile << "numInstrumentation2Calls " << numInstrumentation2Calls << endl;
    OutFile << "numRemovals1             " << numRemovals1 << endl;
    OutFile << "numRemovals2             " << numRemovals2 << endl;
    
    if (numInstrumentation1Calls == 0 || numInstrumentation2Calls == 0)
    {
        OutFile << "***Error expected both calls to both Instrumentation1 and Instrumentation2\n";
        OutFile.close();
        exit (1);
    }
    OutFile.close();
}


int main(int argc, char * argv[])
{
    PIN_Init(argc, argv);

    INS_AddInstrumentFunction(Instruction, 0);

    PIN_AddFiniFunction(Fini, 0);
    
    // Never returns
    PIN_StartProgram();
    
    return 0;
}
