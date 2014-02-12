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
#include <string.h>

using namespace std;

KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE,         "pintool",
                            "o", "context.out", "specify output file name");

ofstream out;

ADDRINT BeforeIP = 0x0;

int failure = 0;

#if defined(TARGET_IA32) || defined(TARGET_IA32E)

VOID PrintContext(const CONTEXT * ctxt)
{
    out << "ip:    " << PIN_GetContextReg( ctxt, REG_INST_PTR ) << endl;
    out << "gax:   " << PIN_GetContextReg( ctxt, REG_GAX ) << endl;
    out << "gbx:   " << PIN_GetContextReg( ctxt, REG_GBX ) << endl;
    out << "gcx:   " << PIN_GetContextReg( ctxt, REG_GCX ) << endl;
    out << "gdx:   " << PIN_GetContextReg( ctxt, REG_GDX ) << endl;
    out << "gsi:   " << PIN_GetContextReg( ctxt, REG_GSI ) << endl;
    out << "gdi:   " << PIN_GetContextReg( ctxt, REG_GDI ) << endl;
    out << "gbp:   " << PIN_GetContextReg( ctxt, REG_GBP ) << endl;
    out << "sp:    " << PIN_GetContextReg( ctxt, REG_ESP ) << endl;

    out << "ss:    " << PIN_GetContextReg( ctxt, REG_SEG_SS ) << endl;
    out << "cs:    " << PIN_GetContextReg( ctxt, REG_SEG_CS ) << endl;
    out << "ds:    " << PIN_GetContextReg( ctxt, REG_SEG_DS ) << endl;
    out << "es:    " << PIN_GetContextReg( ctxt, REG_SEG_ES ) << endl;
    out << "fs:    " << PIN_GetContextReg( ctxt, REG_SEG_FS ) << endl;
    out << "gs:    " << PIN_GetContextReg( ctxt, REG_SEG_GS ) << endl;
    out << "gflags:" << PIN_GetContextReg( ctxt, REG_GFLAGS ) << endl;
    out << endl;
}

VOID CheckFpState(CONTEXT * ctxt)
{
    FPSTATE fpState;
    FPSTATE fpStateCopy;
    PIN_GetContextFPState(ctxt, &fpState);
    PIN_SetContextFPState(ctxt, &fpState);
    PIN_GetContextFPState(ctxt, &fpStateCopy);
    if (memcmp(&fpState, &fpStateCopy, FPSTATE_SIZE) != 0)
    {
        failure++;
        out << "Failure!! Mismatch in FP state"  << endl;
    }
}

#else

VOID PrintContext(const CONTEXT * ctxt) {}
VOID CheckFpState(CONTEXT * ctxt) {}

#endif

VOID SetBeforeContext(CONTEXT * ctxt)
{
    BeforeIP = (ADDRINT)PIN_GetContextReg( ctxt, REG_INST_PTR);
    CheckFpState(ctxt);
}


VOID ShowAfterContext( const CONTEXT * ctxt)
{
    ADDRINT AfterIP = (ADDRINT)PIN_GetContextReg( ctxt, REG_INST_PTR );

    if ( BeforeIP == AfterIP )
      {
	failure++;
        out << "Failure!! Before Context IP = " << BeforeIP << ", After Context IP = " << AfterIP << endl;
      }
    else
      {
	//        out << "Success!! Before Context IP = " << BeforeIP << ", After Context IP = " << AfterIP << endl;
      }
}


VOID ShowTakenBrContext( const CONTEXT * ctxt)
{
    ADDRINT TakenIP = (ADDRINT)PIN_GetContextReg( ctxt, REG_INST_PTR );

    if ( BeforeIP == TakenIP )
      {
	failure++;
        out << "Failure!! Before Context IP = " << BeforeIP << ", Branch Taken Context IP = " << TakenIP << endl;
      }
    else
      {
      //        out << "Success!! Before Context IP = " << BeforeIP << ", Branch Taken Context IP = " << TakenIP << endl;
      }
}


VOID ShowTakenIndirBrContext( const CONTEXT * ctxt)
{
    ADDRINT TakenIP = (ADDRINT)PIN_GetContextReg( ctxt, REG_INST_PTR );

    if ( BeforeIP == TakenIP )
      {
	failure++;
        out << "Failure!! Before Context IP = " << BeforeIP << ", Indirect Branch Taken Context IP = " << "unknown" << endl;
      }
    else
      {
	//        out << "Success!! Before Context IP = " << BeforeIP << ", Indirect Branch Taken Context IP = " << "unknown" << endl;
      }
}


VOID Instruction(INS ins, VOID * v)
{
    if ( INS_IsBranchOrCall(ins) )
    {
        INS_InsertCall(ins, IPOINT_BEFORE,
                       AFUNPTR(SetBeforeContext),
                       IARG_CONTEXT,
                       IARG_END);

        if ( INS_IsBranch(ins) && INS_HasFallThrough(ins) )
            INS_InsertCall(ins, IPOINT_AFTER,
                           AFUNPTR(ShowAfterContext),
                           IARG_CONTEXT,
                           IARG_END);

        if ( INS_IsDirectBranchOrCall(ins) )
            INS_InsertCall(ins, IPOINT_TAKEN_BRANCH,
                           AFUNPTR(ShowTakenBrContext),
                           IARG_CONTEXT,
                           IARG_END);

        if ( INS_IsIndirectBranchOrCall(ins) )
            INS_InsertCall(ins, IPOINT_TAKEN_BRANCH,
                           AFUNPTR(ShowTakenIndirBrContext),
                           IARG_CONTEXT,
                           IARG_END);
    }
}

VOID Fini(INT32 code, VOID *v)
{
  if (failure > 0)
    out <<  "Test detected " << failure << " failures." << endl;
  else
    out << "Success!! Test passed!" << endl;
}

int main(int argc, char * argv[])
{
    PIN_Init(argc, argv);

    out.open(KnobOutputFile.Value().c_str());
    out << hex;
    out.setf(ios::showbase);
    
    INS_AddInstrumentFunction(Instruction, 0);
    PIN_AddFiniFunction(Fini, 0);
    
    // Never returns
    PIN_StartProgram();
    
    return 0;
}
