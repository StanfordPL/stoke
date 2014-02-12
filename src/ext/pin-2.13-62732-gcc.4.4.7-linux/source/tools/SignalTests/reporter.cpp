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
 * This tool prints a log message whenever a signal is recieved or whenever
 * a context-change happens.
 */

#include <fstream>
#include <sstream>
#include "pin.H"
#include <signal.h>


static void OnSig(THREADID, CONTEXT_CHANGE_REASON, const CONTEXT *, CONTEXT *, INT32, VOID *);
static BOOL InterceptSig(THREADID, INT32, CONTEXT *, BOOL, const EXCEPTION_INFO *, VOID *);
static void OnEnd(INT32, VOID *);
static std::string SignalName(INT32);

KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE, "pintool", "o", "reporter.out", "output file");
std::ofstream Out;


int main(int argc, char * argv[])
{
    PIN_Init(argc, argv);
    Out.open(KnobOutputFile.Value().c_str());

    for (INT32 sig = 1;  sig < 32;  sig++)
    {
        if (sig != SIGKILL && sig != SIGSTOP && sig != SIGCONT && sig != SIGTSTP)
            PIN_InterceptSignal(sig, InterceptSig, 0);
    }
    PIN_AddContextChangeFunction(OnSig, 0);
    PIN_AddFiniFunction(OnEnd, 0);

    PIN_StartProgram();
    return 0;
}


static void OnSig(THREADID, CONTEXT_CHANGE_REASON reason, const CONTEXT *, CONTEXT *, INT32 sig, VOID *)
{
    switch (reason)
    {
    case CONTEXT_CHANGE_REASON_SIGNAL:
        Out << "Got signal " << SignalName(sig) << "\n";
        break;

    case CONTEXT_CHANGE_REASON_FATALSIGNAL:
        Out << "Got fatal signal " << SignalName(sig) << "\n";
        break;

    case CONTEXT_CHANGE_REASON_SIGRETURN:
        Out << "Returning from signal handler\n";
        break;
    default:
        Out << "Unexpected CONTEXT_CHANGE_REASON " << reason << ", exiting the test." << std::endl;
        PIN_ExitProcess(1);
        break;
    }
}

static BOOL InterceptSig(THREADID, INT32 sig, CONTEXT *, BOOL hasHandler, const EXCEPTION_INFO *pExceptInfo, VOID *)
{
    Out << "Intercepting signal " << SignalName(sig);
    if (pExceptInfo)
        Out << ", which is an exception";
    if (hasHandler)
        Out << ", application handles";
    Out << "\n";

    return TRUE;
}

static void OnEnd(INT32 code, VOID *v)
{
    Out << "Program exited\n";
    Out.close();
}


static std::string SignalName(INT32 sig)
{
    switch (sig)
    {
    case SIGHUP:
        return "SIGHUP";
    case SIGINT:
        return "SIGINT";
    case SIGILL:
        return "SIGILL";
    case SIGTRAP:
        return "SIGTRAP";
    case SIGABRT:
        return "SIGABRT";
    case SIGFPE:
        return "SIGFPE";
    case SIGKILL:
        return "SIGKILL";
    case SIGUSR1:
        return "SIGUSR1";
    case SIGUSR2:
        return "SIGUSR2";
    case SIGSEGV:
        return "SIGSEGV";
    case SIGALRM:
        return "SIGALRM";
    case SIGTERM:
        return "SIGTERM";
    default:
      {
        std::ostringstream str;
        str << "<signal " << std::dec << sig << ">";
        return str.str();
      }
    }
}
