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
#include <fstream>

#ifdef __GNUC__
// GCC 4.4 has more aggressive inliner, when it is inlined in main below that alignment of
// a10 is not the same as from a normal call (according to the calling convensions).
static VOID CheckAlign(ADDRINT a1, ADDRINT a2, ADDRINT a3, ADDRINT a4, ADDRINT a5,
                       ADDRINT a6, ADDRINT a7, ADDRINT a8, ADDRINT a9, ADDRINT a10) __attribute__ ((noinline));
#endif


// The test validates that Pin retains stack alignment in analysis routine
// according to standard calling conventions.
static VOID CheckAlign(
             ADDRINT a1,
             ADDRINT a2,
             ADDRINT a3,
             ADDRINT a4,
             ADDRINT a5,
             ADDRINT a6,
             ADDRINT a7,
             ADDRINT a8,
             ADDRINT a9,
             ADDRINT a10
)
{
    // a10 is assumed to reside in stack
    static const ADDRINT a10addr = (ADDRINT)&a10;


#if defined(TARGET_IA32E) || defined(TARGET_MAC) || defined(TARGET_BSD)
    // stack alignment should be preserved even if the function is called from instrumented code
    ASSERTX((a10addr & 0xf) == ((ADDRINT)&a10 & 0xf));
#else
    ASSERTX((a10addr % sizeof(ADDRINT)) == 0);
#endif
}

VOID Instruction(INS ins, VOID *v)
{
    INS_InsertCall(ins, IPOINT_BEFORE, AFUNPTR(CheckAlign),
                       IARG_ADDRINT, 1,
                       IARG_ADDRINT, 2,
                       IARG_ADDRINT, 3,
                       IARG_ADDRINT, 4,
                       IARG_ADDRINT, 5,
                       IARG_ADDRINT, 6,
                       IARG_ADDRINT, 7,
                       IARG_ADDRINT, 8,
                       IARG_ADDRINT, 9,
                       IARG_ADDRINT, 10,
                       IARG_END);
}

int main(int argc, char * argv[])
{
    PIN_Init(argc, argv);

    INS_AddInstrumentFunction(Instruction, 0);

    // First call of the analysis routine should be done from regular code.
    CheckAlign(1, 2, 3, 4, 5, 6, 7, 8, 9, 10);

    // Never returns
    PIN_StartProgram();

    return 0;
}
