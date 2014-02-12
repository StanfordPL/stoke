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


/*
  Demonstrates manually inlining a call to a simple function
*/

#if defined(TARGET_MAC)
static char const * replacedfunname = "_one";
#else
static char const * replacedfunname = "one";
#endif

ADDRINT oneAddress = 0;

ADDRINT Two()
{
    fprintf(stderr,"In 2\n");
    fflush (stderr);
    return 2;
}

VOID Image(IMG img, VOID *)
{
    RTN rtn = RTN_FindByName(img, replacedfunname);
    
    if (RTN_Valid(rtn))
    {
        fprintf(stderr,"Found one\n");
        fflush (stderr);
        oneAddress = RTN_Address(rtn);
    }
}

VOID Instruction(INS ins, VOID *)
{
    if (INS_IsDirectBranchOrCall(ins)
        && INS_DirectBranchOrCallTargetAddress(ins) == oneAddress)
    {
        INS_InsertCall(ins, IPOINT_BEFORE, AFUNPTR(Two), 
                       IARG_RETURN_REGS, REG_GAX, IARG_END);
        INS_Delete(ins);
    }
}

int main(INT32 argc, CHAR **argv)
{
    PIN_InitSymbols();
    
    PIN_Init(argc, argv);
    
    IMG_AddInstrumentFunction(Image, 0);
    INS_AddInstrumentFunction(Instruction, 0);
    
    // Never returns
    PIN_StartProgram();
    
    return 0;
}
