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
#include <iostream>
#include <fstream>
#include <assert.h>
#include "pin.H"


#include "instrumentation_order_app.h"


static ofstream outstream("instrumentation_order21.out");
    
static VOID WatchRtnReplacement(const CONTEXT *context, THREADID tid, AFUNPTR origWatchRtn, int origArg)
{
    
    outstream << "WatchRtnReplacement" << endl;
    PIN_CallApplicationFunction(context, tid, CALLINGSTD_DEFAULT, origWatchRtn,
                                PIN_PARG(int), origArg, PIN_PARG_END());
}


void Emit(char const* message)
{
    outstream << message << endl;
}

static VOID Trace(TRACE trace, VOID *v)
{
    RTN rtn = TRACE_Rtn(trace);
    
    if (!RTN_Valid(rtn) || RTN_Name(rtn) != watch_rtn)
    {
        return;
    }

    if (TRACE_Address(trace) == RTN_Address(rtn)) 
    {
        // Pin does not support issuing an RTN_ReplaceSignature from the TRACE instrumentation callback
        // This will cause Pin to terminate with an error

        PROTO proto_watch_rtn 
            = PROTO_Allocate(PIN_PARG(void), CALLINGSTD_DEFAULT, "watch_rtn", PIN_PARG(int), PIN_PARG_END());

        RTN_ReplaceSignature(rtn, AFUNPTR(WatchRtnReplacement),
            IARG_PROTOTYPE, proto_watch_rtn,
            IARG_CONST_CONTEXT,
            IARG_THREAD_ID,
            IARG_ORIG_FUNCPTR,
            IARG_FUNCARG_ENTRYPOINT_VALUE, 0,
            IARG_END);
    }

}


static VOID Fini(INT32 code, VOID *v)
{
    outstream.close();
}

int main(int argc, char * argv[])
{
    PIN_InitSymbols();
    PIN_Init(argc, argv);

    TRACE_AddInstrumentFunction(Trace, 0);

    PIN_AddFiniFunction(Fini, 0);

    // Start the program, never returns
    PIN_StartProgram();
    
    return 0;
}
