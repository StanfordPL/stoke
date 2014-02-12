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
 * This test tool verifies that Pin on Windows correctly handles thread suspension
 * and termination system calls.  The tool must be run with the "suspend_app_win" 
 * application.
 */

#include "pin.H"

namespace WINDOWS
{
#include <windows.h>
}

BOOL FlushHappened;

/*!
 * RTN analysis routines.
 */
static VOID OnIsToolPresent(ADDRINT addrIsTool)
{
    volatile int * pIsTool = reinterpret_cast<volatile int *>(addrIsTool);
    // Set the <isTool> flag in the application
    *pIsTool = 1;
}

static VOID OnSleepInTool(ADDRINT addrInTool)
{
    volatile int * pInTool = reinterpret_cast<volatile int *>(addrInTool);
    // Set the <inTool> flag in the application while sleeping (1 second).
    *pInTool = 1;
    WINDOWS::Sleep(1000);
    *pInTool = 0;
}

static VOID OnDoFlush()
{
    FlushHappened = FALSE;
    CODECACHE_FlushCache();
}

static VOID OnCheckFlush(ADDRINT addrCodeCacheFlushed)
{
    if (FlushHappened)
    {
        *reinterpret_cast<volatile int *>(addrCodeCacheFlushed) = 1;
    }
}

static VOID OnCacheFlush()
{
    FlushHappened = TRUE;
}

/*!
 * RTN instrumentation routine.
 */
static VOID InstrumentRoutine(RTN rtn, VOID *)
{
    if (RTN_Name(rtn) == "IsToolPresent")
    {
        RTN_Open(rtn);
        RTN_InsertCall(rtn, IPOINT_BEFORE, AFUNPTR(OnIsToolPresent), 
            IARG_FUNCARG_ENTRYPOINT_VALUE, 0, IARG_END);
        RTN_Close(rtn);
    }
    else if (RTN_Name(rtn) == "SleepInTool")
    {
        RTN_Open(rtn);
        RTN_InsertCall(rtn, IPOINT_BEFORE, AFUNPTR(OnSleepInTool), 
            IARG_FUNCARG_ENTRYPOINT_VALUE, 0, IARG_END);
        RTN_Close(rtn);
    }
    else if (RTN_Name(rtn) == "DoFlush")
    {
        RTN_Open(rtn);
        RTN_InsertCall(rtn, IPOINT_BEFORE, AFUNPTR(OnDoFlush), IARG_END);
        RTN_Close(rtn);
    }
    else if (RTN_Name(rtn) == "CheckFlush")
    {
        RTN_Open(rtn);
        RTN_InsertCall(rtn, IPOINT_BEFORE, AFUNPTR(OnCheckFlush), IARG_FUNCARG_ENTRYPOINT_VALUE, 0, IARG_END);
        RTN_Close(rtn);
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
    CODECACHE_AddCacheFlushedFunction(OnCacheFlush, 0);

    PIN_StartProgram();
    return 0;
}
