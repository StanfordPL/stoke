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
 * @ORIGINAL_AUTHOR: Greg Lueck
 *
 * A sample tool that extends GDB by adding "checkpoint" and "resume" commands.
 * This is a very simple example that works only for single-threaded applications.
 */

#include "pin.H"
#include "memlog.hpp"

static CONTEXT Registers;
static MEMLOG MemLog;
static BOOL isCheckpointing = FALSE;


static VOID Instruction(INS, VOID *);
static VOID OnMemWrite(ADDRINT, ADDRINT);
static BOOL DebugInterpreter(THREADID, CONTEXT *, const string &, string *, VOID *);


int main(int argc, char *argv[])
{
    if (PIN_Init(argc, argv))
        return 1;

    PIN_AddDebugInterpreter(DebugInterpreter, 0);
    INS_AddInstrumentFunction(Instruction, 0);

    PIN_StartProgram();
    return 0;
}


static VOID Instruction(INS ins, VOID *)
{
    if (INS_IsMemoryWrite(ins))
    {
        INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)OnMemWrite,
            IARG_MEMORYWRITE_EA, IARG_MEMORYWRITE_SIZE, IARG_END);
    }
}


static VOID OnMemWrite(ADDRINT addr, ADDRINT size)
{
    if (isCheckpointing)
        MemLog.Record(addr, size);
}


static BOOL DebugInterpreter(THREADID, CONTEXT *ctxt, const string &cmd, string *, VOID *)
{
    if (cmd == "checkpoint")
    {
        PIN_SaveContext(ctxt, &Registers);
        isCheckpointing = TRUE;
        return TRUE;
    }
    if (cmd == "restore")
    {
        PIN_SaveContext(&Registers, ctxt);
        MemLog.Restore();
        return TRUE;
    }
    return FALSE;
}
