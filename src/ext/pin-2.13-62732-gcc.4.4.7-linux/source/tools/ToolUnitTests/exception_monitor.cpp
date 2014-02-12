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

FILE * out;

void BeforePinVerifyInTry ()
{
    fprintf(out, "BeforePinVerifyInTry\n");
    fflush (out);
}

void BeforePinVerifyInCatch ()
{
    fprintf(out, "BeforePinVerifyInCatch\n");
    fflush (out);
}


void BeforePinVerifyAfterCatch ()
{
    fprintf(out, "BeforePinVerifyAfterCatch\n");
    fflush (out);
}


void BeforePinVerifyInDestructor ()
{
    fprintf(out, "BeforePinVerifyInDestructor\n");
    fflush (out);
}

VOID Fini(INT32 code, VOID *v)
{
    fprintf(out, "PinFiniFunction\n");
    fclose(out);
}

static void OnException(THREADID threadIndex, 
                  CONTEXT_CHANGE_REASON reason, 
                  const CONTEXT *ctxtFrom,
                  CONTEXT *ctxtTo,
                  INT32 info, 
                  VOID *v)
{
    if (reason == CONTEXT_CHANGE_REASON_EXCEPTION)
    {
        UINT32 exceptionCode = info;
        // Depending on the system and CRT version, C++ exceptions can be implemented 
        // as kernel- or user-mode- exceptions.
        // This callback does not not intercept user mode exceptions, so we do not 
        // log C++ exceptions to avoid difference in output files.
        if ((exceptionCode >= 0xc0000000) && (exceptionCode <= 0xcfffffff))
        {
            fprintf(out, "Start handling exception. Exception code = 0x%x\n", exceptionCode);
            fflush (out);
        }
    }
}

VOID Image(IMG img, VOID *v)
{

    // hook the functions in the image. If these functions are called then it means
    // that pin has not lost control.
    RTN rtn = RTN_FindByName(img, "PinVerifyInTry");
    if (RTN_Valid(rtn))
    {
        RTN_Open(rtn);
        RTN_InsertCall(rtn, IPOINT_BEFORE, AFUNPTR(BeforePinVerifyInTry), IARG_END);
        RTN_Close(rtn);
    }
    rtn = RTN_FindByName(img, "PinVerifyInCatch");
    if (RTN_Valid(rtn))
    {
        RTN_Open(rtn);
        RTN_InsertCall(rtn, IPOINT_BEFORE, AFUNPTR(BeforePinVerifyInCatch), IARG_END);
        RTN_Close(rtn);
    }
    rtn = RTN_FindByName(img, "PinVerifyAfterCatch");
    if (RTN_Valid(rtn))
    {
        RTN_Open(rtn);
        RTN_InsertCall(rtn, IPOINT_BEFORE, AFUNPTR(BeforePinVerifyAfterCatch), IARG_END);
        RTN_Close(rtn);
    }
    rtn = RTN_FindByName(img, "PinVerifyInDestructor");
    if (RTN_Valid(rtn))
    {
        RTN_Open(rtn);
        RTN_InsertCall(rtn, IPOINT_BEFORE, AFUNPTR(BeforePinVerifyInDestructor), IARG_END);
        RTN_Close(rtn);
    }
}

VOID UseToolStack()
{
    UINT32 local = 0;
    local++;
}

VOID Instruction(INS ins, VOID *v)
{
    INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)UseToolStack, IARG_END);

    // This is added for regression testing  
    // (when executed with win_divide_by_zero_exception application) 
    // multiple instrumentations of branch taken
    for(int i = 0; i < 10; i++)
    {
        if (INS_IsBranchOrCall(ins))
        {
            INS_InsertPredicatedCall(ins, IPOINT_TAKEN_BRANCH, (AFUNPTR)UseToolStack, IARG_END);
        }
    }
}

int main(INT32 argc, CHAR **argv)
{
    out = fopen("exception_monitor.out", "w");

    PIN_InitSymbols();
    PIN_Init(argc, argv);

    INS_AddInstrumentFunction(Instruction, 0);
    PIN_AddContextChangeFunction(OnException, 0);

    IMG_AddInstrumentFunction(Image, 0);

    PIN_AddFiniFunction(Fini, 0);

    // Never returns
    PIN_StartProgram();

    return 0;
}
