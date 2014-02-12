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
// This application verifies that Pin sets up the signal handler stack with proper alignment on IA32.
// The compiler expects "esp+4" to be 16-byte aligned on entry to the signal handler function.
// We use a movaps instruction, which requires 16-byte alignment, to test for proper stack alignment.

#include <signal.h>
#include <errno.h>
#include <sys/ucontext.h>
#include <setjmp.h>
#include <cstring>
#include <cstdio>
#include <cstdlib>
#include <iostream>
#include <string>

using std::cout;
using std::cerr;
using std::endl;
using std::string;


/////////////////////
// TYPE DEFINITIONS
/////////////////////

enum TestResult
{
    TR_SUCCESS = 0,
    TR_INVALID_ARG_NUM,
    TR_INVALID_ARGUMENT,
    TR_SIGALTSTACK_FAILED,
    TR_SIGACTION_FAILED,
    TR_ACTION_INSTEADOF_HANDLER,
    TR_HANDLER_INSTEADOF_ACTION,
    TR_NOHANDLER_EXPECTED_HANDLER,
    TR_NOHANDLER_EXPECTED_ACTION,
    TR_UNEXPECTED_SETJMP_VALUE,
    TR_UNKNOWN_ERROR
};


/////////////////////
// GLOBAL VARIABLES
/////////////////////

const size_t altStackSize = 0x1000;
unsigned long resumeIp = 0;
jmp_buf jumpBuffer;
stack_t theAltStack;
bool simpleHandlerCalled = false;
bool actionHandlerCalled = false;

string resultStrings[] =
{
    "Test completed successfully",
    "Invalid number of arguments",
    "Invalid argument: ",
    "Failed to set up an alternate signal stack (sigaltstack failed)",
    "Failed to set up the signal handler (sigaction failed)",
    "Expected SimpleHandler to be used as the signal handler, but ActionHandler was called instead",
    "Expected ActionHandler to be used as the signal handler, but SimpleHandler was called instead",
    "Both SimpleHandler and ActionHandler were not called, expected SimpleHandler",
    "Both SimpleHandler and ActionHandler were not called, expected ActionHandler",
    "Received unexpected value from setjmp: ",
    "Unexpected error encountered"
};


/////////////////////
// UTILITY FUNCTIONS
/////////////////////

extern "C" void TestAlignment();

void DoSegv() __attribute__((noinline));

// This function raises a SEGV exception by attempting to access the address 0x0.
// It also sets the resumeIp variable with a recovery address.
void DoSegv()
{
//    cout << "In DoSegv" << endl; // for debug
    asm volatile (
            "movl $resume, %0;"
            "mov  $0, %%eax;"
            "mov  %%eax, (%%eax);"
            "resume:"
            : "=m"(resumeIp) :: "%eax"
                 );
}

static void SimpleHandler(int sig)
{
//    cout << "In SimpleHandler" << endl; // for debug
    TestAlignment();
    simpleHandlerCalled = true;
    longjmp(jumpBuffer, 1);
}

static void ActionHandler(int sig, siginfo_t *info, void *uctxt)
{
//    cout << "In ActionHandler" << endl; // for debug
    TestAlignment();
    actionHandlerCalled = true;
    ucontext_t* ctxt = (ucontext_t *)uctxt;
    ctxt->uc_mcontext.gregs[REG_EIP] = resumeIp;
}

static void SysError(TestResult res)
{
    string msg = "ERROR:" + resultStrings[res] + "\n";
    perror(msg.c_str());
    exit(res);
}

static void TestError(TestResult res)
{
    cerr << "ERROR: " << resultStrings[res] << endl;
    exit(res);
}

template <class T>
static void TestError(TestResult res, T val)
{
    cerr << "ERROR: " << resultStrings[res] << val << endl;
    exit(res);
}

static void InstallSignalHandler(bool useSigaction, bool useAltStack)
{
    struct sigaction sigact;
    if (useSigaction)
    {
        sigact.sa_sigaction = ActionHandler;
        sigact.sa_flags = SA_SIGINFO;
    }
    else
    {
        sigact.sa_handler = SimpleHandler;
        sigact.sa_flags = 0;
    }

    if (useAltStack)
    {
        sigact.sa_flags |= SA_ONSTACK;

        // Set up the alternate stack.
        theAltStack.ss_sp = new char[altStackSize];
        theAltStack.ss_size = altStackSize;
        if (sigaltstack(&theAltStack, NULL) != 0) SysError(TR_SIGALTSTACK_FAILED);
    }
    sigemptyset(&sigact.sa_mask);
    if (sigaction(SIGSEGV, &sigact, 0) != 0) SysError(TR_SIGACTION_FAILED);
}

static void DoTest(bool useSigaction, bool useAltStack)
{
    bool success = false;

    // Set up the signal handler.
    InstallSignalHandler(useSigaction, useAltStack);

    // Raise the SEGV exception.
    cout << "Raising SEGV" << endl;
    int res = setjmp(jumpBuffer);
    if (res == 0)
    {
        // The call to setjmp succeeded, now we can continue with the test.
        // DoSegv (below) returns only if ActionHandler is used. When SimpleHandler is used, we jump back up
        // as if setjmp returned 1.
        DoSegv();
        if (simpleHandlerCalled) TestError(TR_HANDLER_INSTEADOF_ACTION);
        else if (actionHandlerCalled) success = true;
        else TestError(TR_NOHANDLER_EXPECTED_ACTION);
    }
    else if (res == 1)
    {
        // SimpleHandler finished successfully and jumped to this location.
        if (actionHandlerCalled) TestError(TR_ACTION_INSTEADOF_HANDLER);
        else if (simpleHandlerCalled) success = true;
        else TestError(TR_NOHANDLER_EXPECTED_HANDLER);
    }
    else
    {
        // Something weird happened, we shouldn't get here.
        TestError(TR_UNEXPECTED_SETJMP_VALUE, res);
    }
    if (!success) TestError(TR_UNKNOWN_ERROR);
}


/////////////////////
// MAIN FUNCTION
/////////////////////

// Expected arguments:
// [1]: Test scenario
int main(int argc, const char** argv)
{
    if (argc != 2)
    {
        cerr << "ERROR: Invalid number of arguments, " << argc-1 << "." << endl;
        cerr << "\tUsage:" << endl << "\t\thandlerAlignment <Test # (1-4)>" << endl;
        return TR_INVALID_ARG_NUM;
    }

    // The DoTest function only returns upon success.
    // In case of an error, an informative message is printed and the application exits.
    if (strcmp(argv[1], "1") == 0)
    {
        cout << "Testing SimpleHandler on the regular stack" << endl;
        DoTest(/*useSigaction*/ false, /*useAltStack*/ false);
    }
    else if (strcmp(argv[1], "2") == 0)
    {
        cout << "Testing ActionHandler on the regular stack" << endl;
        DoTest(/*useSigaction*/ true, /*useAltStack*/ false);
    }
    else if (strcmp(argv[1], "3") == 0)
    {
        cout << "Testing SimpleHandler on the alternate stack" << endl;
        DoTest(/*useSigaction*/ false, /*useAltStack*/ true);
    }
    else if (strcmp(argv[1], "4") == 0)
    {
        cout << "Testing ActionHandler on the alternate stack" << endl;
        DoTest(/*useSigaction*/ true, /*useAltStack*/ true);
    }
    else TestError(TR_INVALID_ARGUMENT, argv[1]);

    cout << "Test completed successfully" << endl;
    return TR_SUCCESS;
}
