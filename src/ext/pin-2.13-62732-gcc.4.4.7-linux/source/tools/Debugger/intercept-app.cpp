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
 * This application only makes sense when run with the "intercept-tool" Pin tool.  It's
 * part of a test for PIN_InterceptDebuggingEvent().
 */

#include <iostream>

typedef int (*FPTR_INTRET)();
typedef void (*FPTR_VOIDRET)();

extern "C" int Checkpoint();
extern "C" void Breakpoint1();
extern "C" int Breakpoint2();


int main()
{
    // Call these functions through volatile pointers to prevent the compiler from
    // in-lining them.  The tool places instrumentation points in them, and we want
    // to make sure the application calls the out-of-line versions.
    //
    volatile FPTR_INTRET checkpoint = Checkpoint;
    volatile FPTR_VOIDRET breakpoint1 = Breakpoint1;
    volatile FPTR_INTRET breakpoint2 = Breakpoint2;

    // The Pin tool takes a snapshot in the Checkpoint() function and causes the
    // application to restart from this snapshot, however Checkpoint() returns
    // a different value for each restart.
    //
    int checkpointVal = checkpoint();

    if (checkpointVal == 0)
    {
        // Control gets here after the first return from Checkpoint().  The debugger
        // places a breakpoint in Breakpoint1().  However, the tool squashes the
        // breakpoint event and causes the application to resume from the Checkpoint()
        // snapshot.
        //
        breakpoint1();

        // Control should not get here because the tool intercepts the breakpoit above.
        //
        std::cout << "FAILURE: Tool did not intercept breakpoint" << std::endl;
        return 1;
    }

    if (checkpointVal == 1)
    {
        // Control gets here after the second return from Checkpoint().
        //
        std::cout << "SUCCESS: Tool intercepted and redirected breakpoint #1" << std::endl;

        // The debugger places a breakpoint in Breakpoint2().  However, the tool
        // intercepts the breakpoint event and changes the return value from Breakpoint2()
        // to be "1".  The body of the "if" should execute when the debugger resumes from
        // the breakpoint.
        //
        if (breakpoint2() == 1)
        {
            std::cout << "SUCCESS: Tool intercepted breakpoint #2" << std::endl;
            return 0;
        }

        // If control gets here, either the tool did not intercept the breakpoint, or
        // the tool didn't change the return value from Breakpoint2().
        //
        std::cout << "FAILURE: Tool did not intercept breakpoint #2" << std::endl;
        return 1;
    }

    std::cout << "FAILURE: Should not get here" << std::endl;
    return 1;
}

extern "C" int Checkpoint()
{
    return 0;
}

extern "C" void Breakpoint1()
{
}
