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
#include "pin.H"
#include <iostream>
#include <fstream>
#include <stdlib.h>

#if defined(TARGET_MAC)
#define FUNC_PREFIX "_"
#else
#define FUNC_PREFIX
#endif

/* ===================================================================== */
/* Global Variables */
/* ===================================================================== */

std::ofstream TraceFile;

/* ===================================================================== */

VOID MmapArgs(ADDRINT ra, ADDRINT arg1, ADDRINT arg2, ADDRINT arg3, ADDRINT arg4, ADDRINT arg5, ADDRINT arg6)
{
    TraceFile << "mmap(" << arg1 << "," << arg2 << "," << arg3 << "," << arg4 << "," << arg5 << "," << arg6 << ")" << endl;
    TraceFile << "  called from " << ra << endl;
}

VOID CallArgs(ADDRINT arg1)
{
    TraceFile << "Call(" << arg1 << ")" << endl;
}

VOID FoobarArgs(ADDRINT arg1, ADDRINT arg2)
{
    TraceFile << "Foobar(" << arg1 << "," << arg2 << ")" << endl;
    if (arg1 != 0x0eadbeef || arg2 != 0x0eedfeed)
    {
        fprintf(stderr, "Error in arguments\n");
        abort();
    }
}

VOID BazArg(ADDRINT * arg1, ADDRINT * arg2, ADDRINT * arg3)
{
    TraceFile << "Baz(" << *arg1 << "," << *arg2 << "," << *arg3 << ")" << endl;
    *arg1 = 4;
    *arg2 = 5;
    *arg3 = 6;
}

LOCALVAR ADDRINT foobarAddress = 0;

/* ===================================================================== */

VOID Ins(INS ins, VOID *v)
{
    if (!INS_IsCall(ins))
        return;

    if (foobarAddress != 0
        && INS_IsDirectBranchOrCall(ins)
        && INS_DirectBranchOrCallTargetAddress(ins) == foobarAddress)
    {
        TraceFile << "Instrument call to foobar" << endl;
        INS_InsertCall(ins, IPOINT_BEFORE, AFUNPTR(FoobarArgs), IARG_G_ARG0_CALLER, IARG_G_ARG1_CALLER, IARG_END);
    }

    static BOOL first = true;

    if (!first)
        return;

    first = false;

    INS_InsertCall(ins, IPOINT_BEFORE, AFUNPTR(CallArgs),  IARG_G_ARG0_CALLER, IARG_END);
    
}

/* ===================================================================== */

VOID Image(IMG img, VOID *v)
{
    RTN mmapRtn = RTN_FindByName(img, FUNC_PREFIX "mmap");
    if (RTN_Valid(mmapRtn))
    {
        RTN_Open(mmapRtn);
        RTN_InsertCall(mmapRtn, IPOINT_BEFORE, AFUNPTR(MmapArgs), IARG_RETURN_IP, IARG_G_ARG0_CALLEE, IARG_G_ARG1_CALLEE, IARG_G_ARG2_CALLEE, IARG_G_ARG3_CALLEE, IARG_G_ARG4_CALLEE, IARG_G_ARG5_CALLEE, IARG_END);
        RTN_Close(mmapRtn);
    }
    RTN foobarRtn = RTN_FindByName(img, FUNC_PREFIX "foobar");
    if (RTN_Valid(foobarRtn))
    {
        foobarAddress = RTN_Address(foobarRtn);
        
        RTN_Open(foobarRtn);
        RTN_InsertCall(foobarRtn, IPOINT_BEFORE, AFUNPTR(FoobarArgs), IARG_G_ARG0_CALLEE, IARG_G_ARG1_CALLEE, IARG_END);
        RTN_Close(foobarRtn);
    }

    RTN bazRtn = RTN_FindByName(img, FUNC_PREFIX "baz");
    if (RTN_Valid(bazRtn))
    {
        RTN_Open(bazRtn);
        RTN_InsertCall(bazRtn, IPOINT_BEFORE, AFUNPTR(BazArg), IARG_FUNCARG_ENTRYPOINT_REFERENCE, 0, IARG_FUNCARG_ENTRYPOINT_REFERENCE, 1, IARG_FUNCARG_ENTRYPOINT_REFERENCE, 2, IARG_END);
        RTN_Close(bazRtn);
    }

}

/* ===================================================================== */

VOID Fini(INT32 code, VOID *v)
{
    TraceFile.close();
}

/* ===================================================================== */

int main(int argc, char *argv[])
{
    PIN_InitSymbols();
    PIN_Init(argc, argv);

    TraceFile.open("args.out");

    TraceFile << hex;
    TraceFile.setf(ios::showbase);

    IMG_AddInstrumentFunction(Image, 0);
    INS_AddInstrumentFunction(Ins, 0);
    PIN_AddFiniFunction(Fini, 0);

    // Never returns
    PIN_StartProgram();
    
    return 0;
}

/* ===================================================================== */
/* eof */
/* ===================================================================== */
