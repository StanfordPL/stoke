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
 * This tool demonstrates usage of the internal exception mechanism
 */

#include <stdio.h>
#include "pin.H"
#include "pin_isa.H"
#include <iostream>
#include <fstream>

/* ===================================================================== */
/* Handlers                                                              */
/* ===================================================================== */

EXCEPT_HANDLING_RESULT GlobalHandler(THREADID threadIndex, EXCEPTION_INFO * pExceptInfo, 
                                      PHYSICAL_CONTEXT * pPhysCtxt, VOID *v)
{
    cout << "GlobalHandler: Caught unexpected exception. " << PIN_ExceptionToString(pExceptInfo) << endl;
    return EHR_UNHANDLED;
}


EXCEPT_HANDLING_RESULT DivideHandler(THREADID tid, EXCEPTION_INFO * pExceptInfo, 
                                        PHYSICAL_CONTEXT * pPhysCtxt, VOID *appContextArg)
{
    if(PIN_GetExceptionCode(pExceptInfo) == EXCEPTCODE_INT_DIVIDE_BY_ZERO) 
    {
#if 1
        //Temporary work-around, Remove when Mantis #1986 is resolved
        string str = PIN_ExceptionToString(pExceptInfo);
        printf("GlobalHandler: Caught divide by zero exception. %s\n", str.c_str());
#else
        cout << "GlobalHandler: Caught divide by zero exception. " << PIN_ExceptionToString(pExceptInfo) << endl;
#endif
        CONTEXT * appCtxt = (CONTEXT *)appContextArg;
        ADDRINT faultIp = PIN_GetContextReg(appCtxt, REG_INST_PTR);
        PIN_SetExceptionAddress(pExceptInfo, faultIp);
        PIN_RaiseException(appCtxt, tid, pExceptInfo); //never returns 
    }
    return EHR_CONTINUE_SEARCH;
}

/* ===================================================================== */
/* Analysis routine that emulates div                                    */
/* ===================================================================== */

VOID EmulateIntDivide(ADDRINT * pGdx, ADDRINT * pGax, ADDRINT divisor, CONTEXT * ctxt, THREADID tid)
{
    PIN_TryStart(tid, DivideHandler, ctxt);

    UINT64 dividend = *pGdx;
    dividend <<= 32;
    dividend += *pGax;
    *pGax = dividend / divisor;
    *pGdx = dividend % divisor;

    PIN_TryEnd(tid);
}

VOID EmulateMemDivide(ADDRINT * pGdx, ADDRINT * pGax, ADDRINT *pDivisor, unsigned int opSize, CONTEXT * ctxt, THREADID tid)
{
    ADDRINT divisor = 0;
    PIN_SafeCopy(&divisor, pDivisor, opSize);
    
    PIN_TryStart(tid, DivideHandler, ctxt);

    UINT64 dividend = *pGdx;
    dividend <<= 32;
    dividend += *pGax;
    *pGax = dividend / divisor;
    *pGdx = dividend % divisor;

    PIN_TryEnd(tid);
}


/* ===================================================================== */
/* Instrumentation routine that replaces div instruction                 */
/* ===================================================================== */

VOID InstrumentDivide(INS ins, VOID* v)
{
    if ((INS_Mnemonic(ins) == "DIV") &&
        (INS_OperandIsReg(ins, 0)))
    {
        INS_InsertCall(ins,
                       IPOINT_BEFORE,
                       AFUNPTR(EmulateIntDivide),
                       IARG_REG_REFERENCE, REG_GDX,
                       IARG_REG_REFERENCE, REG_GAX,
                       IARG_REG_VALUE, REG(INS_OperandReg(ins, 0)),
                       IARG_CONTEXT,
                       IARG_THREAD_ID,
                       IARG_END);
        INS_Delete(ins);
    }
    if ((INS_Mnemonic(ins) == "DIV") &&
        (!INS_OperandIsReg(ins, 0)))
    {
        INS_InsertCall(ins,
                    IPOINT_BEFORE,
                    AFUNPTR(EmulateMemDivide),
                    IARG_REG_REFERENCE, REG_GDX,
                    IARG_REG_REFERENCE, REG_GAX,
                    IARG_MEMORYREAD_EA,
                    IARG_MEMORYREAD_SIZE,
                    IARG_CONTEXT,
                    IARG_THREAD_ID,
                    IARG_END);
        INS_Delete(ins);
   }
        
}

/* ===================================================================== */
/* Print Help Message                                                    */
/* ===================================================================== */

INT32 Usage()
{
    cerr << "This tool emulates divide" << endl;
    cerr << KNOB_BASE::StringKnobSummary() << endl;
    return -1;
}

/* ===================================================================== */
/* Main                                                                  */
/* ===================================================================== */

int main(int argc, char * argv[])
{
    if (PIN_Init(argc, argv)) return Usage();
    INS_AddInstrumentFunction(InstrumentDivide, 0);
    PIN_AddInternalExceptionHandler(GlobalHandler, NULL);
    PIN_StartProgram();    // Never returns
    return 0;
}
