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
#include <stdio.h>
#include <stdlib.h>
#include "pin.H"

VOID * lastInstPtr;
BOOL isPredictedTaken;
VOID * predictedInstPtr;
UINT64 icount = 0;
UINT64 errors = 0;
BOOL isSkipped = TRUE; // always skip checking the first inst

VOID CountError()
{
    errors++;
    if (errors > 100)
    {
        std::cerr << "Too many errors, giving up\n";
        exit(errors);
    }
}

VOID CheckFlow(VOID * instPtr, INT32 isTaken, VOID * fallthroughAddr, VOID * takenAddr, UINT32 stutters)
{
    isPredictedTaken = isTaken;

    icount++;
    
    //fprintf(stderr,"Current: %p isTaken %d fallthroughAddr %p takenAddr %p\n", instPtr, isTaken, fallthroughAddr, takenAddr);

    if (predictedInstPtr != instPtr && !isSkipped &&
        !(stutters && (instPtr == lastInstPtr))) // An instruction which stutters can stay at the same IP
    {
        fprintf(stderr,"From: %p predicted InstPtr %p, actual InstPtr %p\n", lastInstPtr, predictedInstPtr, instPtr);
        CountError();
    }
    
    isSkipped = FALSE;
    
    if (isTaken)
    {
        predictedInstPtr = takenAddr;
    }
    else
    {
        predictedInstPtr = fallthroughAddr;
    }

    lastInstPtr = instPtr;
}
    
VOID Taken()
{
    if (!isPredictedTaken)
    {
        fprintf(stderr,"%p taken but not predictedInstPtr\n", lastInstPtr);
        CountError();
    }
}

VOID Skip()
{
    isSkipped = TRUE;
}

TLS_KEY ea_tls_key;

VOID SaveEa(THREADID tid, VOID * ea)
{
    PIN_SetThreadData(ea_tls_key, ea, tid);
}
    
VOID CheckXlatAfter(THREADID tid, ADDRINT eax)
{
    VOID * ea = PIN_GetThreadData(ea_tls_key, tid);
    int actual = *(char*)&eax;
    int expected = *(char*)ea;
    if (expected != actual)
    {
        fprintf(stderr, "xlat actual %d expected %d\n",actual,expected);
        errors++;
    }
}
    
#if defined(TARGET_IA32)
VOID CheckXlat(INS ins)
{
    if (INS_Opcode(ins) != XED_ICLASS_XLAT)
        return;
    INS_InsertCall(ins, IPOINT_BEFORE, AFUNPTR(SaveEa), IARG_THREAD_ID, IARG_MEMORYREAD_EA, IARG_END);
    INS_InsertCall(ins, IPOINT_AFTER, AFUNPTR(CheckXlatAfter), IARG_THREAD_ID, IARG_REG_VALUE, REG_EAX, IARG_END);
}
#else
VOID CheckXlat(INS ins)
{}
#endif


VOID Instruction(INS ins, VOID *v)
{
    CheckXlat(ins);
    
    INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)CheckFlow,
        IARG_INST_PTR,
        IARG_BRANCH_TAKEN,
        IARG_FALLTHROUGH_ADDR,
        IARG_BRANCH_TARGET_ADDR,
        IARG_UINT32, INS_Stutters(ins),
        IARG_END);

    if (INS_IsBranchOrCall(ins))
    {
        INS_InsertCall(ins, IPOINT_TAKEN_BRANCH, (AFUNPTR)Taken, IARG_END);
    }

#if defined(TARGET_IA32) || defined(TARGET_IA32E)
    if (INS_IsSysenter(ins))
    { // sysenter on x86 has some funny control flow that we can't correctly verify for now
        INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)Skip, IARG_END);
    }
#endif
}

VOID SyscallEntry(THREADID threadIndex, CONTEXT *ctxt, SYSCALL_STANDARD std, VOID *v)
{
    Skip();
}

VOID Fini(INT32 code, VOID *v)
{
    if (code)
    {
        exit(code);
    }
    
    std::cerr << errors << " errors (" << icount << " instructions checked)" << endl;
    exit(errors);
}

int main(INT32 argc, CHAR **argv)
{
    PIN_Init(argc, argv);
    // Use symbols to test handling of RTN of size 200000
    PIN_InitSymbols();
    
    ea_tls_key = PIN_CreateThreadDataKey(0);

    INS_AddInstrumentFunction(Instruction, 0);
    PIN_AddSyscallEntryFunction(SyscallEntry, 0);

    PIN_AddFiniFunction(Fini, 0);
    
    // Never returns
    PIN_StartProgram();
    
    return 0;
}
