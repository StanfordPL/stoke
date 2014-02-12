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
/* This test verifies the IARG_BRANCH_TARGET_ADDR and the values of the PC (IP) recorded in the context *,
   when instrumenting indirect branches
*/
#include <iostream>
#include <fstream>
#include <string>
#include <set>
#include <cassert>
#include <stdlib.h>
#include "pin.H"


KNOB<std::string> KnobOutfile(KNOB_MODE_WRITEONCE, "pintool",
    "o", "context-pc.out", "Output file name");


std::ofstream Out;


BOOL haveError = FALSE;


static ADDRINT GetDisassembly(INS ins)
{
    typedef std::set<std::string> STRING_SET;
    typedef std::pair<STRING_SET::iterator, bool> STRING_SET_INSERT;
    static STRING_SET UniqueStrings;

    std::string dis = INS_Disassemble(ins);
    STRING_SET_INSERT ret = UniqueStrings.insert(dis);
    const char *ptr = ret.first->c_str();
    return reinterpret_cast<ADDRINT>(ptr);
}

ADDRINT branchTargetAddrBefore = 0;
static void RecordTargetAddrBefore (ADDRINT branchTargetAddr)
{
    branchTargetAddrBefore = branchTargetAddr;
}

static void CheckTargetAddrAfter (ADDRINT branchTargetAddr, ADDRINT pc, const char *dis)
{
   if (branchTargetAddrBefore != branchTargetAddr)
    {
        haveError = TRUE;
        Out << "***Error1 branchTargetAddr received from IPOINT_BEFORE instrumentation at pc  0x" << std::hex << pc << " is " << std::hex  << branchTargetAddrBefore
            << ", is different form branchTargetAddr at IOPINT_TAKEN_BRANCH  0x" << std::hex << branchTargetAddr << ": " << dis << std::endl;
    }
}

static void CheckPcAtBranchTarget(ADDRINT branchTargetAddr, ADDRINT pcExpectedInstPtr,
                    CONTEXT *ctxt, 
                    CONTEXT *constCtxt,
                    ADDRINT pcInstPtr, const char *dis)
{
    ADDRINT pcCtxt = PIN_GetContextReg(ctxt, REG_INST_PTR);
    ADDRINT pcConstCtxt = PIN_GetContextReg(constCtxt, REG_INST_PTR);
    
    if (pcConstCtxt != pcCtxt)
    {
        haveError = TRUE;
         Out << "***Error2 CONTEXT pc is 0x" << std::hex << pcCtxt << " at IPOINT_TAKEN_BRANCH " <<
            " is not equal to CONST_CONTEXT pc 0x" << std::hex << pcConstCtxt << std::endl;
    }
    
    if (pcCtxt != branchTargetAddr)
    {
        haveError = TRUE;
        Out << "***Error2 CONTEXT pc is 0x" << std::hex << pcCtxt << " at IPOINT_TAKEN_BRANCH " <<
            ", but expected 0x" << std::hex << branchTargetAddr <<
            ".   PC of INS is 0x" << std::hex << pcExpectedInstPtr << ": " << dis << std::endl;
    }
   
    if (pcInstPtr != pcExpectedInstPtr)
    {
        haveError = TRUE;
        Out << "***Error2 INST_PTR pc is 0x" << std::hex << pcInstPtr << " at IPOINT_TAKEN_BRANCH " <<
            ", but expected 0x" << std::hex << pcExpectedInstPtr << ": " << dis << std::endl;
    }

    if (branchTargetAddrBefore != branchTargetAddr)
    {
        haveError = TRUE;
        Out << "***Error2 branchTargetAddr received from IPOINT_BEFORE instrumentation at pc  0x" << std::hex << pcInstPtr << " is " << std::hex  << branchTargetAddrBefore
            << ", is different form branchTargetAddr at IOPINT_TAKEN_BRANCH  0x" << std::hex << branchTargetAddr << ": " << dis << std::endl;
    }
}


static void CheckPcBefore (ADDRINT pcExpectedInstPtr, 
                    CONTEXT *ctxt, 
                    CONTEXT *constCtxt,
                    ADDRINT pcInstPtr, const char *dis)
{
    ADDRINT pcCtxt = PIN_GetContextReg(ctxt, REG_INST_PTR);
    ADDRINT pcConstCtxt = PIN_GetContextReg(constCtxt, REG_INST_PTR);
    
    if (pcConstCtxt != pcCtxt)
    {
        haveError = TRUE;
         Out << "***Error3 CONTEXT pc is 0x" << std::hex << pcCtxt << " at IPOINT_BEFORE " <<
            " is not equal to CONST_CONTEXT pc 0x" << std::hex << pcConstCtxt << std::endl;
    }
    
    if (pcCtxt != pcExpectedInstPtr)
    {
        haveError = TRUE;
        Out << "***Error3 CONTEXT pc is 0x" << std::hex << pcCtxt << " at IPOINT_BEFORE " <<
            ", but expected 0x" << std::hex << pcExpectedInstPtr <<
            ".   PC of INS is 0x" << std::hex << pcExpectedInstPtr << ": " << dis << std::endl;
    }
   
    if (pcInstPtr != pcExpectedInstPtr)
    {
        haveError = TRUE;
        Out << "***Error3 INST_PTR pc is 0x" << std::hex << pcInstPtr << " at IPOINT_BEFORE " <<
            ", but expected 0x" << std::hex << pcExpectedInstPtr << ": " << dis << std::endl;
    }

    
}

static void InstrumentIndirects(INS ins, VOID *)
{
    
    if (INS_IsIndirectBranchOrCall(ins))
    {
         Out << "Instrumenting Indirect branch or call at 0x" << std::hex << INS_Address(ins) <<  " " << INS_Disassemble(ins) << std::endl;
         INS_InsertCall(ins, IPOINT_BEFORE, AFUNPTR(RecordTargetAddrBefore),
                        IARG_BRANCH_TARGET_ADDR,
                        IARG_END);
         INS_InsertCall(ins, IPOINT_BEFORE, AFUNPTR(CheckPcBefore),
                        IARG_ADDRINT, INS_Address(ins), IARG_CONTEXT, IARG_CONST_CONTEXT, IARG_INST_PTR, IARG_ADDRINT, GetDisassembly(ins), IARG_END);
         INS_InsertCall(ins, IPOINT_TAKEN_BRANCH, AFUNPTR(CheckTargetAddrAfter),
                        IARG_BRANCH_TARGET_ADDR, IARG_INST_PTR, IARG_ADDRINT, GetDisassembly(ins), IARG_END);
         INS_InsertCall(ins, IPOINT_TAKEN_BRANCH, AFUNPTR(CheckPcAtBranchTarget),
            IARG_BRANCH_TARGET_ADDR,            // is also expected CONTEXT PC
            IARG_ADDRINT, INS_Address(ins),     // expected INST_PTR PC
            IARG_CONTEXT,
            IARG_CONST_CONTEXT,
            IARG_INST_PTR,
            IARG_ADDRINT, GetDisassembly(ins),
            IARG_END);
    }
}


VOID Fini(INT32 code, VOID *v)
{
    if (haveError)
    {
        std::cerr << "***error in expected values, see the file " << KnobOutfile.Value() << std::endl;
        exit (-1);
    }
}

int main(int argc, char * argv[])
{
    PIN_Init(argc, argv);

    Out.open(KnobOutfile.Value().c_str());
    if (!Out.good())
    {
        std::cerr << "Unable to open '" << KnobOutfile.Value() << "'" << std::endl;
        return 1;
    }

    INS_AddInstrumentFunction(InstrumentIndirects, 0);
    PIN_AddFiniFunction(Fini, 0);

    PIN_StartProgram();
    return 0;
}





