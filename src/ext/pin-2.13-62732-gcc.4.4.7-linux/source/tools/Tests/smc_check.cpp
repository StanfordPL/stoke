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
//
// This tool counts the number of SMC traces whose code has been modified
// by the running application
//

#include <stdio.h>
#include <iostream>
#include <memory.h>
#include <string.h>
#include <stdlib.h>
#include "pin.H"

// The running count of SMC traces
UINT64 smcCount = 0;


// This function is called before every trace is executed
VOID DoSmcCheck(VOID * traceAddr,
                VOID * traceCopyAddr,
                USIZE traceSize,
                CONTEXT * ctxP)
{
    if (memcmp(traceAddr, traceCopyAddr, traceSize) != 0)
    {
        smcCount++;
        free(traceCopyAddr);
        CODECACHE_InvalidateTraceAtProgramAddress((ADDRINT)traceAddr);
        PIN_ExecuteAt(ctxP);
    }
}

// Pin calls this function every time a new trace is encountered
VOID InstrumentTrace(TRACE trace, VOID *v)
{
    VOID *  traceAddr;
    VOID *  traceCopyAddr;
    USIZE traceSize;
    
    traceAddr = (VOID *)TRACE_Address(trace);

#if 0
    if (traceAddr < (void*)0xbf000000)
        return;
    fprintf(stderr,"Instrumenting trace at %p\n",traceAddr);
#endif
    
    traceSize = TRACE_Size(trace);
    traceCopyAddr = malloc(traceSize);

    if (traceCopyAddr != 0) 
    {
        memcpy(traceCopyAddr, traceAddr, traceSize);
        // Insert a call to DoSmcCheck before every trace
        TRACE_InsertCall(trace, IPOINT_BEFORE, (AFUNPTR)DoSmcCheck,   
                         IARG_PTR, traceAddr,
                         IARG_PTR, traceCopyAddr,
                         IARG_UINT32 , traceSize,
                         IARG_CONTEXT,
                         IARG_END);
    }
}

// This function is called when the application exits
// It prints the SMC trace counter
VOID Fini(INT32 code, VOID *v)
{
    std::cerr << "SMC Count = " << smcCount << endl;
}

// argc, argv are the entire command line, including pin -t <toolname> -- ...
int main(int argc, char * argv[])
{

    // Initialize pin
    PIN_Init(argc, argv);

    // Register InstrumentTrace function
    TRACE_AddInstrumentFunction(InstrumentTrace, 0);

    // Register application exit call back
    PIN_AddFiniFunction(Fini, 0);
    
    // Start the program, never returns
    PIN_StartProgram();
    
    return 0;
}


