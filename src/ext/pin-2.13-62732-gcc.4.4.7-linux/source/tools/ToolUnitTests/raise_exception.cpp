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
 * This test tool verifies correctness of the PIN_RaiseException and PIN_SafeCopyEx 
 * API implementation.
 */

#include "pin.H"
#include <string>
#include <iostream>

using namespace std;
KNOB<BOOL> KnobUseIargConstContext(KNOB_MODE_WRITEONCE, "pintool",
                                   "const_context", "0", "use IARG_CONST_CONTEXT");


/*!
 * RTN analysis routines.
 */
static VOID OnRaiseX87OverflowException(const CONTEXT * ctxt, THREADID tid)
{
    // Raise FP_OVERFLOW exception on behalf of the application
    ADDRINT exceptAddr = PIN_GetContextReg(ctxt, REG_INST_PTR);
    EXCEPTION_INFO exceptInfo;
    PIN_InitExceptionInfo(&exceptInfo, EXCEPTCODE_X87_OVERFLOW, exceptAddr);
    PIN_RaiseException(ctxt, tid, &exceptInfo);
}

static VOID OnRaiseSystemException(const CONTEXT * ctxt, THREADID tid, ADDRINT sysExceptCode)
{
    // Raise FP_OVERFLOW exception on behalf of the application
    ADDRINT exceptAddr = PIN_GetContextReg(ctxt, REG_INST_PTR);
    EXCEPTION_INFO exceptInfo;
    PIN_InitWindowsExceptionInfo(&exceptInfo, static_cast<UINT32>(sysExceptCode), exceptAddr);
    PIN_RaiseException(ctxt, tid, &exceptInfo);
}

/*!
 * RTN instrumentation routine.
 */
static VOID InstrumentRoutine(RTN rtn, VOID *)
{
    if (RTN_Name(rtn) == "RaiseX87OverflowException")
    {
        RTN_Open(rtn);
        RTN_InsertCall(rtn, IPOINT_BEFORE, AFUNPTR(OnRaiseX87OverflowException), 
            (KnobUseIargConstContext)?IARG_CONST_CONTEXT:IARG_CONTEXT,
            IARG_THREAD_ID,
            IARG_END);
        RTN_Close(rtn);
    }
    else if (RTN_Name(rtn) == "RaiseSystemException")
    {
        RTN_Open(rtn);
        RTN_InsertCall(rtn, IPOINT_BEFORE, AFUNPTR(OnRaiseSystemException), 
            (KnobUseIargConstContext)?IARG_CONST_CONTEXT:IARG_CONTEXT,
            IARG_THREAD_ID,
            IARG_FUNCARG_ENTRYPOINT_VALUE, 0,
            IARG_END);
        RTN_Close(rtn);
    }
}

VOID Fini(INT32 code, VOID *v)
{
    cerr << "raise_exception[PIN_SafeCopyEx in Fini]" << endl;
    char buf[16];
    EXCEPTION_INFO eceptInfo;

    size_t copySize = PIN_SafeCopyEx(buf, NULL, sizeof(buf), &eceptInfo);
    if (copySize != sizeof(buf))
    {
        EXCEPTION_CODE exceptCode = PIN_GetExceptionCode(&eceptInfo);
        if (PIN_GetExceptionClass(exceptCode) != EXCEPTCLASS_ACCESS_FAULT) 
        {
            cerr << "Exception class != EXCEPTCLASS_ACCESS_FAULT"<< endl; 
            exit(1);
        }

        FAULTY_ACCESS_TYPE accessType = PIN_GetFaultyAccessType(&eceptInfo);
        if ((accessType != FAULTY_ACCESS_READ) && (accessType != FAULTY_ACCESS_TYPE_UNKNOWN)) 
        {
            cerr << "Unexpected FAULTY_ACCESS_TYPE"<< endl; 
            exit(1);
        }

        ADDRINT accessAddr;
        if (PIN_GetFaultyAccessAddress(&eceptInfo, &accessAddr))
        {
            if (accessAddr != NULL)
            {
                cerr << "Unexpected address of the faulty access"<< endl; 
                exit(1);
            }
        }
    }
    else
    {
        cerr <<  "raise_exception : Unexpected return value of PIN_SafeCopyEx " << endl;
    }
    cerr <<  "raise_exception : Completed successfully" << endl;
}

/*!
 * The main procedure of the tool.
 */
int main(int argc, char *argv[])
{
    PIN_InitSymbols();
    PIN_Init(argc, argv);

    RTN_AddInstrumentFunction(InstrumentRoutine, 0);
    PIN_AddFiniFunction(Fini, 0);

    PIN_StartProgram();
    return 0;
}
