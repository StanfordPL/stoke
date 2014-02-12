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


// cpp exceptions - Exercise windows exception mechanism 
class MyClass
{
public:
    ~MyClass() 
    { 
        PinVerifyInDestructor ();
        fprintf(stderr, "In MyClass destructor\n"); 
    }
};

void second()
{
    MyClass d;
    fprintf(stderr,"In second\n");
    throw 0x1;
}

int CppException()
{
    int h = 0x1234;
    fprintf(stderr, "In first\n");
    try {
        PinVerifyInTry ();
        second();
    }

    catch(...){
        fprintf(stderr, "In catch\n");
        PinVerifyInCatch ();
    }

    PinVerifyAfterCatch ();
    fprintf(stderr, "In first After catch, h = %x \n" , h); 
    return 0;
}



int main()
{
    CppException();
    return 0;
}