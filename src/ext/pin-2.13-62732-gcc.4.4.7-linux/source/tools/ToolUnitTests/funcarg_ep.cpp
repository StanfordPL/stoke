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
/* ===================================================================== */
/*
  @ORIGINAL_AUTHOR: Elena Demikhovsky
*/

/* ===================================================================== */
/*! @file
 * This test checks callback insertion with IARG_FUNCARG_ENTRYPOINT_VALUE argument.
 * The size of argument passed to original function is specified in prototype.
 * Pin should remove garbage from stack is original parameter is smaller than ADDRINT.
 */

#include <iostream>
#include <fstream>
#include "pin.H"

using namespace std;

KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE, "pintool",
    "o", "funcarg_ep.out", "specify file name");
ofstream TraceFile;

static VOID OnImage(IMG, VOID *);
static VOID Check(ADDRINT, ADDRINT, ADDRINT, ADDRINT, ADDRINT, ADDRINT, ADDRINT, ADDRINT,
                  ADDRINT, ADDRINT, ADDRINT, ADDRINT, ADDRINT);
static VOID CheckUnsigned(ADDRINT, ADDRINT, ADDRINT, ADDRINT, ADDRINT, ADDRINT, ADDRINT, ADDRINT,
                  ADDRINT, ADDRINT, ADDRINT, ADDRINT, ADDRINT);
static VOID FooReplacement(CONTEXT * ctxt, AFUNPTR orgFoo1, long, long, long, long, long, long, long, long,
                           long, long, long, long, long);


int main(int argc, char * argv[])
{
    PIN_InitSymbols();
    PIN_Init(argc, argv);
    
    TraceFile.open(KnobOutputFile.Value().c_str());

    IMG_AddInstrumentFunction(OnImage, 0);

    PIN_StartProgram();
    return 0;
}

static VOID OnImage(IMG img, VOID *)
{
    PROTO protoUnsigned = PROTO_Allocate(PIN_PARG(void), CALLINGSTD_DEFAULT, "Foo2",
                            PIN_PARG(unsigned int),
                            PIN_PARG(unsigned short),
                            PIN_PARG(unsigned char),
                            PIN_PARG(unsigned int),
                            PIN_PARG(unsigned int),
                            PIN_PARG(unsigned int),
                            PIN_PARG(unsigned int),
                            PIN_PARG(unsigned int),
                            PIN_PARG(unsigned int),
                            PIN_PARG(unsigned int),
                            PIN_PARG(unsigned short),
                            PIN_PARG(unsigned int),
                            PIN_PARG(unsigned char),
                            PIN_PARG_END());
    PROTO protoSigned = PROTO_Allocate(PIN_PARG(void), CALLINGSTD_DEFAULT, "Foo",
                                 PIN_PARG(int),
                                 PIN_PARG(short),
                                 PIN_PARG(char),
                                 PIN_PARG(int),
                                 PIN_PARG(int),
                                 PIN_PARG(int),
                                 PIN_PARG(int),
                                 PIN_PARG(int),
                                 PIN_PARG(int),
                                 PIN_PARG(int),
                                 PIN_PARG(short),
                                 PIN_PARG(int),
                                 PIN_PARG(char),
                                 PIN_PARG_END());
    RTN rtn = RTN_FindByName(img, "Foo");
    if (RTN_Valid(rtn))
    {
        RTN_Open(rtn);
        RTN_InsertCall(rtn, IPOINT_BEFORE, AFUNPTR(Check),
            IARG_PROTOTYPE, protoSigned,
            IARG_FUNCARG_ENTRYPOINT_VALUE, 0,
            IARG_FUNCARG_ENTRYPOINT_VALUE, 1,
            IARG_FUNCARG_ENTRYPOINT_VALUE, 2,
            IARG_FUNCARG_ENTRYPOINT_VALUE, 3,
            IARG_FUNCARG_ENTRYPOINT_VALUE, 4,
            IARG_FUNCARG_ENTRYPOINT_VALUE, 5,
            IARG_FUNCARG_ENTRYPOINT_VALUE, 6,
            IARG_FUNCARG_ENTRYPOINT_VALUE, 7,
            IARG_FUNCARG_ENTRYPOINT_VALUE, 8,
            IARG_FUNCARG_ENTRYPOINT_VALUE, 9,
            IARG_FUNCARG_ENTRYPOINT_VALUE, 10,
            IARG_FUNCARG_ENTRYPOINT_VALUE, 11,
            IARG_FUNCARG_ENTRYPOINT_VALUE, 12,
            IARG_END);
        RTN_Close(rtn);
    }
    rtn = RTN_FindByName(img, "Foo1");
    if (RTN_Valid(rtn))
    {
        RTN_ReplaceSignature(rtn, AFUNPTR(FooReplacement),
            IARG_PROTOTYPE, protoSigned, 
            IARG_CONTEXT, IARG_ORIG_FUNCPTR,
            IARG_FUNCARG_ENTRYPOINT_VALUE, 0,
            IARG_FUNCARG_ENTRYPOINT_VALUE, 1,
            IARG_FUNCARG_ENTRYPOINT_VALUE, 2,
            IARG_FUNCARG_ENTRYPOINT_VALUE, 3,
            IARG_FUNCARG_ENTRYPOINT_VALUE, 4,
            IARG_FUNCARG_ENTRYPOINT_VALUE, 5,
            IARG_FUNCARG_ENTRYPOINT_VALUE, 6,
            IARG_FUNCARG_ENTRYPOINT_VALUE, 7,
            IARG_FUNCARG_ENTRYPOINT_VALUE, 8,
            IARG_FUNCARG_ENTRYPOINT_VALUE, 9,
            IARG_FUNCARG_ENTRYPOINT_VALUE, 10,
            IARG_FUNCARG_ENTRYPOINT_VALUE, 11,
            IARG_FUNCARG_ENTRYPOINT_VALUE, 12,
            IARG_END);
    }
    rtn = RTN_FindByName(img, "Foo2");
    if (RTN_Valid(rtn))
    {
        RTN_Open(rtn);
        RTN_InsertCall(rtn, IPOINT_BEFORE, AFUNPTR(CheckUnsigned),
                       IARG_PROTOTYPE, protoUnsigned,
                       IARG_FUNCARG_ENTRYPOINT_VALUE, 0,
                       IARG_FUNCARG_ENTRYPOINT_VALUE, 1,
                       IARG_FUNCARG_ENTRYPOINT_VALUE, 2,
                       IARG_FUNCARG_ENTRYPOINT_VALUE, 3,
                       IARG_FUNCARG_ENTRYPOINT_VALUE, 4,
                       IARG_FUNCARG_ENTRYPOINT_VALUE, 5,
                       IARG_FUNCARG_ENTRYPOINT_VALUE, 6,
                       IARG_FUNCARG_ENTRYPOINT_VALUE, 7,
                       IARG_FUNCARG_ENTRYPOINT_VALUE, 8,
                       IARG_FUNCARG_ENTRYPOINT_VALUE, 9,
                       IARG_FUNCARG_ENTRYPOINT_VALUE, 10,
                       IARG_FUNCARG_ENTRYPOINT_VALUE, 11,
                       IARG_FUNCARG_ENTRYPOINT_VALUE, 12,
                       IARG_END);
        RTN_Close(rtn);
    }

    PROTO_Free(protoSigned);
    PROTO_Free(protoUnsigned);
}

static VOID Check(ADDRINT x1, ADDRINT x2, ADDRINT x3, ADDRINT x4, ADDRINT x5, ADDRINT x6, ADDRINT x7, ADDRINT x8,
    ADDRINT x9, ADDRINT x10, ADDRINT x11, ADDRINT x12, ADDRINT x13)
{
    TraceFile << "In callback (signed): " << std::endl;
    TraceFile << "Tool x1 " << hex << " 0x" << x1 << std::endl;
    TraceFile << "Tool x2 " << hex << " 0x" << x2 << std::endl;
    TraceFile << "Tool x3 " << hex << " 0x" << x3 << std::endl;
    TraceFile << "Tool x4 " << hex << " 0x" << x4 << std::endl;
    TraceFile << "Tool x5 " << hex << " 0x" << x5 << std::endl;
    TraceFile << "Tool x6 " << hex << " 0x" << x6 << std::endl;
    TraceFile << "Tool x7 " << hex << " 0x" << x7 << std::endl;
    TraceFile << "Tool x8 " << hex << " 0x" << x8 << std::endl;
    TraceFile << "Tool x9 " << hex << " 0x" << x9 << std::endl;
    TraceFile << "Tool x10 " << hex << " 0x" << x10 << std::endl;
    TraceFile << "Tool x11 " << hex << " 0x" << x11 << std::endl;
    TraceFile << "Tool x12 " << hex << " 0x" << x12 << std::endl;
    TraceFile << "Tool x13 " << hex << " 0x" << x13 << std::endl;
}

static VOID CheckUnsigned(ADDRINT x1, ADDRINT x2, ADDRINT x3, ADDRINT x4, ADDRINT x5, ADDRINT x6, ADDRINT x7, ADDRINT x8,
                  ADDRINT x9, ADDRINT x10, ADDRINT x11, ADDRINT x12, ADDRINT x13)
{
    TraceFile << "In callback (unsigned): " << std::endl;
    TraceFile << "Tool x1 " << hex << " 0x" << x1 << std::endl;
    TraceFile << "Tool x2 " << hex << " 0x" << x2 << std::endl;
    TraceFile << "Tool x3 " << hex << " 0x" << x3 << std::endl;
    TraceFile << "Tool x4 " << hex << " 0x" << x4 << std::endl;
    TraceFile << "Tool x5 " << hex << " 0x" << x5 << std::endl;
    TraceFile << "Tool x6 " << hex << " 0x" << x6 << std::endl;
    TraceFile << "Tool x7 " << hex << " 0x" << x7 << std::endl;
    TraceFile << "Tool x8 " << hex << " 0x" << x8 << std::endl;
    TraceFile << "Tool x9 " << hex << " 0x" << x9 << std::endl;
    TraceFile << "Tool x10 " << hex << " 0x" << x10 << std::endl;
    TraceFile << "Tool x11 " << hex << " 0x" << x11 << std::endl;
    TraceFile << "Tool x12 " << hex << " 0x" << x12 << std::endl;
    TraceFile << "Tool x13 " << hex << " 0x" << x13 << std::endl;
}

static VOID FooReplacement(CONTEXT * ctxt, AFUNPTR orgFoo1, long x1, long x2, long x3, long x4, long x5, long x6, long x7, long x8,
                           long x9, long x10, long x11, long x12, long x13)
{
    TraceFile << hex << "In replacement (signed): " << std::endl;
    TraceFile << "Tool x1 " << dec << x1 << std::endl;
    TraceFile << "Tool x2 " << dec << x2 << std::endl;
    TraceFile << "Tool x3 " << dec << x3 << std::endl;
    TraceFile << "Tool x4 " << dec << x4 << std::endl;
    TraceFile << "Tool x5 " << dec << x5 << std::endl;
    TraceFile << "Tool x6 " << dec << x6 << std::endl;
    TraceFile << "Tool x7 " << dec << x7 << std::endl;
    TraceFile << "Tool x8 " << dec << x8 << std::endl;
    TraceFile << "Tool x9 " << dec << x9 << std::endl;
    TraceFile << "Tool x10 " << dec << x10 << std::endl;
    TraceFile << "Tool x11 " << dec << x11 << std::endl;
    TraceFile << "Tool x12 " << dec << x12 << std::endl;
    TraceFile << "Tool x13 " << dec << x13 << std::endl;
    
    ADDRINT res;
    
    PIN_CallApplicationFunction( ctxt, PIN_ThreadId(),
                                 CALLINGSTD_DEFAULT, orgFoo1, 
                                 PIN_PARG(long), &res,
                                 PIN_PARG(int), x1, PIN_PARG(short), x2, PIN_PARG(char), x3, 
                                 PIN_PARG(int), x4, PIN_PARG(int), x5, PIN_PARG(int), x6,
                                 PIN_PARG(int), x7, PIN_PARG(int), x8, PIN_PARG(int), x9, 
                                 PIN_PARG(int), x10, PIN_PARG(short), x11, PIN_PARG(int), x12, 
                                 PIN_PARG(char), x13, PIN_PARG_END());
    
}

