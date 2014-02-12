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
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include "pin.H"



ADDRINT newTLS = 0;
ADDRINT newTLSSize = 0x80;

void AllocateNewTLS()
{
	newTLS = (ADDRINT)malloc(newTLSSize);
}

    

ADDRINT ProcessAddress(ADDRINT baseAddr, ADDRINT fullAddr, VOID *ip)
{
	ADDRINT displacement = fullAddr - baseAddr;
	return newTLS + displacement;
}




void Instruction(INS ins, VOID *v)
{
    RTN rtn = INS_Rtn(ins);
    if (RTN_Valid(rtn) && ((RTN_Name(rtn) == "SegAccessRtn") || (RTN_Name(rtn) == "SegAccessStrRtn")))
    {	
        REG segReg = INS_SegmentRegPrefix(ins);
	    
        if ((segReg != REG_SEG_GS) && (segReg != REG_SEG_FS))
            return;
	
        REG baseReg = (segReg == REG_SEG_GS)? REG_SEG_GS_BASE : REG_SEG_FS_BASE;

        for (UINT32 memopIdx=0; memopIdx<INS_MemoryOperandCount(ins); memopIdx++)
        {
            REG scratchReg = REG(int(REG_INST_G0)+memopIdx);

            INS_RewriteMemoryOperand(ins, memopIdx, scratchReg);

            INS_InsertCall(ins, IPOINT_BEFORE,
                           AFUNPTR(ProcessAddress),
                           IARG_REG_VALUE,
                           baseReg,
                           IARG_MEMORYOP_EA, memopIdx,
                           IARG_INST_PTR,
                           IARG_RETURN_REGS, scratchReg, IARG_END);
        }
    }
}

int main(int argc, char * argv[])
{


    PIN_InitSymbols();
    PIN_Init(argc, argv);

    INS_AddInstrumentFunction(Instruction, 0);
    
	AllocateNewTLS();
    // Never returns
    PIN_StartProgram();
    
    return 0;
}
