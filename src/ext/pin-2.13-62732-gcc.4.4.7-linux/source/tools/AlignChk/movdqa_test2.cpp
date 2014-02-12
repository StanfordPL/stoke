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
extern "C" void DoXmm();
/* The function DoXmm is 
DoXmm:
    sub         $0x3c, %esp
    movdqa      %xmm2, (%esp)
	add         $0x3c, %esp
    ret

This is a non-windows test, The DoXmm function assumes that when called the esp is aligned on 12mod16 
and when used in the movdqa instruction it is aligned on 16. 
This test verifies that Pin maintains this alignment when inlining the function - i.e. no misalignment
fault occurs
*/


VOID Instruction(INS ins, VOID *v)
{
    INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)DoXmm, IARG_END);
    INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)DoXmm, IARG_UINT32, 1, IARG_END);
    INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)DoXmm, IARG_UINT32, 1, IARG_UINT32, 2, IARG_END);
    INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)DoXmm, IARG_UINT32, 1, IARG_UINT32, 2, IARG_UINT32, 3, IARG_END);

    INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)DoXmm, IARG_REG_REFERENCE, REG_EAX, IARG_END);
    INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)DoXmm, IARG_REG_REFERENCE, REG_EAX, IARG_UINT32, 1, IARG_END);
    INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)DoXmm, IARG_REG_REFERENCE, REG_EAX, IARG_UINT32, 1, IARG_UINT32, 2, IARG_END);
    INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)DoXmm, IARG_REG_REFERENCE, REG_EAX, IARG_UINT32, 1, IARG_UINT32, 2, IARG_UINT32, 3, IARG_END);
}


int main(int argc, char *argv[])
{
    PIN_Init(argc, argv);
    
    INS_AddInstrumentFunction(Instruction, 0);
    
    PIN_StartProgram();
    return 0;
}

