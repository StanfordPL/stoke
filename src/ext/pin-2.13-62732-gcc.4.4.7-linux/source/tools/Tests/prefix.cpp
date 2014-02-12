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
 *  Chek the prefixes APIs.
 */

#include "pin_tests_util.H"
#include <fstream>

UINT32 addressSizePrefixCount = 0;
UINT32 branchNotTakenPrefixCount = 0;
UINT32 branchTakenPrefixCount = 0;
UINT32 lockPrefixCount = 0;
UINT32 operandSizePrefixCount = 0;
UINT32 repPrefixCount = 0;
UINT32 repnePrefixCount = 0;
UINT32 segmentPrefixCount = 0;

VOID CountsUpdate(INS ins)
{
    if (INS_AddressSizePrefix(ins))          addressSizePrefixCount++;
    if (INS_BranchNotTakenPrefix(ins))       branchNotTakenPrefixCount++;
    if (INS_BranchTakenPrefix(ins))          branchTakenPrefixCount++;
    if (INS_LockPrefix(ins))                 lockPrefixCount++;
    if (INS_OperandSizePrefix(ins))          operandSizePrefixCount++;
    if (INS_RepPrefix(ins))                  repPrefixCount++;
    if (INS_RepnePrefix(ins))                repnePrefixCount++;
    if (INS_SegmentPrefix(ins))              segmentPrefixCount++;
}

VOID Rtn(RTN rtn, VOID * v)
{
    string name = RTN_Name(rtn);
    if ((name == "test1") || (name == "test2")) {
        RTN_Open(rtn);
        for (INS ins = RTN_InsHead(rtn); INS_Valid(ins); ins = INS_Next(ins)) {
            CountsUpdate(ins);
        }
        RTN_Close(rtn);
    }
}

VOID Fini(INT32 code, VOID *v)
{
    TEST(addressSizePrefixCount == 1,        "INS_AddressSizePrefix failed");
    TEST(branchNotTakenPrefixCount == 0,     "INS_BranchNotTakenPrefix failed");
    TEST(branchTakenPrefixCount == 0,        "INS_BranchTakenPrefix failed");
    TEST(lockPrefixCount == 1,               "INS_LockPrefix failed");
    TEST(operandSizePrefixCount == 1,        "INS_OperandSizePrefix failed");
    TEST(repPrefixCount == 1,                "INS_RepPrefix failed");
    TEST(repnePrefixCount == 1,              "INS_RepnePrefix failed");
    TEST(segmentPrefixCount == 1,            "INS_SegmentPrefix failed");
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
