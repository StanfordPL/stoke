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

// This function is called before every instruction is executed

int buff[8];


VOID UnalignedReadAndWrite ()
{
    char *unalignedPtr = (char *)buff;
    unalignedPtr++;
    int unalignedRead = *((int *)(unalignedPtr));
    unalignedPtr++;
    *((int *)(unalignedPtr)) = unalignedRead;
}




BOOL instrumentNext = FALSE;
// Pin calls this function every time a new instruction is encountered
VOID Instruction(INS ins, VOID *v)
{
    //printf ("Instruction at %x\n", INS_address(ins));
    if (INS_Opcode(ins)==XED_ICLASS_POPF
        || INS_Opcode(ins)==XED_ICLASS_POPFD
        || INS_Opcode(ins)==XED_ICLASS_POPFQ
        || instrumentNext)
    {
        
        if (instrumentNext)
        {
            // IPOINT_BEFORE instrumentation on instruction after popf*
            INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)UnalignedReadAndWrite, IARG_END);
            instrumentNext = FALSE;
        }
        else
        { // IPOINT_AFTER instrumentation on popf*
            INS_InsertCall(ins, IPOINT_AFTER, (AFUNPTR)UnalignedReadAndWrite, IARG_END);
            instrumentNext = TRUE;
        }
        return;
    }
    
}

// This function is called when the application exits
VOID Fini(INT32 code, VOID *v)
{
    
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
