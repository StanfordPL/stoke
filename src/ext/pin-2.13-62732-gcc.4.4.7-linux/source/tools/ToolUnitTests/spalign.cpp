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
 * This test is specific to the Intel(R) 64 architecture.  It verifies that the
 * stack is propertly aligned in analysis routines and call-backs.
 */

#include "pin.H"

extern "C" VOID CheckSPAlign();

static VOID InstrumentTrace(TRACE trace, VOID *v);
static VOID AtTraceOutOfLine();
static ADDRINT AtTraceIf();
static VOID AtEnd(INT32 code, VOID *v);


int main(INT32 argc, CHAR **argv)
{
    CheckSPAlign();
    PIN_Init(argc, argv);

    TRACE_AddInstrumentFunction(InstrumentTrace, 0);
    PIN_AddFiniFunction(AtEnd, 0);

    PIN_StartProgram();
    return 0;
}

static VOID InstrumentTrace(TRACE trace, VOID *v)
{
    CheckSPAlign();

    static int testNum = 0;
    switch (testNum++)
    {
      case 0:
        // Test an out-of-line analysis call.
        //
        TRACE_InsertCall(trace, IPOINT_BEFORE, AFUNPTR(AtTraceOutOfLine), IARG_END);
        break;

      case 1:
        // Test an out-of-line "if/then" call.
        //
        TRACE_InsertIfCall(trace, IPOINT_BEFORE, AFUNPTR(AtTraceIf), IARG_END);
        TRACE_InsertThenCall(trace, IPOINT_BEFORE, AFUNPTR(AtTraceOutOfLine), IARG_END);
        break;


      case 2:
        // Test an inlined analysis call.
        //
        TRACE_InsertCall(trace, IPOINT_BEFORE, AFUNPTR(CheckSPAlign), IARG_END);
        break;

      case 3:
        // Test an "if/then" call where the "then" is inlined.
        //
        TRACE_InsertIfCall(trace, IPOINT_BEFORE, AFUNPTR(AtTraceIf), IARG_END);
        TRACE_InsertThenCall(trace, IPOINT_BEFORE, AFUNPTR(CheckSPAlign), IARG_END);
        break;

     case 4:
        // Test an out-of-line analysis call with context argument
        //
        TRACE_InsertCall(trace, IPOINT_BEFORE, AFUNPTR(AtTraceOutOfLine), IARG_CONTEXT, IARG_END);
        break;

      case 5:
        // Test an out-of-line "if/then" call with context argument
        //
        TRACE_InsertIfCall(trace, IPOINT_BEFORE, AFUNPTR(AtTraceIf), IARG_END);
        TRACE_InsertThenCall(trace, IPOINT_BEFORE, AFUNPTR(AtTraceOutOfLine), IARG_CONTEXT, IARG_END);
        break;


      default:
        testNum = 0;
        break;
    }
}

static VOID AtTraceOutOfLine()
{
    CheckSPAlign();
}

static ADDRINT AtTraceIf()
{
    CheckSPAlign();
    return 1;
}

static VOID AtEnd(INT32 code, VOID *v)
{
    CheckSPAlign();
}
