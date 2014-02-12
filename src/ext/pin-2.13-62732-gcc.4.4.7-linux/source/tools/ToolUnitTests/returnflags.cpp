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
#include <iostream>
#include <stdlib.h>

#include "pin.H"

// Add the flags you want to set to FLAGSET.
// Note: Modifying the eflags will very likely break your application.
//       Use at your own risk.

#define FLAGSET 0x00000000
//#define FLAGSET 0x00000010 // set AF (less likely to break the application)

ADDRINT SetFlags(ADDRINT app_flags)
{
    //cout << "SetFlags: app_flags = " << hexstr(app_flags) << endl;
    return (app_flags | FLAGSET);
}
    
VOID CheckFlags(ADDRINT app_flags)
{
    if ((app_flags & FLAGSET) != FLAGSET)
    {
        cerr << "inline failed: app_flags= " << hexstr(app_flags) << endl;
        exit(-1);
    }
}

int a[10];
int n = 10;

ADDRINT SetFlagsNoInline(ADDRINT app_flags)
{
    for (int i = 0; i < n; i++)
    {
        a[i] = i;
    }
    return (app_flags | FLAGSET);    
}
    
VOID CheckFlagsNoInline(ADDRINT app_flags)
{
    if ((app_flags & FLAGSET) != FLAGSET)
    {
        cerr << "Noinline failed: app_flags= " << hexstr(app_flags) << endl;
        exit(-1);
    }
}


VOID Instruction(INS ins, VOID *v)
{
    static INT32 count = 0;

    switch(count)
    {
      case 0:
        INS_InsertCall(ins, IPOINT_BEFORE, AFUNPTR(SetFlags),
                       IARG_REG_VALUE, REG_GFLAGS,
                       IARG_RETURN_REGS, REG_GFLAGS, IARG_END);
        break;

      case 1:
        INS_InsertCall(ins, IPOINT_BEFORE, AFUNPTR(CheckFlags), IARG_REG_VALUE, REG_GFLAGS, IARG_END);
        break;

      case 2:
        INS_InsertCall(ins, IPOINT_BEFORE, AFUNPTR(SetFlagsNoInline),
                       IARG_REG_VALUE, REG_GFLAGS,
                       IARG_RETURN_REGS, REG_GFLAGS, IARG_END);
        break;
        
      case 3:
        INS_InsertCall(ins, IPOINT_BEFORE, AFUNPTR(CheckFlagsNoInline), IARG_REG_VALUE, REG_GFLAGS, IARG_END);
        break;
        
      default:
        break;
    }
    
    count++;
}

int main(int argc, char * argv[])
{
    PIN_Init(argc, argv);

    INS_AddInstrumentFunction(Instruction, 0);
    
    // Never returns
    PIN_StartProgram();
    
    return 0;
}
