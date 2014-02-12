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
 * This test tool verifies correctness of Pin's internal exception handling
 * Note - this tool uses Win32 API after initialization phase (after main()). 
 * This practice is unsupported and used here for testing purposes only.
 */

#include "pin.H"
namespace WIND
{
#include <windows.H>
}
#include <string>
#include <iostream>

using namespace std;

//=================================================================================================
/*!
 * Global variables
 */
const INT32 MaxNumThreads = 10000;
volatile BOOL isExpected[MaxNumThreads];
volatile BOOL isGlobalExpected1 = FALSE;
volatile WIND::LPVOID ptr1 = NULL;
volatile BOOL isGlobalExpected2 = FALSE;
volatile WIND::LPVOID ptr2 = NULL;

//=================================================================================================
/*!
 * Exception handlers
 */
EXCEPT_HANDLING_RESULT AnalysisHandler2(THREADID threadIndex, EXCEPTION_INFO * pExceptInfo, 
                                        PHYSICAL_CONTEXT * pPhysCtxt, VOID *v)
{
    cout << "AnalysisHandler2: Caught exception. " << PIN_ExceptionToString(pExceptInfo) << endl;

    // Excercise *PhysicalContext* APIs
    char fpstate[FPSTATE_SIZE];
    PIN_GetPhysicalContextFPState(pPhysCtxt, fpstate);
    PIN_SetPhysicalContextFPState(pPhysCtxt, fpstate);
    ADDRINT ip = PIN_GetPhysicalContextReg(pPhysCtxt, REG_INST_PTR);
    PIN_SetPhysicalContextReg(pPhysCtxt, REG_INST_PTR, ip);
    if(ip != PIN_GetExceptionAddress(pExceptInfo))
    {
        cout << "AnalysisHandler2: Unmatching exception address. Abort" << endl;
        return EHR_UNHANDLED;
    }
    else
    {
        cout << "AnalysisHandler2: Matching exception address. Continue search" << endl;
        return EHR_CONTINUE_SEARCH;
    }
}

EXCEPT_HANDLING_RESULT AnalysisHandler1(THREADID tid, EXCEPTION_INFO * pExceptInfo, 
                                        PHYSICAL_CONTEXT * pPhysCtxt, VOID *v)
{
#if 1
    //Temporary work-around, Remove when Mantis #1986 is resolved
    string str = PIN_ExceptionToString(pExceptInfo);
    printf("AnalysisHandler1: Caught exception. %s\n", str.c_str());
#else
    cout << "AnalysisHandler1: Caught exception. " << PIN_ExceptionToString(pExceptInfo) << endl;
#endif
    if(isExpected[tid])
    {
#if 1
        //Temporary work-around, Remove when Mantis #1986 is resolved
        printf("AnalysisHandler1: Raising exception on behalf of the application\n");
#else
        cout << "AnalysisHandler1: Raising exception on behalf of the application" << endl;
#endif
        isExpected[tid] = FALSE;
        // Raise exception on behalf of the application
        CONTEXT * appCtxt = (CONTEXT *)v;
        ADDRINT faultIp = PIN_GetContextReg(appCtxt, REG_INST_PTR);
        PIN_SetExceptionAddress(pExceptInfo, faultIp);
        PIN_RaiseException(appCtxt, tid, pExceptInfo); //never returns
    }
    return EHR_CONTINUE_SEARCH;
}

EXCEPT_HANDLING_RESULT GlobalHandler2(THREADID threadIndex, EXCEPTION_INFO * pExceptInfo, 
                                      PHYSICAL_CONTEXT * pPhysCtxt, VOID *v)
{
    cout << "GlobalHandler2: Caught exception. " << PIN_ExceptionToString(pExceptInfo) << endl;
    return EHR_CONTINUE_SEARCH;
}

EXCEPT_HANDLING_RESULT GlobalHandler1(THREADID threadIndex, EXCEPTION_INFO * pExceptInfo, 
                                      PHYSICAL_CONTEXT * pPhysCtxt, VOID *v)
{
    cout << "GlobalHandler1: Caught exception. " << PIN_ExceptionToString(pExceptInfo) << endl;
    if(isGlobalExpected1 && (PIN_GetExceptionCode(pExceptInfo) == EXCEPTCODE_RECEIVED_ACCESS_FAULT))
    {
        isGlobalExpected1 = FALSE;
        cout << "GlobalHandler1: Fixing exception and continuing execution" << endl;
        //Fix and continue execution
        WIND::VirtualAlloc(ptr1, 0x1000, MEM_COMMIT, PAGE_READWRITE);
        return EHR_HANDLED; 
    }
    else if(isGlobalExpected2 && (PIN_GetExceptionCode(pExceptInfo) == EXCEPTCODE_RECEIVED_ACCESS_FAULT))
    {
        isGlobalExpected2 = FALSE;
        cout << "GlobalHandler1: Fixing exception and continuing execution" << endl;
        //Fix and continue execution
        WIND::VirtualAlloc(ptr2, 0x1000, MEM_COMMIT, PAGE_READWRITE);
        return EHR_HANDLED; 
    }
    else
    {
        // Message logging
        cout << "GlobalHandler1: Unexpected exception. Abort" << endl;
        // Stop searching for internal handler.
        return EHR_UNHANDLED; 
    }
}

//=================================================================================================
/*!
 * RTN analysis routines.
 */

static VOID IntDivideByZeroException()
{
    volatile int zero = 0;
    volatile int i = 1 / zero;
}

static VOID OnRaiseIntDivideByZeroException(CONTEXT * ctxt, THREADID tid)
{
    PIN_TryStart(tid, AnalysisHandler1, ctxt);

    PIN_TryStart(tid, AnalysisHandler2, ctxt);

    isExpected[tid] = TRUE;
    
    IntDivideByZeroException();
    
    PIN_TryEnd(tid);

    PIN_TryEnd(tid);
}

static VOID OnRaiseFltDivideByZeroException(CONTEXT * ctxt, THREADID tid)
{
    PIN_TryStart(tid, AnalysisHandler1, ctxt);

    {
        PIN_TryStart(tid, AnalysisHandler2, ctxt);

        PIN_TryEnd(tid);
    }

    isExpected[tid] = TRUE;
    
    volatile float zero = 0.0;
    volatile float i = 1.0 / zero;
    
    PIN_TryEnd(tid);  
}

/*!
 * INS analysis routines.
 */
VOID OnIns()
{
    // Generate exception in inlined analysis routine.
    isGlobalExpected2 = TRUE;
    *(int *)ptr2 = 11111;
}

//=================================================================================================
/*!
 * RTN instrumentation routine.
 */
static VOID InstrumentRoutine(RTN rtn, VOID *)
{
    if (RTN_Name(rtn) == "RaiseIntDivideByZeroException")
    {
        PROTO proto = PROTO_Allocate( PIN_PARG(void), CALLINGSTD_DEFAULT,
                                      "RaiseIntDivideByZeroException", PIN_PARG_END() );
        RTN_ReplaceSignature(rtn, AFUNPTR(OnRaiseIntDivideByZeroException),
            IARG_PROTOTYPE, proto, IARG_CONTEXT, IARG_THREAD_ID, IARG_END);
        PROTO_Free(proto);
    }
    else if (RTN_Name(rtn) == "RaiseFltDivideByZeroException")
    {
        PROTO proto = PROTO_Allocate( PIN_PARG(void), CALLINGSTD_DEFAULT,
                                      "RaiseFltDivideByZeroException", PIN_PARG_END() );
        RTN_ReplaceSignature(rtn, AFUNPTR(OnRaiseFltDivideByZeroException),
            IARG_PROTOTYPE, proto, IARG_CONTEXT, IARG_THREAD_ID, IARG_END);
        PROTO_Free(proto);
    }
}

/*!
 * INS instrumentation routine.
 */
VOID Instruction(INS ins, VOID *v)
{
    static bool isFirst = true;
    if(isFirst)
    {
        isFirst = false;
        INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)OnIns, IARG_END);
    }
}

//=================================================================================================
/*!
 * Start function
 */

VOID AppStart(VOID *v)
{
    isGlobalExpected1 = TRUE;
    //Will generate an exception
    *(int *)ptr1 = 12345;
    //Decommit the memory. Subsequent commit will initialize ptr1 range to 0.
    WIND::VirtualFree(ptr1, 0x1000, MEM_DECOMMIT);
}

//=================================================================================================
/*!
 * Fini function
 */

VOID Fini(INT32 code, VOID *v)
{
    isGlobalExpected1 = TRUE;
    //Will generate an exception
    int j = *(int *)ptr1;
    if(j != 0)
    {
        cout <<  "internal_exception_handler : Unexpected value: " << j << endl;
    }
    else
    {
        cout <<  "internal_exception_handler : Completed successfully" << endl;
    }
}

//=================================================================================================
/*!
 * The main procedure of the tool.
 */
int main(int argc, char *argv[])
{
    PIN_InitSymbols();
    PIN_Init(argc, argv);

    PIN_AddInternalExceptionHandler(GlobalHandler1, NULL);
    PIN_AddInternalExceptionHandler(GlobalHandler2, NULL);
    RTN_AddInstrumentFunction(InstrumentRoutine, 0);
    INS_AddInstrumentFunction(Instruction, 0);
    PIN_AddApplicationStartFunction(AppStart, 0);
    PIN_AddFiniFunction(Fini, 0);

    //Reserve memory
    ptr1 = WIND::VirtualAlloc(NULL, 0x1000, MEM_RESERVE, PAGE_READWRITE);
    ptr2 = WIND::VirtualAlloc(NULL, 0x1000, MEM_RESERVE, PAGE_READWRITE);
 
    // Initialize icount[]
    for (INT32 t = 0; t < MaxNumThreads; t++)
    {
        isExpected[t] = FALSE;
    }

    PIN_StartProgram();
    return 0;
}
