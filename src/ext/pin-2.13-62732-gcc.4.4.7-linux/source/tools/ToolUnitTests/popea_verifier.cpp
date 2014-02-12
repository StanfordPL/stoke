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
 * Check that we get the correct effective addresses for pop ops where the stack pointer
 * is part of the address.
 * It is *not* sufficient to use lea on the address, because the stack pointer is adjusted
 * *before* the address is calculated.
 *
 * That's a special case, hence a special test...
 *
 * This is intended to be used with the "far" test, or smallpush since they already have suitable
 * instructions in them.
 */

#include <stdio.h>
#include <stdlib.h>
#include "pin.H"

KNOB<BOOL>   KnobTrace(KNOB_MODE_WRITEONCE, "pintool", "t", "0", "trace memory addresses of interest");
KNOB<string> KnobOutput(KNOB_MODE_WRITEONCE,"pintool", "o", "popea_verifier.out", "Name for log file");

static FILE *trace = NULL;

static UINT32 fails = 0;
static UINT32 tests = 0;

/* Check the address we are given matches that we calculate from the ctx 
 * 
 * We're only looking at pop offset(%esp) instructions.
 */

static VOID validateWriteAddress (ADDRINT ip, ADDRINT writeAddr, ADDRINT esp, ADDRDELTA offset, UINT32 operandSize)
{
    ADDRINT expectedAddress = esp+operandSize+offset; /* ESP is incremented *BEFORE* it is used in addressing */
    
    if (writeAddr != expectedAddress)
    {
        fprintf (trace, "%p: EA %p should be %p\n", (void*)ip, (void*)writeAddr, (void*)expectedAddress);
        fails++;
    }
    else if (KnobTrace)
    {
        fprintf (trace, "%p: EA %p OK\n", (void*)ip, (void*)writeAddr);
    }
    tests++;
}

static VOID RewriteIns(INS ins, VOID *)
{
    if (INS_Opcode(ins) != XED_ICLASS_POP)
        return;
    
    if (!INS_IsMemoryWrite(ins))
        return;

    if (INS_MemoryBaseReg(ins) != REG_STACK_PTR)
        return;

    // If we get here we have a pop into a stack pointer relative address.
    ADDRDELTA offset = INS_MemoryDisplacement(ins);
    INS_InsertCall(ins, IPOINT_BEFORE,
                   AFUNPTR(validateWriteAddress),
                   IARG_INST_PTR,
                   IARG_MEMORYWRITE_EA,
                   IARG_REG_VALUE, REG_STACK_PTR,
                   IARG_ADDRINT, offset,
                   IARG_UINT32, INS_MemoryReadSize(ins), 
                   IARG_END);
}

void AtEnd(INT32 code, VOID *arg)
{
    fprintf (trace, "Tested: %d, failed: %d\n", tests, fails);
    fclose(trace);
    exit (fails);
}

int main(int argc, char * argv[])
{
    PIN_InitSymbols();
    PIN_Init(argc, argv);

    trace = fopen(KnobOutput.Value().c_str(), "w");
    if (!trace)
    {
        perror("fopen");
        return 1;
    }

    INS_AddInstrumentFunction(RewriteIns, 0);
    PIN_AddFiniFunction(AtEnd, 0);

    // Never returns
    PIN_StartProgram();
    
    return 0;
}
