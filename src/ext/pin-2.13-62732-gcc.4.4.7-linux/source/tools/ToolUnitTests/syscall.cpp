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
#include <stdlib.h>
#include <stdio.h>
#include "pin.H"

// unmatched_syscall_ip keeps track of the IP of the last syscall encounted.
// It is set before the syscall and reset afterward. Therefore, if the
// afterward instrumentation is bypassed, which could happen due to the funny
// control flow in sysenter on x86, then we will see a non-zero value in
// unmatched_syscall_ip when we execute the next syscall.

ADDRINT unmatched_syscall_ip = 0;

VOID BeforeSyscall(ADDRINT ip)
{
    if (unmatched_syscall_ip != 0)
    {
        printf("AfterSyscall() is not executed after the syscall at %lx\n",
               (unsigned long)unmatched_syscall_ip);
        fflush(stdout);
        exit(1);
    }
    
    unmatched_syscall_ip = ip;
}

VOID AfterSyscall(ADDRINT ip)
{
    unmatched_syscall_ip = 0;
}

VOID SyscallEntry(THREADID threadIndex, CONTEXT *ctxt, SYSCALL_STANDARD std, VOID *v)
{
    BeforeSyscall(PIN_GetContextReg(ctxt, REG_INST_PTR));
}

VOID SyscallExit(THREADID threadIndex, CONTEXT *ctxt, SYSCALL_STANDARD std, VOID *v)
{
    AfterSyscall(PIN_GetContextReg(ctxt, REG_INST_PTR));
}

VOID Instruction(INS ins, VOID *v)
{
    // For O/S's (Mac) that don't support PIN_AddSyscallEntryFunction(),
    // instrument the system call instruction.

    if (INS_IsSyscall(ins) && INS_HasFallThrough(ins))
    {
        INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)BeforeSyscall, IARG_INST_PTR, IARG_END);
        INS_InsertCall(ins, IPOINT_AFTER, (AFUNPTR)AfterSyscall, IARG_INST_PTR, IARG_END);
    }
}

static VOID OnContextChange(THREADID threadIndex, CONTEXT_CHANGE_REASON reason, const CONTEXT *ctxtFrom,
                            CONTEXT *ctxtTo, INT32 info, VOID *v)
{
    // We may jump to UPC/signal while in system call (i.e. before it is return)
    // The code of this UPC may in its turn call another system call which will
    // see unmatched_syscall_ip != 0.
    unmatched_syscall_ip = 0;
}


int main(INT32 argc, CHAR **argv)
{
    PIN_Init(argc, argv);
    
    INS_AddInstrumentFunction(Instruction, 0);

    PIN_AddSyscallEntryFunction(SyscallEntry, 0);
    PIN_AddSyscallExitFunction(SyscallExit, 0);

    PIN_AddContextChangeFunction(OnContextChange, 0);
    
    // Never returns
    PIN_StartProgram();
    
    return 0;
}
