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



#if defined(__cplusplus)
extern "C"
#endif
int numFailures = 0;
int numFlagRegs = 0;

// This function is called before every instruction is executed
// it tests to see if DF is 0 as expected, if DF is set the value of
// numTimesDfIsSet is incremented by 1


    
// Pin calls this function every time a new instruction is encountered
VOID Instruction(INS ins, VOID *v)
{
    const UINT32 max_r = INS_MaxNumRRegs(ins);
    
    for( UINT32 i=0; i < max_r; i++ )
    {
        const REG reg =  INS_RegR(ins, i );
        if (reg==REG_STATUS_FLAGS || reg==REG_DF_FLAG)
        {
            printf ("Error encountered unexpected flag reg at ins: %s\n",
                    INS_Disassemble(ins).c_str());
            numFailures++;
        }
        else if (reg==REG_GFLAGS)
        {
            numFlagRegs++;
        }
    }

    const UINT32 max_w = INS_MaxNumWRegs(ins);
    
    for( UINT32 i=0; i < max_w; i++ )
    {
        const REG reg =  INS_RegW(ins, i );
        if (reg==REG_STATUS_FLAGS || reg==REG_DF_FLAG)
        {
            printf ("Error encountered unexpected flag reg at ins: %s\n",
                    INS_Disassemble(ins).c_str());
            numFailures++;
        }
        else if (reg==REG_GFLAGS)
        {
            numFlagRegs++;
        }
    }
}

// This function is called when the application exits
VOID Fini(INT32 code, VOID *v)
{
    if (numFailures)
    {
        printf ("error numFailures %d\n", numFailures);
    }
    if (numFlagRegs == 0)
    {
        printf ("error no flag regs found\n");
    }
    if (numFailures==0 && numFlagRegs>0)
    {
        printf ("SUCCESS\n");
    }
    fflush (stdout);
}

// argc, argv are the entire command line, including pin -t <toolname> -- ...
int main(int argc, char * argv[])
{
    // Initialize pin
    PIN_Init(argc, argv);

    // Register Instruction to be called to instrument instructions
    INS_AddInstrumentFunction(Instruction, 0);

    // Register Fini to be called when the application exits
    PIN_AddFiniFunction(Fini, 0);
    
    // Start the program, never returns
    PIN_StartProgram();
    
    return 0;
}
