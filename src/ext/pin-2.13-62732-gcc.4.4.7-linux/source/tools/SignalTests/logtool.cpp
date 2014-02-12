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
#include <fstream>
#include <sstream>
#include <signal.h>
#include "pin.H"


KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE, "pintool", "o", "logtool.out", "log file");
std::ofstream Out;

static void OnSig(THREADID, CONTEXT_CHANGE_REASON, const CONTEXT *, CONTEXT *, INT32, VOID *);
static void Fini(INT32, VOID *);
static std::string StrSig(int);


int main(int argc, char * argv[])
{
    PIN_Init(argc, argv);

    Out.open(KnobOutputFile.Value().c_str());

    PIN_AddFiniFunction(Fini, 0);
    PIN_AddContextChangeFunction(OnSig, 0);

    PIN_StartProgram();
    return 0;
}


static void OnSig(THREADID threadIndex, CONTEXT_CHANGE_REASON reason, const CONTEXT *ctxtFrom,
    CONTEXT *ctxtTo, INT32 sig, VOID *v)
{
    switch (reason)
    {
    case CONTEXT_CHANGE_REASON_FATALSIGNAL:
        Out << "Received fatal signal " << StrSig(sig) << " on thread " << threadIndex << std::endl;
        break;
    case CONTEXT_CHANGE_REASON_SIGNAL:
        Out << "About to handle signal " << StrSig(sig) << " on thread " << threadIndex << std::endl;
        break;
    case CONTEXT_CHANGE_REASON_SIGRETURN:
        Out << "Returning from handler on thread " << threadIndex << std::endl;
        break;
    default:
        Out << "Unexpected CONTEXT_CHANGE_REASON " << reason << ", exiting the test." << std::endl;
        PIN_ExitProcess(1);
        break;
    }
}

static void Fini(INT32 code, VOID *v)
{
    Out << "Exiting" << std::endl;
}

static std::string StrSig(int sig)
{
    switch (sig)
    {
    case SIGUSR1:
        return "SIGUSR1";
    case SIGUSR2:
        return "SIGUSR2";
    case SIGSEGV:
        return "SIGSEGV";
    case SIGCONT:
        return "SIGCONT";
    case SIGINT:
        return "SIGINT";
    default:
        break;
    }

    std::ostringstream os;
    os << "<" << std::dec << sig << ">";
    return os.str();
}
