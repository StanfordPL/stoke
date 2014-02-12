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
 * Check some threads interfaces.
 */

#include <sys/types.h>
#include <sys/wait.h>
#include "pin_tests_util.H"

OS_THREAD_ID father_id = INVALID_OS_THREAD_ID;

VOID AppStart(VOID *v)
{
    father_id = PIN_GetTid();
    PRINT_ME_AND_MY_FATHER();
    TEST(father_id != INVALID_OS_THREAD_ID, "PIN_GetTid failed");
}

VOID ThreadStart(THREADID threadIndex, CONTEXT *ctxt, INT32 flags, VOID *v)
{
    PRINT_ME_AND_MY_FATHER();
    // only the new thread should check it
    if (PIN_GetParentTid() != INVALID_OS_THREAD_ID) {
        TEST(PIN_GetParentTid() == father_id, "PIN_GetParentTid failed");
    }

    TEST(PIN_ThreadUid() !=  INVALID_PIN_THREAD_UID, "PIN_ThreadUid failed");
}

int main(INT32 argc, CHAR **argv)
{
    PIN_Init(argc, argv);

    PIN_AddApplicationStartFunction(AppStart, 0);
    PIN_AddThreadStartFunction(ThreadStart, 0);

    // Never returns
    PIN_StartProgram();
    
    return 0;
}
