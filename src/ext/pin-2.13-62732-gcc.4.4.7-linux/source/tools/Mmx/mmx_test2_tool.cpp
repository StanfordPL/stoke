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
#include <stdio.h>
#include "pin.H"
#include "instlib.H"
#include "portability.H"

extern "C" int MMXSequence (unsigned int a, unsigned int b, unsigned int c, UINT64 *aConcaTb);

CONTEXT *globContext;
int numFpsExecuted = 0;
int numFpsInstrumented = 0;

VOID AnalysisFunc (CONTEXT * ctxt)
{
    UINT64 aConcaTb;
    MMXSequence(0xdeadbeef, 0xbaadf00d, 0xfeedf00d, &aConcaTb);
    globContext = ctxt;
    numFpsExecuted++;
}

VOID Instruction(INS ins, VOID *v)
{
    xed_iclass_enum_t iclass = static_cast<xed_iclass_enum_t>(INS_Opcode(ins));
    if (iclass == XED_ICLASS_FLD1 || iclass == XED_ICLASS_FADDP || iclass == XED_ICLASS_FSTP)
    {
        INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)AnalysisFunc, IARG_CONST_CONTEXT, IARG_END);
        numFpsInstrumented++;
    }
}

// This function is called when the application exits
VOID Fini(INT32 code, VOID *v)
{
    if (numFpsInstrumented == 0)
    {
        fprintf (stderr, "**Error No instrumented fp instructions\n");
        PIN_ExitProcess(1);
    }
    if (numFpsExecuted == 0)
    {
        fprintf (stderr, "**Error No executed fp instructions\n");
        PIN_ExitProcess(1);
    }
}

int main(int argc, char * argv[])
{
    
    if (PIN_Init(argc, argv)) return -1;;

    // Register Instruction to be called to instrument instructions
    INS_AddInstrumentFunction(Instruction, 0);

    PIN_AddFiniFunction(Fini, 0);

    
    // Start the program, never returns
    PIN_StartProgram();
    
    return 0;
}
