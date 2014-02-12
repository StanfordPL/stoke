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
#include <stdlib.h>
#include "pin.H"
#include <iostream>

UINT32 * lastEa;
UINT32 lastValue;

VOID CaptureEaAndValue(UINT32 * ea)
{
    lastEa = ea;
    lastValue = *ea;
}

VOID TestValue(VOID * ip, UINT32 val)
{
    if (val != lastValue)
    {
        fprintf(stderr, "Difference IP: %p, EA: %p, register value: %x, memory value: %x\n",
                ip, lastEa, val, lastValue);

        exit(1);
    }
}
    
VOID Instruction(INS ins, VOID *v)
{
    if (INS_Mnemonic(ins) == "MOV"
        && INS_IsMemoryRead(ins)
        && REG_is_gr(INS_RegW(ins, 0)))
    {
        INS_InsertCall(ins, IPOINT_BEFORE, AFUNPTR(CaptureEaAndValue), IARG_MEMORYREAD_EA, IARG_END);
        INS_InsertCall(ins, IPOINT_AFTER, AFUNPTR(TestValue), IARG_INST_PTR, IARG_REG_VALUE, INS_RegW(ins, 0), IARG_END);
    }
}

int main(int argc, char * argv[])
{
    PIN_Init(argc, argv);

    INS_AddInstrumentFunction(Instruction, 0);
    
    // Never returns
    PIN_StartProgram();
    
    return 0;
}
