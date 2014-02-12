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
 *  This is a test for correct functionality of multiple instrumentations at
 *  a single instrumentation point.
 */

#include <stdio.h>
#include <stdlib.h>
#include "pin.H"

FILE * trace;

const INT32 N = 100000;
const INT32 M =  50000;
const INT32 K =  1000;

static UINT32 syscallCount = 0;

INT32 icount = K;

ADDRINT CountDown()
{
    --icount;
    return (icount==0);
}


// The IP of the current instruction will be printed and
// the icount will be reset to a random number between N and N+M.
VOID PrintIp(VOID *ip)
{
    // Prepare for next period
    icount = N + rand() % M; // random number from N to N+M
}

// Print the return value of the system call
VOID SysAfter(ADDRINT ip)
{
    syscallCount++;
}

// Pin calls this function every time a new instruction is encountered
VOID Instruction(INS ins, VOID *v)
{
    if (INS_IsSyscall(ins) && INS_HasFallThrough(ins))
    {
            // CountDown() is called for every instruction executed
            INS_InsertIfCall(ins, IPOINT_AFTER, (AFUNPTR)CountDown, IARG_END);
         
            // PrintIp() is called only when the last CountDown() returns a non-zero value.
            INS_InsertThenCall(ins, IPOINT_AFTER, (AFUNPTR)PrintIp, IARG_INST_PTR, IARG_END);
                // return value only available after
            INS_InsertCall(ins, IPOINT_AFTER, AFUNPTR(SysAfter),
                       IARG_INST_PTR,
                       IARG_END);
    }
    
}

// This function is called when the application exits
VOID Fini(INT32 code, VOID *v)
{
    ASSERTX(syscallCount > 0);
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
