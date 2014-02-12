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
  @ORIGINAL_AUTHOR: Daniel Lemel
 */

/*! @file
 *  Basic tests for some INS_* APIs.
 */

#include "pin_tests_util.H"

UINT32 fullRegRContainCount = 0;
UINT32 interruptCount = 0;
UINT32 rdtscCount = 0;
UINT32 sysretCount = 0;
UINT32 xchgCount = 0;
UINT32 directFarJumpCount = 0;
UINT32 memoryIndexRegCount = 0;

VOID CountsUpdate(INS ins)
{
    if (INS_FullRegRContain(ins, REG_EAX) && XED_CATEGORY_WIDENOP != INS_Category(ins)) fullRegRContainCount++;
    if (INS_IsInterrupt(ins)) interruptCount++;
    if (INS_IsRDTSC(ins)) rdtscCount++;
    if (INS_IsSysret(ins)) sysretCount++;
    if (INS_IsXchg(ins)) xchgCount++;

    if (INS_IsDirectFarJump(ins)) {
        directFarJumpCount++;

        UINT32 displacement; UINT16 segment;
        INS_GetFarPointer(ins, segment, displacement);
        TEST(segment == 0xabcd && displacement == 0x14, "INS_GetFarPointer failed");
    }
    if (INS_MemoryIndexReg(ins) != REG_INVALID() && XED_CATEGORY_WIDENOP != INS_Category(ins)) memoryIndexRegCount++;
}

VOID Rtn(RTN rtn, VOID * v)
{
    string name = RTN_Name(rtn);
    if (name == "test1") {
        RTN_Open(rtn);
        for (INS ins = RTN_InsHead(rtn); INS_Valid(ins); ins = INS_Next(ins)) {
            CountsUpdate(ins);
        }
        RTN_Close(rtn);
    }
}

VOID Fini(INT32 code, VOID *v)
{
    // "xor eax, eax" & "cmp eax, 0x0" are also counted in fullRegRContainCount
    TEST(fullRegRContainCount == 3, "INS_FullRegRContain failed"); 
    TEST(interruptCount == 1, "INS_IsInterrupt failed");
    TEST(rdtscCount == 1, "INS_IsRDTSC failed");
    TEST(sysretCount == 1, "INS_IsSysret failed");
    TEST(xchgCount == 1, "INS_IsXchg failed");
    TEST(directFarJumpCount == 1, "INS_GetFarPointer failed");
    TEST(memoryIndexRegCount == 1, "INS_MemoryIndexReg failed");
}

int main(INT32 argc, CHAR **argv)
{
    PIN_InitSymbols();
    PIN_Init(argc, argv);
    
    RTN_AddInstrumentFunction(Rtn, 0);
    PIN_AddFiniFunction(Fini, 0);
    
    // Never returns
    PIN_StartProgram();
    
    return 0;
}
