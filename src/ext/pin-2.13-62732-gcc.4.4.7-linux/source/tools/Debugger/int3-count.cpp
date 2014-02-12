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
#include "pin.H"

KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE, "pintool", "o", "int3-count.out", "log file");
KNOB<string> KnobFunction(KNOB_MODE_WRITEONCE, "pintool", "func", "", "function to trace");


static void InstrumentIns(INS, VOID *);
static void OnExit(INT32, VOID *);
static void CountInt3();
static void CountOther();


static UINT64 NumInt3 = 0;
static UINT64 NumOther = 0;


int main(int argc, char * argv[])
{
    PIN_Init(argc, argv);
    PIN_InitSymbols();

    INS_AddInstrumentFunction(InstrumentIns, 0);
    PIN_AddFiniFunction(OnExit, 0);

    PIN_StartProgram();
    return 0;
}


static void InstrumentIns(INS ins, VOID *)
{
    RTN rtn = INS_Rtn(ins);
    if (!RTN_Valid(rtn) || RTN_Name(rtn) != KnobFunction.Value())
        return;

    if (INS_Opcode(ins) == XED_ICLASS_INT3)
        INS_InsertCall(ins, IPOINT_BEFORE, AFUNPTR(CountInt3), IARG_END);
    else
        INS_InsertCall(ins, IPOINT_BEFORE, AFUNPTR(CountOther), IARG_END);
}

static void OnExit(INT32, VOID *)
{
    std::ofstream out(KnobOutputFile.Value().c_str());

    out << "Total count: " << NumOther + NumInt3 << std::endl;
    out << "INT3 count : " << NumInt3 << std::endl;
}

static void CountInt3()
{
    NumInt3++;
}

static void CountOther()
{
    NumOther++;
}
