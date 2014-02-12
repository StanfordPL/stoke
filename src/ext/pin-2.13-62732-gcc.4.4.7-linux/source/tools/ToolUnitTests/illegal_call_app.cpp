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
#include <windows.h>
#include <stdio.h>

typedef int ( * FUNCTION_POINTER_TYPE)();

unsigned int exceptCode = 0;

static int MyExceptionFilter(LPEXCEPTION_POINTERS exceptPtr)
{
    exceptCode = exceptPtr->ExceptionRecord->ExceptionCode;
    return EXCEPTION_EXECUTE_HANDLER;
}

char data[64*1024]= {0x0f, 0x0b}; // this is an illegal instruction

int main (int argc, char *argv[])
{
    BOOL gotIllegalInstructionException = FALSE;
    BOOL gotFirstAccessViolationException = FALSE;
    BOOL gotSecondAccessViolationException = FALSE;
    DWORD oldProtect;
    VirtualProtect(data, 15, PAGE_EXECUTE_READ, &oldProtect);
    fprintf (stderr, "VirtualProtect returned %x\n", oldProtect);
    
    __try 
    {
        FUNCTION_POINTER_TYPE fPtr;
        fPtr = reinterpret_cast<FUNCTION_POINTER_TYPE>((char *)data);
        fprintf (stderr, "fPtr to data is at %p\n", fPtr);
        fPtr();
    }
    __except (MyExceptionFilter(GetExceptionInformation()))
    {
        fprintf (stderr, "Executed call to data Got exception code %x\n", exceptCode);
        gotIllegalInstructionException = (exceptCode==EXCEPTION_ILLEGAL_INSTRUCTION);
    }

    FUNCTION_POINTER_TYPE fPtr;
    __try 
    {
        
        fPtr = reinterpret_cast<FUNCTION_POINTER_TYPE>(-8);
        fPtr();
    }
    __except (MyExceptionFilter(GetExceptionInformation()))
    {
        fprintf (stderr, "Executed call to %p, Got exception code %x\n", fPtr, exceptCode);
        gotFirstAccessViolationException = (exceptCode==EXCEPTION_ACCESS_VIOLATION);
    }

    __try 
    {
        fPtr = reinterpret_cast<FUNCTION_POINTER_TYPE>(-1);
        fPtr();
    }
    __except (MyExceptionFilter(GetExceptionInformation()))
    {
        fprintf (stderr, "Executed call to %p, Got exception code %x\n", fPtr, exceptCode);
        gotSecondAccessViolationException = (exceptCode==EXCEPTION_ACCESS_VIOLATION);
    }

    BOOL haveError = FALSE;
    if (!gotIllegalInstructionException)
    {
        haveError = TRUE;
        fprintf (stderr, "***Error: did not get expected EXCEPTION_ILLEGAL_INSTRUCTION\n");
    }
    if (!gotFirstAccessViolationException)
    {
        haveError = TRUE;
        fprintf (stderr, "***Error: did not get first expected EXCEPTION_ACCESS_VIOLATION\n");
    }
    if (!gotSecondAccessViolationException)
    {
        haveError = TRUE;
        fprintf (stderr, "***Error: did not get second expected EXCEPTION_ACCESS_VIOLATION\n");
    }
    if (haveError)
    {
        exit (1);
    }
    return (0);
}
