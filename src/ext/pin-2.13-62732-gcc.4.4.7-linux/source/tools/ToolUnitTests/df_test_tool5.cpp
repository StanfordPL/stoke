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


#define DF_MASK 0x400
#define DF_POS 10
#if defined(__cplusplus)
extern "C"
#endif
int source[4] = {1,1,1,1};
#if defined(__cplusplus)
extern "C"
#endif
int dest[4]   = {0,0,0,0};

// This function is called before every instruction is executed
// since it sets DF
// it should move source[1] and source[0] into dest[1] and dest[0] respectively
// Flags are written before the movsd
// If there is a bug and the DF is not set - then it will  move source[1] and source[2] into dest[1] 
// and dest[2] respectively 
// In the Fini function we check that dest has it's expected values 
#if defined(__cplusplus)
extern "C"
#endif
VOID TestDfByMovsd ();

    
// Pin calls this function every time a new instruction is encountered
VOID Instruction(INS ins, VOID *v)
{
    INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)TestDfByMovsd, IARG_END);
}

// This function is called when the application exits
VOID Fini(INT32 code, VOID *v)
{
    BOOL hadFailure = false;
    if (dest[0]!=1)
    {
        printf ("Unexpected value of dest[0] %d\n", dest[0]);
        hadFailure = true;
    }
    if (dest[1]!=1)
    {
        printf ("Unexpected value of dest[1] %d\n", dest[1]);
        hadFailure = true;
    }
    if (dest[2]!=0)
    {
        printf ("Unexpected value of dest[2] %d\n", dest[2]);
        hadFailure = true;
    }
    if (dest[3]!=0)
    {
        printf ("Unexpected value of dest[3] %d\n", dest[3]);
        hadFailure = true;
    }
    printf ("Finished: hadFailure  %d\n", hadFailure);
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
