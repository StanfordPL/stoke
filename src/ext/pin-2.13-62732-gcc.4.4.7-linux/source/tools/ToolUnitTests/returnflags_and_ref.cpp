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

// Test that using (IARG_REG_REFERENCE, REG_GAX) and (IARG_RETURN_REGS, REG_GFLAGS) to an anlysis function does not
// result in unexpected values in either register 

ADDRINT SetGaxAndReturnGFlags(ADDRINT app_flags, ADDRINT gaxVal, ADDRINT *gaxRef)
{
    *gaxRef = gaxVal;
    return (app_flags);
}

int a[10];
int n = 10;

ADDRINT savedGaxVal, savedGFlagsVal;
ADDRINT SetGaxAndReturnGFlagsNoInline(ADDRINT app_flags, ADDRINT gaxVal, ADDRINT *gaxRef)
{
    for (int i = 0; i < n; i++)
    {
        a[i] = i;
    }
    *gaxRef = gaxVal;
    savedGFlagsVal = app_flags;
    savedGaxVal = gaxVal;
    return (app_flags);    
}

ADDRINT SetGaxAndReturnGFlagsInline(ADDRINT app_flags, ADDRINT gaxVal, ADDRINT *gaxRef)
{
    *gaxRef = gaxVal;
    savedGFlagsVal = app_flags;
    savedGaxVal = gaxVal;
    return (app_flags);    
}


void CompareGaxAndGFlags(ADDRINT app_flags, ADDRINT gaxVal)
{
    BOOL haveError = FALSE;
    if (savedGaxVal != gaxVal)
    {
        printf ("Error in gax val\n");
        haveError = TRUE;
    }
    if (savedGFlagsVal != app_flags)
    {
        printf ("Error in flags val\n");
        haveError = TRUE;
    }
    if (haveError)
    {
        exit(1);
    }
}
    

int instrumentationNum=1;

VOID Instruction(INS ins, VOID *v)
{
    
    if (instrumentationNum&0x1)
    {
        INS_InsertCall(ins, IPOINT_BEFORE, AFUNPTR(SetGaxAndReturnGFlagsNoInline),
                       IARG_REG_VALUE, REG_GFLAGS,
                       IARG_REG_VALUE, REG_GAX,
                       IARG_REG_REFERENCE, REG_GAX,
                       IARG_RETURN_REGS, REG_GFLAGS, IARG_END);
    }

    else  
    {
        INS_InsertCall(ins, IPOINT_BEFORE, AFUNPTR(SetGaxAndReturnGFlagsInline),
                       IARG_REG_VALUE, REG_GFLAGS,
                       IARG_REG_VALUE, REG_GAX,
                       IARG_REG_REFERENCE, REG_GAX,
                       IARG_RETURN_REGS, REG_GFLAGS, IARG_END);
    }

    INS_InsertCall(ins, IPOINT_BEFORE, AFUNPTR(CompareGaxAndGFlags), IARG_REG_VALUE, REG_GFLAGS,
                        IARG_REG_VALUE, REG_GAX,IARG_END);
    instrumentationNum++;
       
}

int main(int argc, char * argv[])
{
    PIN_Init(argc, argv);

    INS_AddInstrumentFunction(Instruction, 0);
    
    // Never returns
    PIN_StartProgram();
    
    return 0;
}
