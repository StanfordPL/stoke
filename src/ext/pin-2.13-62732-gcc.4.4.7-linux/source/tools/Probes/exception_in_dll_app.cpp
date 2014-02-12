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
#include <stdio.h>


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


extern "C" void ExcInDll();
static int (*pBar)() = 0;

extern "C" unsigned long getstack();
extern "C" unsigned long getebp();

int bar()
{
    return 0;
}
extern "C"
void foo1()
{
    if (!pBar) throw(0);
    // May cause exception due to NULL pointer
    pBar();
}

extern "C"
void foo2()
{
    ExcInDll();
}

int main()
{
    int local = 1;

    unsigned long stackBefore = getstack();
    unsigned long framePtrBefore = getebp();
    try
    {
        MyClass ins;
        foo1();
        local = 0;
    }
    catch(...)
    {
        // If Pin translated probed code properly, exception will reach the handler
        printf("Exception\n");
    }
    unsigned long stackAfter = getstack();
    unsigned long framePtrAfter = getebp();
    
    if ((stackBefore != stackAfter) || (framePtrBefore != framePtrAfter))
    {
        printf("before try  Stack at 0x%x, ebp 0x%x\n", getstack(), getebp());
        printf("after catch Stack at 0x%x, ebp 0x%x\n", getstack(), getebp());
        return -1;
    }
    
    int param1 = 1;
    int param2 = param1 * 5;
    float param3 = 0.5*1.5;
    float expectedResult = 0;
    try
    {
        expectedResult = param3+param2+param1;
        foo2();
    }
    catch(...)
    {
        float afterCatchResult = param3+param2+param1;
        if (afterCatchResult != expectedResult)
        {
            printf("expectedResult = %f; afterCatchResult = %f\n", expectedResult, afterCatchResult);
            printf("Registers may be restored incorrectly in the catch block\n");
            return -1;
        }
        else
        {
            printf("Try-catch works correctly while exception propagation from dll\n");
        }
        
    }
    stackAfter = getstack();
    framePtrAfter = getebp();
    
    if ((stackBefore != stackAfter) || (framePtrBefore != framePtrAfter))
    {
        printf("Incorrect stack of frame ptr after exception propagation from dll");
        printf("before try  Stack at 0x%x, ebp 0x%x\n", getstack(), getebp());
        printf("after catch Stack at 0x%x, ebp 0x%x\n", getstack(), getebp());
        return -1;
    }
            
    // Check that destructor was called and local var value was not changed when exception was handled
    if (!destructed || (local != 1))
    {
        return 1;
    }

    pBar = bar;

    try
    {
        foo1();
    }
    catch(...)
    {
        // No exception expected
        printf("Exception\n");
    }

    return 0;
}
