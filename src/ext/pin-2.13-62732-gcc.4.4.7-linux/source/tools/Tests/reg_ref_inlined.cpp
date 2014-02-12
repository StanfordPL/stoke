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
#include <iostream>
#include <fstream>
#include <stdlib.h>
#include <stdio.h>
#include "pin.H"




ADDRINT capturedVal;
ADDRINT capturedConstVal;
ADDRINT capturedRegEspBefore;

BOOL badEsp = FALSE;

// Make it inlineable
ADDRINT CaptureRefWithReturnReg(ADDRINT *ref,  ADDRINT *constRef)
{
    capturedVal = *ref;
    capturedConstVal = *constRef;
    return (*constRef);
}

VOID CaptureRef(ADDRINT *ref,  ADDRINT *constRef)
{
    capturedVal = *ref;
    capturedConstVal = *constRef;
}

VOID CaptureEspBefore(ADDRINT regEsp)
{
    capturedRegEspBefore = regEsp;
}

int haveBadEsp;
VOID CaptureEspAfter(ADDRINT regEsp)
{
    haveBadEsp = (regEsp!=capturedRegEspBefore); 
    badEsp |= haveBadEsp;
}

    
VOID Instruction(INS ins, VOID *v)
{
    
        INS_InsertCall(ins, IPOINT_BEFORE, AFUNPTR(CaptureEspBefore),
                       IARG_REG_VALUE, REG_STACK_PTR,
                       IARG_END);
        INS_InsertCall(ins, IPOINT_BEFORE, AFUNPTR(CaptureRefWithReturnReg),
                     IARG_REG_REFERENCE, REG_GAX,
                     IARG_REG_CONST_REFERENCE, REG_GAX,
                     IARG_RETURN_REGS, REG_GAX,
                     IARG_END);
        INS_InsertCall(ins, IPOINT_BEFORE, AFUNPTR(CaptureRef),
                     IARG_REG_REFERENCE, REG_GAX,
                     IARG_REG_CONST_REFERENCE, REG_GAX,
                     IARG_END);
        INS_InsertCall(ins, IPOINT_BEFORE, AFUNPTR(CaptureEspAfter),
                       IARG_REG_VALUE, REG_STACK_PTR,
                       IARG_END);

}

VOID Fini(INT32 code, VOID *v)
{
    if (badEsp)
    {
        printf ("***ERROR is esp value\n");
        exit(-1);
    }
}

int main(INT32 argc, CHAR **argv)
{
    PIN_Init(argc, argv);
    
    INS_AddInstrumentFunction(Instruction, 0);

     PIN_AddFiniFunction(Fini, 0);
    
    // Never returns
    PIN_StartProgram();
    
    return 0;
}
