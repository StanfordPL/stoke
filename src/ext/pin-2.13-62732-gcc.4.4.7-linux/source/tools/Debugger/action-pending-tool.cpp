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
/*
 * This test only runs with the application "action-pending-app.cpp".  It helps
 * test the PIN_IsActionPending() API.
 */
 
#include <iostream>
#include <cstdlib>
#include "pin.H"

static void InstrumentRtn(RTN, VOID *);
static void OnExit(INT32, VOID *);
static void DoWait(CONTEXT *, THREADID);
static void DoSignal();

static volatile int Signal = 0;
static BOOL FoundToolWait = FALSE;
static BOOL FoundToolSignal = FALSE;


int main(int argc, char * argv[])
{
    PIN_Init(argc, argv);
    PIN_InitSymbols();

    RTN_AddInstrumentFunction(InstrumentRtn, 0);
    PIN_AddFiniFunction(OnExit, 0);
    PIN_StartProgram();
    return 0;
}


static void InstrumentRtn(RTN rtn, VOID *)
{
    if (RTN_Name(rtn) == "ToolWait")
    {
        RTN_Open(rtn);
        RTN_InsertCall(rtn, IPOINT_BEFORE, AFUNPTR(DoWait), IARG_CONTEXT, IARG_THREAD_ID, IARG_END);
        FoundToolWait = TRUE;
        RTN_Close(rtn);
    }
    if (RTN_Name(rtn) == "ToolSignal")
    {
        RTN_Open(rtn);
        RTN_InsertCall(rtn, IPOINT_BEFORE, AFUNPTR(DoSignal), IARG_END);
        FoundToolSignal = TRUE;
        RTN_Close(rtn);
    }
}

static void OnExit(INT32, VOID *)
{
    if (!FoundToolWait || !FoundToolSignal)
    {
        std::cout << "Couldn't add instrumentation routines" << std::endl;
        exit(1);
    }
}

static void DoWait(CONTEXT *ctxt, THREADID tid)
{
    std::cout << "Tool is waiting" << std::endl;
    while (Signal == 0)
    {
        if (PIN_IsActionPending(tid))
            PIN_ExecuteAt(ctxt);
        sched_yield();
    }
    std::cout << "Tool done waiting" << std::endl;
}

static void DoSignal()
{
    std::cout << "Tool about to signal" << std::endl;
    Signal = 1;
}
