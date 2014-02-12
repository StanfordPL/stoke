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
This tests the ability to handle the [REG_INST_PTR] memory operand (instruction pointer is base register
and no offset or index register). Also the ability to get the register value of the REG_INST_PTR
*/

#include <assert.h>
#include <stdio.h>
#include <string.h>

#if defined(__cplusplus)
extern "C"
#endif
void TestIpRead ();
#if defined(__cplusplus)
extern "C"
#endif
void TestIpWrite ();
#if defined(__cplusplus)
extern "C"
#endif
void Dummy ();

typedef void (*MY_FUNC_PTR)(void); 
typedef union
{
    MY_FUNC_PTR codePtr;
    char * dataPtr;
} MY_FUNC_PTR_CAST;

const size_t MAX_FUNC_SIZE = 8192;
/*!
 * Return size of the specified (foo or bar) routine
 */
size_t FuncSize(MY_FUNC_PTR func, MY_FUNC_PTR funcEnd)
{
    MY_FUNC_PTR_CAST cast;

    cast.codePtr = func;
    const char * start = cast.dataPtr;

    cast.codePtr = funcEnd;
    const char * end = cast.dataPtr;

    assert(end > start);
    assert(end - start <= MAX_FUNC_SIZE);
    return end - start;
}

/*!
 * Copy the TestIpWrite routine into a data buffer - because it contains a 
   mov [ip], 0x90
   and this write will cause an access violation if executed in the code segment
 */
void CopyAndExecuteTestIpWrite()
{
    static char staticBuffer[MAX_FUNC_SIZE];

    size_t size;
    size = FuncSize(TestIpWrite, Dummy);
    

    MY_FUNC_PTR_CAST cast;

    cast.codePtr = TestIpWrite;
    const void * funcAddr = cast.dataPtr;
    memcpy(staticBuffer, funcAddr, size);

    cast.dataPtr = static_cast<char *>(staticBuffer);
    MY_FUNC_PTR funcCopy = cast.codePtr;
    funcCopy();
}

int main(int argc, char *argv[])
{
    TestIpRead();
    CopyAndExecuteTestIpWrite();
    return 0;
}
