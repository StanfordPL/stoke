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
 * This tool only runs with the application "intercept-app.cpp".  It's part
 * of a test for PIN_InterceptDebuggingEvent().
 */
 
#include <iostream>
#include <cstdlib>
#include "pin.H"
#include "memlog.hpp"

static void InstrumentRtn(RTN, VOID *);
static VOID InstrumentIns(INS, VOID *);
static void OnCheckpoint(CONTEXT *);
static void OnMemWrite(ADDRINT, ADDRINT);
static BOOL InterceptBreakpoint(THREADID, DEBUGGING_EVENT, CONTEXT *, VOID *);
static void OnExit(INT32, VOID *);

static BOOL FoundCheckpoint = FALSE;
static BOOL IsCheckpointing = FALSE;
static CONTEXT SavedContext;
static MEMLOG MemLog;


int main(int argc, char * argv[])
{
    PIN_Init(argc, argv);
    PIN_InitSymbols();

    RTN_AddInstrumentFunction(InstrumentRtn, 0);
    INS_AddInstrumentFunction(InstrumentIns, 0);
    PIN_InterceptDebuggingEvent(DEBUGGING_EVENT_BREAKPOINT, InterceptBreakpoint, 0);
    PIN_AddFiniFunction(OnExit, 0);
    PIN_StartProgram();
    return 0;
}


// When the application executes the Checkpoint() function, we take a snapshot of the
// registers and start recording changes to memory.  This allows us to roll the application
// back to the Checkpoint() call later.
//
static void InstrumentRtn(RTN rtn, VOID *)
{
    if (RTN_Name(rtn) == "Checkpoint")
    {
        RTN_Open(rtn);
        RTN_InsertCall(rtn, IPOINT_AFTER, AFUNPTR(OnCheckpoint), IARG_CONTEXT, IARG_END);
        FoundCheckpoint = TRUE;
        RTN_Close(rtn);
    }
}

static void InstrumentIns(INS ins, VOID *)
{
    if (INS_IsMemoryWrite(ins))
    {
        INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)OnMemWrite,
            IARG_MEMORYWRITE_EA, IARG_MEMORYWRITE_SIZE, IARG_END);
    }
}

static void OnCheckpoint(CONTEXT *ctxt)
{
    PIN_SaveContext(ctxt, &SavedContext);
    IsCheckpointing = TRUE;
}

static VOID OnMemWrite(ADDRINT addr, ADDRINT size)
{
    if (IsCheckpointing)
        MemLog.Record(addr, size);
}


// This function is called whenever Pin wants to report a breakpoint event to the
// debugger.
//
static BOOL InterceptBreakpoint(THREADID tid, DEBUGGING_EVENT eventType, CONTEXT *ctxt, VOID *)
{
    if (eventType != DEBUGGING_EVENT_BREAKPOINT)
    {
        std::cout << "FAILURE: Wrong event type in InterceptBreakpoint()" << std::endl;
        std::exit(1);
    }

    ADDRINT pc = PIN_GetContextReg(ctxt, REG_INST_PTR);
    RTN rtn = RTN_FindByAddress(pc);

    // When the application triggers the breakpoint in Breakpoint1(), squash the breakpoint
    // and roll the application back to the Checkpoint() call.  The application will NOT stop
    // at the breakpoint, and it will immediately resume from Checkpoint().
    //
    if (rtn != RTN_Invalid() && RTN_Name(rtn) == "Breakpoint1")
    {
        std::cout << "Intercepting breakpoint #1 at 0x" << std::hex << pc << std::endl;
        PIN_SaveContext(&SavedContext, ctxt);
        PIN_SetContextReg(ctxt, REG_GAX, 1);
        MemLog.Restore();
        IsCheckpointing = FALSE;
        return FALSE;
    }

    // When the application triggers the breakpoint in Breakpoint2(), do not squash the
    // breakpoint, but change the return value from Breakpoint2().  The application will stop
    // in the debugger, and the debugger should see the modified return value.
    //
    if (rtn != RTN_Invalid() && (RTN_Name(rtn) == "Breakpoint2" || RTN_Name(rtn) == "Breakpoint2Label"))
    {
        std::cout << "Intercepting breakpoint #2 at 0x" << std::hex << pc << std::endl;
        std::cout << "RTN=" << RTN_Name(rtn) << std::endl;
        PIN_SetContextReg(ctxt, REG_GAX, 1);
        return TRUE;
    }

    std::cout << "Skipping breakpoint at 0x" << std::hex << pc << ", RTN=" << RTN_Name(rtn) << std::endl;
    return TRUE;
}

static void OnExit(INT32, VOID *)
{
    if (!FoundCheckpoint)
    {
        std::cout << "FAILURE: Couldn't add instrumentation routines" << std::endl;
        std::exit(1);
    }
}
