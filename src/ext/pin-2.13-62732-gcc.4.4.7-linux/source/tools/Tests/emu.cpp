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
#include <stdio.h>
#include "pin.H"
#include "pin_isa.H"
#include <iostream>

UINT32 icount = 0;

LOCALVAR KNOB<UINT32> KnobCount(KNOB_MODE_WRITEONCE, "pintool", "count", "100000000",
                                                  "Explicitly save and restore the flags in inlined analysis routines");
VOID Emulate2Address(OPCODE opcode,
                     INS ins,
                     ADDRINT (*OpRM)(ADDRINT,ADDRINT*),
                     ADDRINT (*OpRV)(ADDRINT,ADDRINT),
                     VOID (*OpMV)(ADDRINT*,ADDRINT))
{
    if (INS_Opcode(ins) != opcode)
        return;
    if (INS_OperandIsMemory(ins, 0)
        // This will filter out segment overrides
        && INS_IsMemoryWrite(ins))
    {
        if (INS_OperandIsReg(ins, 1)
            && REG_is_gr(INS_OperandReg(ins, 1)))
        {
            // Source register, dst memory
            INS_InsertCall(ins,
                           IPOINT_BEFORE,
                           AFUNPTR(OpMV),
                           IARG_MEMORYWRITE_EA,
                           IARG_REG_VALUE,
                           INS_OperandReg(ins, 1),
                           IARG_END);
            INS_Delete(ins);
        }
        else
        {
            ASSERTX(!INS_OperandIsMemory(ins, 1));
        }
    }
    else if (INS_OperandIsReg(ins, 0))
    {
    	REG dst = INS_OperandReg(ins, 0);
    	if ((dst == REG_SEG_GS) || (dst == REG_SEG_FS))
    		return;
        if (INS_OperandIsReg(ins, 1))
        {
            // Source register, dst register
            INS_InsertCall(ins,
                           IPOINT_BEFORE,
                           AFUNPTR(OpRV),
                           IARG_REG_VALUE,
                           INS_OperandReg(ins, 0),
                           IARG_REG_VALUE,
                           INS_OperandReg(ins, 1),
                           IARG_RETURN_REGS,
                           INS_OperandReg(ins, 0),
                           IARG_END);
            INS_Delete(ins);
        }
        else if (INS_OperandIsMemory(ins, 1)
                 // This will filter out segment overrides
                 && INS_IsMemoryRead(ins))
        {
            // Source register, dst register
            INS_InsertCall(ins,
                           IPOINT_BEFORE,
                           AFUNPTR(OpRM),
                           IARG_REG_VALUE,
                           INS_OperandReg(ins, 0),
                           IARG_MEMORYREAD_EA,
                           IARG_RETURN_REGS,
                           INS_OperandReg(ins, 0),
                           IARG_END);
           INS_Delete(ins);
        }
    }
    
#if 0
    if (KnobCount == icount)
        fprintf(stderr,"Last one %s\n",INS_Disassemble(ins).c_str());
    else if (icount > KnobCount)
        return;
    icount++;
#endif

}

// Move a register or literal to memory
VOID MovMV(ADDRINT * op0, ADDRINT op1)
{
    PIN_SafeCopy(op0, &op1, sizeof(ADDRINT));
}
    
// Move a literal or register to a register
ADDRINT MovRV(ADDRINT op0, ADDRINT op1)
{ 
    return op1;
}
    
// Move from memory to register
ADDRINT MovRM(ADDRINT op0, ADDRINT * op1)
{ 
    ADDRINT value;
    PIN_SafeCopy(&value, op1, sizeof(ADDRINT));
    return value;
}
    
VOID Instruction(INS ins, VOID *v)
{
    Emulate2Address(XED_ICLASS_MOV, ins, MovRM, MovRV, MovMV);
}

int main(int argc, char * argv[])
{
    PIN_Init(argc, argv);

    INS_AddInstrumentFunction(Instruction, 0);
    
    // Never returns
    PIN_StartProgram();
    
    return 0;
}
