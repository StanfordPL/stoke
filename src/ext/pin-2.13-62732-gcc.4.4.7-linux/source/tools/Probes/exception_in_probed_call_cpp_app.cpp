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
  This application causes exception in indirect call instruction and catches it in caller.
  The call instruction is located in code region being replaced by Pin probe.
  Pin translation should not affect propagation of the exception to the C++ exception handler.
*/
#ifndef TARGET_LINUX

#include <windows.h>

#endif
#include <stdio.h>

#ifndef TARGET_LINUX
#define FASTCALL __fastcall
#define DLLEXPORT __declspec(dllexport)
#else
#define FASTCALL 
#define DLLEXPORT 
#endif

bool destructed = false;

// cpp exceptions - Exercise windows exception mechanism 
class MyClass
{
public:
    ~MyClass() 
    { 
        destructed = true;
    }
};


static int (*pBar)() = 0;

int bar()
{
    return 0;
}
extern "C"
DLLEXPORT
int foo()
{
#ifdef TARGET_LINUX
    if (!pBar) throw(0);
#endif
    // May cause exception due to NULL pointer
    return pBar();
}

int main()
{
    int i = 2;
    int local = 1;

    try
    {
        MyClass ins;
        i = foo();
        local = 0;
    }
    catch(...)
    {
        // If Pin translated probed code properly, exception will reach the handler
        printf("Exception\n");
    }

    // Check that destructor was called and local var value was not changed when exception was handled
    if (!destructed || (local != 1))
    {
        return 1;
    }

    pBar = bar;

    try
    {
        i = foo();
    }
    catch(...)
    {
        // No exception expected
        printf("Exception\n");
    }

    return i;
}
