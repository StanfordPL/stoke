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
 *  check the RTN_NumIns interface.
 */

#include "pin_tests_util.H"

VOID Rtn(RTN rtn, VOID * v)
{
    RTN_Open(rtn);
    UINT32 insNum2 = 0;
    RTN_Close(rtn);// The rtn is intentionally closed and then it is opened again.
                   // This is done in order to check the correctness of both
                   // "RTN_NumIns" and "RTN_InsTail" independently.
                
    UINT32 insNum1 = RTN_NumIns(rtn);
    RTN_Open(rtn);
    for (INS ins = RTN_InsTail(rtn); INS_Valid(ins); ins = INS_Prev(ins)) {
        insNum2++;
    }
    TEST(insNum1 == insNum2, "RTN_NumIns failed");
    RTN_Close(rtn);
}

int main(INT32 argc, CHAR **argv)
{
    PIN_Init(argc, argv);
    
    RTN_AddInstrumentFunction(Rtn, 0);
    
    // Never returns
    PIN_StartProgram();
    
    return 0;
}
