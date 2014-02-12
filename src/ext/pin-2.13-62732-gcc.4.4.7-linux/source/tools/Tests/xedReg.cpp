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
  @ORIGINAL_AUTHOR: Daniel Lemel
 */

/*! @file
 *  Check how many instructions use EAX when it contains 0, using xed APIs.
 *  The purpose of this test is to check INS_XedExactMapToPinReg API.
 */

#include <iostream>
#include "pin.H"
extern "C" {
#include "xed-interface.h"
}

using namespace std;

UINT32 eaxIsZeroCount = 0;

VOID CountIfZero(INT32 eaxVal)
{
    if (!eaxVal) eaxIsZeroCount++;
}

VOID InstrumentOperand(
    INS ins,
    xed_decoded_inst_t const* const xedd,
    xed_inst_t const* const xedi,
    unsigned int operand_index)
{
    const xed_operand_t* operand = xed_inst_operand(xedi, operand_index);
    const xed_operand_enum_t operand_name = xed_operand_name(operand);

    if (xed_operand_is_register(operand_name)) {
        xed_reg_enum_t xedreg = xed_decoded_inst_get_reg(xedd, operand_name);
        xed_reg_class_enum_t reg_class =  xed_reg_class(xedreg);
        if (reg_class == XED_REG_CLASS_GPR) {
            xed_reg_enum_t fullreg = xed_get_largest_enclosing_register(xedreg);
            xed_uint32_t reg;
#if defined(TARGET_IA32)
            reg = fullreg - XED_REG_GPR64_FIRST + XED_REG_GPR32_FIRST;
#else
            reg = fullreg;
#endif
            REG pinreg  = INS_XedExactMapToPinReg(reg);
                
            if (pinreg == REG_EAX)
                INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)CountIfZero, IARG_REG_VALUE, REG_EAX, IARG_END);
        }
     }
}

VOID Ins(INS ins, VOID* v)
{
    xed_decoded_inst_t const* const xedd = INS_XedDec(ins);
    const xed_inst_t*  xedi = xed_decoded_inst_inst(xedd);
    const unsigned int  operand_count =  xed_inst_noperands(xedi);
    for (unsigned int i=0 ; i < operand_count ; i++)
        InstrumentOperand(ins, xedd, xedi, i);
}

VOID Fini(INT32 code, VOID *v)
{
    cout << "eaxIsZeroCount = " << eaxIsZeroCount << endl;
}

int main(INT32 argc, CHAR **argv)
{
    PIN_InitSymbols();
    PIN_Init(argc, argv);
    
    INS_AddInstrumentFunction(Ins, 0);
    PIN_AddFiniFunction(Fini, 0);
    
    // Never returns
    PIN_StartProgram();
    
    return 0;
}
