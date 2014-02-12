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
 * This test causes and handles access violations/bus errors in 
   instructions that use the ebx register implicitly.
   The relevant instructions are cmpxchg8b and xlat (which uses ebx as
   a base register)
 */

#include <windows.h>
#include <stdio.h>
#include <iostream>
#include <sstream>
#include <iomanip>
#include <fstream>
#include <cstdlib>
using namespace std;

/*!
 * @return IP register value in the given exception context
 */
#if     defined(TARGET_IA32)
static ULONG_PTR GetIp(CONTEXT * pExceptContext) {return pExceptContext->Eip;}
static VOID SetIp(LPEXCEPTION_POINTERS exceptPtr, ULONG_PTR addr) {exceptPtr->ContextRecord->Eip=addr;}
#elif   defined(TARGET_IA32E)
static ULONG_PTR GetIp(CONTEXT * pExceptContext) {return pExceptContext->Rip;}
static VOID SetIp(LPEXCEPTION_POINTERS exceptPtr, ULONG_PTR addr) {exceptPtr->ContextRecord->Rip=addr;}
#else
#error Unsupported architechture
#endif

extern "C" unsigned int GetInstructionLenAndDisasm (unsigned char *ip, string *str);
extern "C" int TestAccessViolations();
int numExceptions = 0;

/*!
 * Exception filter for the ExecuteSafe function: copy the exception record 
 * to the specified structure.
 * @param[in] exceptPtr        pointers to the exception context and the exception 
 *                             record prepared by the system
 * @param[out] pExceptRecord   pointer to the structure that receives the 
 *                             exception record
 * @param[out] pExceptContext  pointer to the structure that receives the 
 *                             exception context
 * @return the exception disposition
 */
static int SafeExceptionFilter(LPEXCEPTION_POINTERS exceptPtr, 
                               EXCEPTION_RECORD * pExceptRecord,
                               CONTEXT * pExceptContext)
{
    numExceptions++;
    *pExceptRecord  = *(exceptPtr->ExceptionRecord);
    *pExceptContext = *(exceptPtr->ContextRecord);
    fprintf (stderr, "SafeExceptionFilter: Exception code %x Exception address %p Context IP %p \npExceptContext->Eax %p exceptPtr->ContextRecord->Eax %p\npExceptContext->Ebx %p exceptPtr->ContextRecord->Ebx %p\npExceptContext->Ecx %p exceptPtr->ContextRecord->Ecx %p\npExceptContext->Edx %p exceptPtr->ContextRecord->Edx %p\n",
                   pExceptRecord->ExceptionCode, (ULONG_PTR)(pExceptRecord->ExceptionAddress), GetIp(pExceptContext),
                   pExceptContext->Eax, exceptPtr->ContextRecord->Eax,
                   pExceptContext->Ebx, exceptPtr->ContextRecord->Ebx,
                   pExceptContext->Ecx, exceptPtr->ContextRecord->Ecx,
                   pExceptContext->Edx, exceptPtr->ContextRecord->Edx);
    // continue execution at the instruction following the exception causing instruction
    ULONG_PTR ipToContinueAt = GetIp(pExceptContext);
    string str;
    UINT32 instructionLen = GetInstructionLenAndDisasm((UINT8 *)ipToContinueAt, &str);
    if (0 == instructionLen)
    {
        fprintf (stderr, "***Error\n");
        exit (1);
    }
    fprintf (stderr,"segv at: %s\n", str.c_str());
    ipToContinueAt 
        = (ULONG_PTR)((UINT8 *)ipToContinueAt + instructionLen);
    fprintf (stderr, " setting resume ip to %p\n", ipToContinueAt);
    instructionLen = GetInstructionLenAndDisasm((unsigned char *)ipToContinueAt, &str);
    if (0 == instructionLen)
    {
        fprintf (stderr, "***Error 0 length instruction at ip %p\n", ipToContinueAt);
        exit (1);
    }
    fprintf (stderr,"  resume instruction is %s\n", str.c_str());
    SetIp(exceptPtr, ipToContinueAt);
    return EXCEPTION_CONTINUE_EXECUTION;// EXCEPTION_EXECUTE_HANDLER;
}

extern "C" void InitXed ();
int main (int argc, char *argv[])
{
    InitXed();
    int retVal;
    EXCEPTION_RECORD exceptRecord;
    CONTEXT exceptContext;
    __try 
    { 
        retVal = TestAccessViolations();
    } 
    __except (SafeExceptionFilter(GetExceptionInformation(), &exceptRecord, &exceptContext))
    { 
            fprintf (stderr, "Exception handler: Exception code %x Exception address %p Context IP %p\n",
                   exceptRecord.ExceptionCode, (ULONG_PTR)(exceptRecord.ExceptionAddress), GetIp(&exceptContext));    
    }  
    if (!retVal || numExceptions!=3)
    {
        fprintf (stderr, "***Error\n");
        exit (1);
    }
}
