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
/*! @file
 * This test tool instruments every instruction of the sw_interrupt_app program
 * to check correctness of the context recovery for software interrupts.
 */

#include "pin.H"
#include <string>
#include <iostream>

using namespace std;

/*!
 * Context change callback.
 */
static void OnContextChange(THREADID threadIndex, 
                  CONTEXT_CHANGE_REASON reason, 
                  const CONTEXT *ctxtFrom,
                  CONTEXT *ctxtTo,
                  INT32 info, 
                  VOID *v)
{
    if (reason == CONTEXT_CHANGE_REASON_EXCEPTION)
    {
        UINT32 exceptionCode = info;
        ADDRINT exceptAddr = PIN_GetContextReg(ctxtFrom, REG_INST_PTR);
        cerr << "CONTEXT_CHANGE_REASON_EXCEPTION: " << 
            "Exception code " << hex << exceptionCode << "." <<
            "Context IP " << hex << exceptAddr << "." <<
            endl; 
    }
}

/*!
 * Instruction analysis routine.
 */
static ADDRINT insCount;
static VOID Count(INS ins, VOID *)
{
    insCount++;
}

/*!
 * Instruction instrumentation routine.
 */
static VOID InstrumentInstruction(INS ins, VOID *)
{
    INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)Count, IARG_END);
}

/*!
 * The main procedure of the tool.
 */
int main(int argc, char *argv[])
{
    PIN_InitSymbols();
    PIN_Init(argc, argv);

    INS_AddInstrumentFunction(InstrumentInstruction, 0);
    PIN_AddContextChangeFunction(OnContextChange, 0);

    PIN_StartProgram();
    return 0;
}
