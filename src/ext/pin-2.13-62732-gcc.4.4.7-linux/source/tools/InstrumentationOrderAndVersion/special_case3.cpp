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

/*
 * Demonstrate the multiversioning of traces to support specialization of
 * instrumentation
 *
 * There will be two instrumented copies of watch_rtn: heavyweight and
 * lightweight instrumentation.  The decision about what type of
 * instrumentation to execute depends on the value of the first argument to
 * the rtn. When it is >= 0, we use heavyweight, otherwise lightweight. If
 * we exit watch_rtn, we reset the instrumentation to lightweight.
 *
 */

#include "instrumentation_order_app.h"

enum 
{
    VERSION_BASE,
    VERSION_1,
    VERSION_2
};

static ofstream outstream("special_case3.out");
    
/*
 * If the first argument is >= 0, return 1, indicating we should switch to
 * heavyweight instrumentation
 */
static int select_version(int arg)
{
    outstream << "In watch_rtn, arg: " << arg << endl;
    return arg;
}

static REG version_reg;

void Emit(char const* message)
{
    outstream << message << endl;
}

static VOID Trace(TRACE trace, VOID *v)
{
    RTN rtn = TRACE_Rtn(trace);
    
    ADDRINT version = TRACE_Version(trace);
    // If we are not in watch_rtn, switch back to base version
    if (!RTN_Valid(rtn) || RTN_Name(rtn) != watch_rtn)
    {
        if (version != VERSION_BASE)
            BBL_SetTargetVersion(TRACE_BblHead(trace), VERSION_BASE);
        return;
    }

    if (TRACE_Address(trace) == RTN_Address(rtn)) {
        INS ins = BBL_InsHead(TRACE_BblHead(trace));
        if (version == VERSION_BASE) 
        {
            // version_reg is used to select the version, use the first
            // argument of watch_rtn to set it
            INS_InsertCall(ins, IPOINT_BEFORE, AFUNPTR(select_version),
                           IARG_FUNCARG_ENTRYPOINT_VALUE, 0,
                           IARG_RETURN_REGS, version_reg,
                           IARG_CALL_ORDER, CALL_ORDER_FIRST,
                           IARG_END);
        }
    }

    INS ins = BBL_InsHead(TRACE_BblHead(trace));
    for (BBL bbl = TRACE_BblHead(trace); BBL_Valid(bbl); bbl = BBL_Next(bbl)) 
    {
        // Instrumentation depends on version
        // These instrumentations occur after the following version instrumentation
        // (i.e. the instrumentation inserted by the below INS_InsertVersionCase calls)
        // This is due to the use of IARG_CALL_ORDER, CALL_ORDER_FIRST in the below
        // INS_InsertVersionCase calls.
        switch(version) {
          case VERSION_BASE:
            INS_InsertCall(ins, IPOINT_BEFORE, AFUNPTR(Emit),
                             IARG_PTR, "version base", IARG_END);
            break;
          case VERSION_1:
            INS_InsertCall(ins, IPOINT_BEFORE, AFUNPTR(Emit),
                             IARG_PTR, "version 1", IARG_END);
            break;
          case VERSION_2:
            INS_InsertCall(ins, IPOINT_BEFORE, AFUNPTR(Emit),
                             IARG_PTR, "version 2", IARG_END);
            break;
          default:
            assert(0);
            break;
        }
    }

    // If we are at the entry point, select the version
    if (TRACE_Address(trace) == RTN_Address(rtn)) {
        INS ins = BBL_InsHead(TRACE_BblHead(trace));

        // IF we are in the base version, decide if we should go to the
        // other versions
        if (version == VERSION_BASE) 
        {
            INS_InsertVersionCase(ins, version_reg, 10, VERSION_1, IARG_CALL_ORDER, CALL_ORDER_FIRST, IARG_END);
            INS_InsertVersionCase(ins, version_reg, 20, VERSION_2, IARG_CALL_ORDER, CALL_ORDER_FIRST, IARG_END);
            printf ("Instrumentation at %p\n", reinterpret_cast<void *>(INS_Address(ins)));
        }
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

    // Scratch register used to select
    // instrumentation version.
    version_reg = PIN_ClaimToolRegister();

    TRACE_AddInstrumentFunction(Trace, 0);

    PIN_AddFiniFunction(Fini, 0);

    // Start the program, never returns
    PIN_StartProgram();
    
    return 0;
}
