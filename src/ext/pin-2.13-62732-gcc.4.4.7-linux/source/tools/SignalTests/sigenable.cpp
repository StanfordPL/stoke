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
 * This tool demonstrates a technique of changing instrumentation
 * phases in a tool by sending the process a Unix signal.  This tool
 * hard-codes the SIGUSR2 signal.  In reality, you must choose a signal
 * that the application is not also using.
 */

#include <signal.h>
#include <iostream>
#include "pin.H"

#if defined(TARGET_MAC)
#define NAME(S) "_" S
#else
#define NAME(S) S
#endif

BOOL SignalHandler(THREADID, INT32, CONTEXT *, BOOL, const EXCEPTION_INFO *, void *);
VOID Image(IMG, VOID *);
VOID Trace(TRACE, VOID *);
VOID CheckPC(ADDRINT);


BOOL EnableInstrumentation = FALSE;
ADDRINT AddrNotTraced = 0;
ADDRINT AddrIsTraced = 0;


int main(int argc, char * argv[])
{
    PIN_Init(argc, argv);
    PIN_InitSymbols();

    PIN_InterceptSignal(SIGUSR2, SignalHandler, 0);
    PIN_UnblockSignal(SIGUSR2, TRUE);
    IMG_AddInstrumentFunction(Image, 0);
    TRACE_AddInstrumentFunction(Trace, 0);

    PIN_StartProgram();
    return 0;
}


BOOL SignalHandler(THREADID, INT32, CONTEXT *, BOOL, const EXCEPTION_INFO *, void *)
{
    // If we receive the signal, enable instrumentation.  We call
    // PIN_RemoveInstrumentation() to remove any existing instrumentation
    // from Pin's code cache.
    //
    EnableInstrumentation = TRUE;
    PIN_RemoveInstrumentation();

    // Tell Pin NOT to pass the signal to the application.
    //
    return FALSE;
}


VOID Image(IMG img, VOID *)
{
    RTN rtn = RTN_FindByName(img, NAME("NotTraced"));
    if (RTN_Valid(rtn))
        AddrNotTraced = RTN_Address(rtn);

    rtn = RTN_FindByName(img, NAME("IsTraced"));
    if (RTN_Valid(rtn))
        AddrIsTraced = RTN_Address(rtn);
}


VOID Trace(TRACE trace, VOID *)
{
    if (!EnableInstrumentation)
        return;

    for (BBL bbl = TRACE_BblHead(trace);  BBL_Valid(bbl);  bbl = BBL_Next(bbl))
        BBL_InsertCall(bbl, IPOINT_BEFORE, AFUNPTR(CheckPC), IARG_INST_PTR, IARG_END);
}


VOID CheckPC(ADDRINT pc)
{
    if (pc == AddrNotTraced)
        std::cout << "Traced NotTraced()" << std::endl;
    if (pc == AddrIsTraced)
        std::cout << "Traced IsTraced()" << std::endl;
}
