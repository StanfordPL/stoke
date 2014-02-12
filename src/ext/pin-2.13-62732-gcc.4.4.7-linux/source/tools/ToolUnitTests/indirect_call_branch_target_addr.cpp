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
#include <string>
#include <set>
#include <cassert>
#include <stdlib.h>
#include "pin.H"


KNOB<std::string> KnobOutfile(KNOB_MODE_WRITEONCE, "pintool",
    "o", "indirect_call_branch_target_addr.out", "Output file name");


std::ofstream Out;


BOOL haveError = FALSE;


BOOL justExecutedIndirectThruStackCall = FALSE;
ADDRINT savedBranchTargetAddr = 0;
BOOL calledIpointBeforeIndirectThruStackCall = FALSE;
BOOL calledIpointBeforeIndirectThruStackCall1 = FALSE;
BOOL calledIpointBeforeIndirectThruStackCall2 = FALSE;
BOOL calledIpointTakenBranchIndirectThruStackCall = FALSE;
BOOL calledIpointTakenBranchIndirectThruStackCall1 = FALSE;
BOOL calledIpointTakenBranchIndirectThruStackCall2 = FALSE;
BOOL calledPreviousInsExecutedWasAnIndirectCallThruStack = FALSE;

static void IpointBeforeIndirectThruStackCall (ADDRINT branchTargetAddr, ADDRINT rsp, ADDRDELTA displacementSigned,  ADDRINT rip, CONTEXT *ctxt)
{
    calledIpointBeforeIndirectThruStackCall = TRUE;
    ADDRINT * ptr1 = (ADDRINT *)(rsp+displacementSigned);
    justExecutedIndirectThruStackCall = TRUE;
    Out << "IpointBeforeIndirectThruStackCall at rip " << std::hex << rip << " branchTargetAddr " << std::hex << branchTargetAddr << "  rsp " << std::hex << rsp << " context rsp " << PIN_GetContextReg(ctxt, REG_STACK_PTR) << " [rsp+" <<  std::hex << displacementSigned << "]==(" << std::hex << (rsp+displacementSigned) <<") contains " << std::hex << *ptr1 << endl;
    if (*ptr1 != branchTargetAddr)
    {
        Out << "***Error expected *ptr1 == branchTargetAddr" << endl;
        exit (-1);
    }
    savedBranchTargetAddr = branchTargetAddr;
}

static void IpointBeforeIndirectThruStackCall1 (ADDRINT branchTargetAddr, ADDRINT rsp, ADDRDELTA displacementSigned,  ADDRINT rip, CONTEXT *ictxt)
{
    calledIpointBeforeIndirectThruStackCall1 = TRUE;

    ADDRINT * ptr1 = (ADDRINT *)(rsp+displacementSigned);
    justExecutedIndirectThruStackCall = TRUE;
    Out << "IpointBeforeIndirectThruStackCall1 at rip " << std::hex << rip << " branchTargetAddr " << std::hex << branchTargetAddr << "  rsp " << std::hex << rsp << " [rsp+" <<  std::hex << displacementSigned << "]==(" << std::hex << (rsp+displacementSigned) <<") contains " << std::hex << *ptr1 << endl;
    if (*ptr1 != branchTargetAddr)
    {
        Out << "***Error expected *ptr1 == branchTargetAddr" << endl;
        exit (-1);
    }
    if (savedBranchTargetAddr != branchTargetAddr)
    {
        Out << "***Error expected savedBranchTargetAddr == branchTargetAddr" << endl;
        exit (-1);
    }
}

static void IpointBeforeIndirectThruStackCall2 (ADDRINT branchTargetAddr, ADDRINT rsp, ADDRDELTA displacementSigned,  ADDRINT rip)
{
    calledIpointBeforeIndirectThruStackCall2 = TRUE;

    ADDRINT * ptr1 = (ADDRINT *)(rsp+displacementSigned);
    justExecutedIndirectThruStackCall = TRUE;
    Out << "IpointBeforeIndirectThruStackCall2 at rip " << std::hex << rip << " branchTargetAddr " << std::hex << branchTargetAddr << "  rsp " << std::hex << rsp << " [rsp+" <<  std::hex << displacementSigned << "]==(" << std::hex << (rsp+displacementSigned) <<") contains " << std::hex << *ptr1 << endl;
    if (*ptr1 != branchTargetAddr)
    {
        Out << "***Error expected *ptr1 == branchTargetAddr" << endl;
        exit (-1);
    }
    if (savedBranchTargetAddr != branchTargetAddr)
    {
        Out << "***Error expected savedBranchTargetAddr == branchTargetAddr" << endl;
        exit (-1);
    }
}

static void IpointTakenBranchIndirectThruStackCall (ADDRINT branchTargetAddr, ADDRINT rip, CONTEXT *ictxt)
{
    calledIpointTakenBranchIndirectThruStackCall = TRUE;
 
    justExecutedIndirectThruStackCall = TRUE;
    Out << "IpointTakenBranchIndirectThruStackCall at rip " << std::hex << rip << " branchTargetAddr " << std::hex << branchTargetAddr <<  endl;
    if (savedBranchTargetAddr != branchTargetAddr)
    {
        Out << "***Error expected savedBranchTargetAddr == branchTargetAddr" << endl;
        exit (-1);
    }
}

static void IpointTakenBranchIndirectThruStackCall1 (ADDRINT branchTargetAddr, ADDRINT rip, CONTEXT *ictxt)
{
    calledIpointTakenBranchIndirectThruStackCall1 = TRUE;
 
    justExecutedIndirectThruStackCall = TRUE;
    Out << "IpointTakenBranchIndirectThruStackCall1 at rip " << std::hex << rip << " branchTargetAddr " << std::hex << branchTargetAddr <<  endl; 
    if (savedBranchTargetAddr != branchTargetAddr)
    {
        Out << "***Error expected savedBranchTargetAddr == branchTargetAddr" << endl;
        exit (-1);
    }
}

static void IpointTakenBranchIndirectThruStackCall2 (ADDRINT branchTargetAddr, ADDRINT rip)
{
    calledIpointTakenBranchIndirectThruStackCall2 = TRUE;

    justExecutedIndirectThruStackCall = TRUE;
    Out << "IpointTakenBranchIndirectThruStackCall2 at rip " << std::hex << rip << " branchTargetAddr " << std::hex << branchTargetAddr <<  endl;
    if (savedBranchTargetAddr != branchTargetAddr)
    {
        Out << "***Error expected savedBranchTargetAddr == branchTargetAddr" << endl;
        exit (-1);
    }
}


static BOOL WasPreviousInsExecutedAnIndirectCallThruStack ()
{
    BOOL valToReturn = justExecutedIndirectThruStackCall;
    justExecutedIndirectThruStackCall = FALSE;
    return (valToReturn);
}
static void PreviousInsExecutedWasAnIndirectCallThruStack (ADDRINT rip)
{
    calledPreviousInsExecutedWasAnIndirectCallThruStack = TRUE;
    Out << "IndirectThruStackCall target reached at rip " << std::hex << rip  << endl;
    if (rip != savedBranchTargetAddr)
    {
        Out << "***Error expected rip == savedBranchTargetAddr" << endl;
        exit (-1);
    }
    savedBranchTargetAddr = 0;
}


static void InstrumentIndirects(INS ins, VOID *)
{
    if (INS_IsIndirectBranchOrCall(ins) && INS_IsCall(ins) && INS_IsMemoryRead(ins) && INS_OperandIsMemory(ins, 0) && INS_OperandMemoryBaseReg(ins, 0)==REG_STACK_PTR)
    {
        Out << "Instrumenting Indirect Thru Stack Call at 0x" << std::hex << INS_Address(ins) <<  " " << INS_Disassemble(ins) << std::endl;
        
        INS_InsertCall(ins, IPOINT_BEFORE, AFUNPTR(IpointBeforeIndirectThruStackCall),
                        IARG_BRANCH_TARGET_ADDR,
                        IARG_REG_VALUE, REG_STACK_PTR,
                        IARG_ADDRINT, INS_MemoryDisplacement(ins),
                        IARG_INST_PTR,
                        IARG_CONTEXT,
                        IARG_END);
        INS_InsertCall(ins, IPOINT_BEFORE, AFUNPTR(IpointBeforeIndirectThruStackCall1),
                        IARG_BRANCH_TARGET_ADDR,
                        IARG_REG_VALUE, REG_STACK_PTR,
                        IARG_ADDRINT, INS_MemoryDisplacement(ins),
                        IARG_INST_PTR,
                        IARG_CONST_CONTEXT,
                        IARG_END);
        INS_InsertCall(ins, IPOINT_BEFORE, AFUNPTR(IpointBeforeIndirectThruStackCall2),
                        IARG_BRANCH_TARGET_ADDR,
                        IARG_REG_VALUE, REG_STACK_PTR,
                        IARG_ADDRINT, INS_MemoryDisplacement(ins),
                        IARG_INST_PTR,
                        IARG_END);
        INS_InsertCall(ins, IPOINT_TAKEN_BRANCH, AFUNPTR(IpointTakenBranchIndirectThruStackCall),
                        IARG_BRANCH_TARGET_ADDR,
                        IARG_INST_PTR,
                        IARG_CONTEXT,
                        IARG_END);
        INS_InsertCall(ins, IPOINT_TAKEN_BRANCH, AFUNPTR(IpointTakenBranchIndirectThruStackCall1),
                        IARG_BRANCH_TARGET_ADDR,
                        IARG_INST_PTR,
                        IARG_CONST_CONTEXT,
                        IARG_END);
        INS_InsertCall(ins, IPOINT_TAKEN_BRANCH, AFUNPTR(IpointTakenBranchIndirectThruStackCall2),
                        IARG_BRANCH_TARGET_ADDR,
                        IARG_INST_PTR,
                        IARG_END);
    }
    else
    {
        INS_InsertIfCall(ins, IPOINT_BEFORE, (AFUNPTR)WasPreviousInsExecutedAnIndirectCallThruStack,  IARG_END);
        INS_InsertThenCall(ins, IPOINT_BEFORE, (AFUNPTR)PreviousInsExecutedWasAnIndirectCallThruStack,IARG_INST_PTR,
                           IARG_END);
    }
}

VOID Fini(INT32 code, VOID *v)
{
    if (!calledIpointBeforeIndirectThruStackCall ||
        !calledIpointBeforeIndirectThruStackCall1 ||
        !calledIpointBeforeIndirectThruStackCall2 ||
        !calledIpointTakenBranchIndirectThruStackCall ||
        !calledIpointTakenBranchIndirectThruStackCall1 ||
        !calledIpointTakenBranchIndirectThruStackCall2 ||
        !calledPreviousInsExecutedWasAnIndirectCallThruStack)
    {
        Out << "***Error not all expected tests executed" << endl;
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





