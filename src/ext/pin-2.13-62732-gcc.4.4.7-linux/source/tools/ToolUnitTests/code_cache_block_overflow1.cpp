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

// This tool causes one trace to be instrumented with so many calls that it will not
// fit into the default code-cache-block (which is 256K), even when Pin reduces the
// trace to 1 application instruction



ADDRINT addrOfTraceToInstrument = 0;
BOOL traceInstrumented = FALSE;
const UINT32 numCallsToInsert = 4000;
UINT32 numAnalysisCalls = 0;

VOID AnalysisFunc(CONTEXT *ctxt)
{
    numAnalysisCalls++;
}
    
// Pin calls this function every time a new Trace is jitted
VOID Trace(TRACE trace, VOID *v)
{
    if (((!traceInstrumented) && TRACE_NumIns(trace) > 3)
        || addrOfTraceToInstrument==TRACE_Address(trace))
    {
        printf ("Instrumenting Trace\n");
        addrOfTraceToInstrument = TRACE_Address(trace);
        traceInstrumented = TRUE;
        for (UINT32 i=0; i<numCallsToInsert; i++)
        {
            INS_InsertCall(BBL_InsHead(TRACE_BblHead(trace)), IPOINT_BEFORE, (AFUNPTR)AnalysisFunc, IARG_CONST_CONTEXT, IARG_END);
        }
    }
}

// This function is called when the application exits
VOID Fini(INT32 code, VOID *v)
{
    ASSERTX(traceInstrumented);
    printf ("numAnalysisCalls %d\n", numAnalysisCalls);
}

// argc, argv are the entire command line, including pin -t <toolname> -- ...
int main(int argc, char * argv[])
{
    // Initialize pin
    PIN_Init(argc, argv);

    // Register Trace to be called to instrument the trace
    TRACE_AddInstrumentFunction(Trace, 0);

    // Register Fini to be called when the application exits
    PIN_AddFiniFunction(Fini, 0);
    
    // Start the program, never returns
    PIN_StartProgram();
    
    return 0;
}
