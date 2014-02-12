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
#include <fstream>
#include <assert.h>
#include "pin.H"

/*
 * Demonstrate the multiversioning of traces to support specialization of instrumentation
 *
 * We instrument a procedure with 2 entry points: red and blue. See
 * redblue.s in the same directory. When we enter from red, we create the
 * red version of instrumentation. When we enter from blue, we create the
 * blue version of instrumentation. The procedure has common code that
 * should be instrumented differently depending on whether we are red or
 * blue.
 *
 * When we see the entry point for red, set the versioning so all targets
 * of this trace to red. When we see blue, we set the versioning of targets
 * to blue. When we see a ret, we clear the versioning.
 *
 * At the entry of a trace, we check the versioning and instrument it
 * appropriately.
 */

ofstream outstream("special.out");
ADDRINT redEnter;
ADDRINT blueEnter;
ADDRINT commonEnter;

char const * redVersion = "red version";
char const * red2Version = "red2 version";
char const * blueVersion = "blue version";

VOID Emit(char * string)
{
    outstream << string << endl;
}

VOID Trace(TRACE trace, VOID *v)
{
    char * version = reinterpret_cast<char*>(TRACE_Version(trace));

    if (TRACE_Address(trace) == redEnter)
    {
        TRACE_InsertCall(trace, IPOINT_BEFORE, AFUNPTR(Emit), IARG_PTR, "Enter red", IARG_END);

        // Targets of this trace will have red instrumentation
        BBL_SetTargetVersion(TRACE_BblHead(trace), reinterpret_cast<ADDRINT>(redVersion));

        // Setting for the 2nd bbl should override previous values
        BBL bbl2 = BBL_Next(TRACE_BblHead(trace));
        ASSERTX(BBL_Valid(bbl2));
        BBL_SetTargetVersion(bbl2, reinterpret_cast<ADDRINT>(red2Version));
    }
    
    if (TRACE_Address(trace) == blueEnter)
    {
        TRACE_InsertCall(trace, IPOINT_BEFORE, AFUNPTR(Emit), IARG_PTR, "Enter blue", IARG_END);

        // Target of this trace will have blue instrumentation
        BBL_SetTargetVersion(TRACE_BblHead(trace), reinterpret_cast<ADDRINT>(blueVersion));
    }
    
    if (TRACE_Address(trace) == commonEnter)
        TRACE_InsertCall(trace, IPOINT_BEFORE, AFUNPTR(Emit), IARG_PTR, "Enter common", IARG_END);

    // A ret from a trace will clear the versioning
    if (version != 0)
    {
        for (BBL bbl = TRACE_BblHead(trace); BBL_Valid(bbl); bbl = BBL_Next(bbl))
        {
            INS tail = BBL_InsTail(bbl);
            if (INS_Valid(tail) && INS_IsRet(tail))
            {
                BBL_SetTargetVersion(bbl, 0);
            }
        }
    }

    // print the versioning of the trace at runtime
    if (version != 0)
        TRACE_InsertCall(trace, IPOINT_BEFORE, AFUNPTR(Emit), IARG_PTR, version, IARG_END);
}

VOID Fini(INT32 code, VOID *v)
{
    outstream.close();
}

#if defined(TARGET_MAC)
const char* red_rtn = "_red";
const char* blue_rtn = "_blue";
const char* common_rtn = "_common";
#else
const char* red_rtn = "red";
const char* blue_rtn = "blue";
const char* common_rtn = "common";
#endif

// Find the entries points
VOID ImageLoad(IMG img, VOID *v)
{
    RTN redRtn = RTN_FindByName(img, red_rtn);
    if (RTN_Valid(redRtn))
        redEnter = RTN_Address(redRtn);
    
    RTN blueRtn = RTN_FindByName(img, blue_rtn);
    if (RTN_Valid(blueRtn))
        blueEnter = RTN_Address(blueRtn);
            
    RTN commonRtn = RTN_FindByName(img, common_rtn);
    if (RTN_Valid(commonRtn))
        commonEnter = RTN_Address(commonRtn);
}

            
int main(int argc, char * argv[])
{
    PIN_InitSymbols();

    // Initialize pin
    PIN_Init(argc, argv);

    // Register Instruction to be called to instrument instructions
    TRACE_AddInstrumentFunction(Trace, 0);

    // Register Fini to be called when the application exits
    PIN_AddFiniFunction(Fini, 0);
    
    IMG_AddInstrumentFunction(ImageLoad, 0);

    // Start the program, never returns
    PIN_StartProgram();
    
    return 0;
}
