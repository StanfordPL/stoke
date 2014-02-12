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
#include <Windows.h>
#include <stdio.h>
#define EXPORT_SYM __declspec( dllexport ) 

int dummy;
/* These Pin* functions are hooks that will be hooked by functions in the 
   exception_monitor.dll tool, in order to verify that PIN has not lost control
   when excecption handling occurs
*/
extern "C"
EXPORT_SYM void PinVerifyInTry ()
{
    dummy=1;
}

extern "C"
EXPORT_SYM
void PinVerifyInCatch ()
{
    dummy=2;
}

extern "C"
EXPORT_SYM
void PinVerifyAfterCatch ()
{
    dummy=3;
}

extern "C"
EXPORT_SYM
void PinVerifyInDestructor ()
{
    dummy=4;
}

// divide by zero exception - Exercise windows exception mechanism 
int DivideByZero()
{
    static int zero = 0;
    __try 
    { 
        PinVerifyInTry ();
        fprintf(stderr, "Going to divide by zero\n");
        int i  = 1 / zero; 
    } 
    __except(GetExceptionCode() == EXCEPTION_INT_DIVIDE_BY_ZERO ? EXCEPTION_EXECUTE_HANDLER : 
        EXCEPTION_CONTINUE_SEARCH)
    { 
        PinVerifyInCatch ();
        fprintf(stderr, "Catching divide by zero\n");
        fflush(stderr);
        return FALSE;
    }
    PinVerifyAfterCatch ();
    return TRUE;
}

/*------------------------  dispatcher ----------------------*/


int main()
{
    DivideByZero();
    return 0;
}