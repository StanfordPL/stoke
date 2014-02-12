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
 * This test reproduced a bug in managing the flags. The problem occurs
 * when there are 2 inlined functions and the flags are partially live
 * through the first and dead in the second
 *
 *
 */

#include <iostream>
#include <cstdlib>
#include "pin.H"

extern "C" void incinst();
extern "C" void andinst();
extern "C" void leainst(void *);
extern "C" void leaindex(void *);
extern "C" void cmov_test(void *);

int cmov_data = 0;
char data[32];

void CheckData()
{
    if ((unsigned int)cmov_data != 0xbeefbeef)
        exit(1);
    
    if (data[16] != 2)
        exit(1);
}

long res;

VOID Instruction(INS ins, VOID *v)
{
    INS_InsertCall(ins, IPOINT_BEFORE, AFUNPTR(incinst), IARG_END);
    INS_InsertCall(ins, IPOINT_BEFORE, AFUNPTR(andinst), IARG_END);

    static bool first = true;
    if (first)
    {
        data[16] = 1;
        INS_InsertCall(ins, IPOINT_BEFORE, AFUNPTR(cmov_test), IARG_PTR, &cmov_data, IARG_END);
        INS_InsertCall(ins, IPOINT_BEFORE, AFUNPTR(leainst), IARG_PTR, data, IARG_END);
        INS_InsertCall(ins, IPOINT_BEFORE, AFUNPTR(CheckData), IARG_END);

        INS_InsertCall(ins, IPOINT_BEFORE, AFUNPTR(leaindex), IARG_REG_VALUE, REG_STACK_PTR, IARG_PTR, &res, IARG_END);
#if defined(TARGET_IA32E)
        INS_InsertCall(ins, IPOINT_BEFORE, AFUNPTR(leaindex), IARG_REG_VALUE, REG_R9, IARG_PTR, &res, IARG_END);
#endif
    }

    first = false;
}

// argc, argv are the entire command line, including pin -t <toolname> -- ...
int main(int argc, char * argv[])
{
    // Initialize pin
    PIN_Init(argc, argv);

    // Register Instruction to be called to instrument instructions
    INS_AddInstrumentFunction(Instruction, 0);

    // Start the program, never returns
    PIN_StartProgram();
    
    return 0;
}
