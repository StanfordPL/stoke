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
 * This tool calls PIN_ExitApplication.
 * It can be used with any executable, since it just forces exit and checks that
 * relevant callbacks have occurred.
 */
#include <stdio.h>
#include "pin.H"

static KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE, "pintool",
                                   "o", "exitapplication.out", "specify file name");
static KNOB<BOOL>   KnobCallback(KNOB_MODE_WRITEONCE, "pintool",
                                   "c", "0", "exit from a callback");

static FILE * out;

static VOID ThreadStart(THREADID threadIndex, CONTEXT *ctxt, INT32 flags, VOID *v)
{
    PIN_ExitApplication(0);
}

static VOID ThreadFini(THREADID tid, CONTEXT const * c, INT32 code, VOID *v)
{
    fprintf (out, "Thread Fini callback for thread %d\n", tid);
}

static VOID Fini(INT32 code, VOID *v)
{
    fprintf(out, "Process Fini callback\n");
    fclose(out);
}

static VOID MakeExitCallback()
{
    PIN_ExitApplication(0);
}

static VOID InstrumentTrace(TRACE t, VOID *v)
{
    TRACE_InsertCall(t, IPOINT_BEFORE, (AFUNPTR)MakeExitCallback,
                     IARG_END);
}

int main(INT32 argc, CHAR **argv)
{
    PIN_InitSymbols();
    PIN_Init(argc, argv);

    out = fopen(KnobOutputFile.Value().c_str(), "w");

    PIN_AddThreadFiniFunction(ThreadFini, 0);
    PIN_AddFiniFunction(Fini, 0);

    if (KnobCallback)
    {
        PIN_AddThreadStartFunction(ThreadStart, 0);
    }
    else
    {
        TRACE_AddInstrumentFunction(InstrumentTrace, 0);
    }

    // Never returns
    PIN_StartProgram();

    return 0;
}
