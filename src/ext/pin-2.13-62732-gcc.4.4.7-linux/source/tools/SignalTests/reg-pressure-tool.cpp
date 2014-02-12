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
 * This tool inserts a lot of useless instrumentation just to put
 * pressure on the Pin register allocator.
 */

#include <pin.H>


static const unsigned NUM_SCRATCH = 4;
static REG ScratchRegs[NUM_SCRATCH];

static void InstrumentIns(INS, VOID *);
static ADDRINT MakePressure(ADDRINT, ADDRINT, ADDRINT, ADDRINT, ADDRINT);


int main(int argc, char * argv[])
{
    PIN_Init(argc, argv);

    for (unsigned i = 0;  i < NUM_SCRATCH;  i++)
        ScratchRegs[i] = PIN_ClaimToolRegister();

    INS_AddInstrumentFunction(InstrumentIns, 0);

    PIN_StartProgram();
    return 0;
}

static void InstrumentIns(INS ins, VOID *)
{
    REG retReg = ScratchRegs[INS_Address(ins) % NUM_SCRATCH];

    IARGLIST args = IARGLIST_Alloc();
    for (unsigned i = 0;  i < NUM_SCRATCH;  i++)
        IARGLIST_AddArguments(args, IARG_REG_VALUE, ScratchRegs[i], IARG_END);

    INS_InsertCall(ins, IPOINT_BEFORE, AFUNPTR(MakePressure),
        IARG_RETURN_REGS, retReg,
        IARG_REG_VALUE, REG_STACK_PTR,
        IARG_IARGLIST, args,
        IARG_END);
    IARGLIST_Free(args);
}

static ADDRINT MakePressure(ADDRINT sp, ADDRINT s0, ADDRINT s1, ADDRINT s2, ADDRINT s3)
{
    return sp + s0 + s1 + s2 + s3;
}
