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
#include <string>
#include <iostream>
#include <assert.h>
using namespace std;

//=======================================================================
// This is a tool that instruments Windows system calls invoked in different 
// calling standards : FAST and ALT.
//=======================================================================

typedef void My_SetNtAllocateNumber_T(UINT32 num);
My_SetNtAllocateNumber_T * pfnMy_SetNtAllocateNumber = 0;
ADDRINT pfnMy_AllocateVirtualMemory = 0;
BOOL inMy_AllocateVirtualMemory = FALSE;

//=======================================================================
// Print syscall number and arguments
VOID BeforeSyscall(ADDRINT ip, ADDRINT num, ADDRINT arg0, ADDRINT arg1, ADDRINT arg2,
               ADDRINT arg3, ADDRINT arg4, ADDRINT arg5)
{
    if (inMy_AllocateVirtualMemory)
    {
        inMy_AllocateVirtualMemory = FALSE;
        cout << "NtAllocateVirtualMemory: ";
        cout << " size = " << dec << *((size_t *)arg3);
        cout << " allocation type = " << hex << (unsigned long)arg4;
        cout << " protect = " << hex << (unsigned long)arg5  << endl;

        if (pfnMy_SetNtAllocateNumber)
        {
            pfnMy_SetNtAllocateNumber((UINT32)num);
            cout << "Set NtAllocateVirtualMemory system call number" << endl;
            pfnMy_SetNtAllocateNumber = 0; // call My_SetNtAllocateNumber only once
        }
    }
}

//=======================================================================
// Mark start of the My_AllocateVirtualMemory function
VOID BeforeMyAlloc()
{
    inMy_AllocateVirtualMemory = TRUE;
}

//=======================================================================
// This function is called for every instruction and instruments syscalls
VOID Instruction(INS ins, VOID *v)
{
    if (INS_IsSyscall(ins))
    {
        // Arguments and syscall number is only available before
        INS_InsertCall(ins, IPOINT_BEFORE, AFUNPTR(BeforeSyscall),
                       IARG_INST_PTR, IARG_SYSCALL_NUMBER,
                       IARG_SYSARG_VALUE, 0, IARG_SYSARG_VALUE, 1,
                       IARG_SYSARG_VALUE, 2, IARG_SYSARG_VALUE, 3,
                       IARG_SYSARG_VALUE, 4, IARG_SYSARG_VALUE, 5,
                       IARG_END);
        
    }
    if (INS_Address(ins) == pfnMy_AllocateVirtualMemory)
    {
        INS_InsertCall(ins, IPOINT_BEFORE, AFUNPTR(BeforeMyAlloc), IARG_END);
    }
}

//=======================================================================
// This function is called for every image. It retrieves addresses of 
// My_AllocateVirtualMemory and My_SetNtAllocateNumber functions in the 
// application.

VOID ImageLoad(IMG img, VOID *v)
{
    RTN allocRtn = RTN_FindByName(img, "My_AllocateVirtualMemory");
    if ( RTN_Valid( allocRtn ) ) 
    {
        pfnMy_AllocateVirtualMemory = RTN_Address(allocRtn);
    }

    RTN setNumberRtn = RTN_FindByName(img, "My_SetNtAllocateNumber");
    if ( RTN_Valid( setNumberRtn ) ) 
    {
        pfnMy_SetNtAllocateNumber = (My_SetNtAllocateNumber_T *)RTN_Address(setNumberRtn);
    }
}

//=======================================================================
int main(int argc, CHAR *argv[])
{
    PIN_InitSymbols();
    PIN_Init( argc, argv );
    IMG_AddInstrumentFunction(ImageLoad, 0);
    INS_AddInstrumentFunction(Instruction, 0);
    PIN_StartProgram();
    
    return 0;
}

