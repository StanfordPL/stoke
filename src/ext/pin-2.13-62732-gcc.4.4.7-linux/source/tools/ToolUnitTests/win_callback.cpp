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
 * This test tool verifies that Pin correctly handles Windows callbacks.
 * It also tests Pin_CallApplicationFunction API that is used within Windows callbacks.
 * The tool must be run with the "win_callback_app" application.
 */

#include "pin.H"
#include <string>
#include <iostream>

/*!
 * RTN replacement routine.
 */
static VOID MySyscallInCallback(CONTEXT * ctxt, AFUNPTR pf)
{
    cout << "[win_callback] Calling SyscallInCallback() at " << hex << (VOID *)pf << endl;

    PIN_CallApplicationFunction(ctxt, PIN_ThreadId(), CALLINGSTD_DEFAULT, pf, PIN_PARG_END());

    cout << "Returned from SyscallInCallback()" << endl;
}

/*!
 * RTN instrumentation routine.
 */
static VOID InstrumentRoutine(RTN rtn, VOID *)
{
    if (RTN_Name(rtn) == "SyscallInCallback")
    {
        cout << "[win_callback] Replacing " << RTN_Name(rtn) << endl;

        PROTO proto = PROTO_Allocate(PIN_PARG(void), CALLINGSTD_DEFAULT, "SyscallInCallback", PIN_PARG_END());

        RTN_ReplaceSignature(
            rtn, AFUNPTR(MySyscallInCallback),
            IARG_PROTOTYPE, proto,
            IARG_CONTEXT,
            IARG_ORIG_FUNCPTR,
            IARG_END);

        PROTO_Free(proto);
    }
}

/*
 * CONTEXT_CHANGE notification
 */
static void OnInterrupt(THREADID threadIndex, 
                       CONTEXT_CHANGE_REASON reason, 
                       const CONTEXT *ctxtFrom,
                       CONTEXT *ctxtTo,
                       INT32 info, 
                       VOID *v)
{
    if (reason == CONTEXT_CHANGE_REASON_CALLBACK)
    {
        cout << "[win_callback] CONTEXT_CHANGE_REASON_CALLBACK" << endl;
    }
}

/*!
 * The main procedure of the tool.
 */
int main(int argc, char *argv[])
{
    PIN_InitSymbols();
    PIN_Init(argc, argv);

    RTN_AddInstrumentFunction(InstrumentRoutine, 0);
    PIN_AddContextChangeFunction(OnInterrupt, 0);

    PIN_StartProgram();
    return 0;
}
