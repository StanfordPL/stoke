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
#include "probe_stdcall_fastcall.h"

DWORD GetEspBeforeCalled(void);

#define EXPORT_SYM __declspec( dllexport ) 


int dummyVar;

EXPORT_SYM DummyFunc1()
{
    dummyVar = 1;
}

char funcChar1 = 0, funcChar2 = 0;
char funcInt1 = 0, funcInt2 = 0;
EXPORT_SYM void __fastcall FastCallFunctionToBeReplacedByPin( char c1, 
                                                              int num1,
                                                              char c2,
                                                              int num2)


{  
    funcChar1 = c1;
    funcChar2 = c2;
    funcInt1 = num1;
    funcInt2 = num2;
}

EXPORT_SYM Dummyfunc()
{
    dummyVar = 2;
}
main ()
{

    BOOL success = TRUE;
    DWORD esp;
    esp = GetEspBeforeCalled();
    FastCallFunctionToBeReplacedByPin (CHAR_VAL1, INT_VAL1, CHAR_VAL2, INT_VAL2);
    if (esp != GetEspBeforeCalled())
    {
        printf ("APP ERROR: FastCallFunctionToBeReplacedByPin returned with bad stack\n");
        success = FALSE;
    }

    

    if (funcChar1 != CHAR_VAL1+CHAR_ADD_VAL1)
    {
        printf ("APP ERROR: FastCallFunctionToBeReplacedByPin was not passed in c1 as expected, actual funcChar1 %c\n", funcChar1);
        success = FALSE;
    }
    if (funcChar2 != CHAR_VAL2+CHAR_ADD_VAL2)
    {
        printf ("APP ERROR: FastCallFunctionToBeReplacedByPin was not passed in c1 as expected, actual funcChar2 %c\n", funcChar2);
        success = FALSE;
    }
    if (funcInt1 != INT_VAL1+INT_ADD_VAL1)
    {
        printf ("APP ERROR: FastCallFunctionToBeReplacedByPin was not passed in num1 as expected, actual funcInt1 %d\n", funcInt1);
        success = FALSE;
    }
    if (funcInt2 != INT_VAL2+INT_ADD_VAL2)
    {
        printf ("APP ERROR: FastCallFunctionToBeReplacedByPin was not passed in num2 as expected, actual funcInt2 %d\n", funcInt2);
        success = FALSE;
    }
    
    if (success)
    {
        printf ("SUCCESS\n");
    }

}