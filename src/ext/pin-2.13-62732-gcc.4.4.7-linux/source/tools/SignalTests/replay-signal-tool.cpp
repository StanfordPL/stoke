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
 * This is a test of the PIN_ReplayContextChange() API when used for
 * Unix signals.  It is designed to be run on the application
 * "replay-signal-app.c".
 */

#include <iostream>
#include <cstdlib>
#include "pin.H"

static VOID OnImage(IMG, VOID *);
static VOID OnSignal(THREADID, CONTEXT_CHANGE_REASON, const CONTEXT *, CONTEXT *, INT32, VOID *);
static VOID ReplayHandled(THREADID, CONTEXT *);
static VOID ReplayFatal(THREADID, CONTEXT *);
static void OnExit(INT32, VOID *);

static CONTEXT RecordedContext;
static int RecordedSignal = 0;
static int SignalCount = 0;


int main(int argc, char * argv[])
{
    PIN_Init(argc, argv);
    PIN_InitSymbols();

    IMG_AddInstrumentFunction(OnImage, 0);
    PIN_AddContextChangeFunction(OnSignal, 0);
    PIN_AddFiniFunction(OnExit, 0);

    PIN_StartProgram();
    return 0;
}

static VOID OnImage(IMG img, VOID *)
{
#if defined(TARGET_MAC)
    RTN rtn = RTN_FindByName(img, "_ReplaySignal1");
#else
    RTN rtn = RTN_FindByName(img, "ReplaySignal1");
#endif
    if (RTN_Valid(rtn))
    {
        RTN_Open(rtn);
        RTN_InsertCall(rtn, IPOINT_BEFORE, AFUNPTR(ReplayHandled), IARG_THREAD_ID, IARG_CONTEXT, IARG_END);
        RTN_Close(rtn);
    }
#if defined(TARGET_MAC)
    rtn = RTN_FindByName(img, "_ReplaySignal2");
#else
    rtn = RTN_FindByName(img, "ReplaySignal2");
#endif
    if (RTN_Valid(rtn))
    {
        RTN_Open(rtn);
        RTN_InsertCall(rtn, IPOINT_BEFORE, AFUNPTR(ReplayFatal), IARG_THREAD_ID, IARG_CONTEXT, IARG_END);
        RTN_Close(rtn);
    }
}

static VOID OnSignal(THREADID, CONTEXT_CHANGE_REASON reason, const CONTEXT *, CONTEXT *to, INT32 sig, VOID *)
{
    if (reason == CONTEXT_CHANGE_REASON_SIGRETURN)
        return;

    SignalCount++;
    switch (SignalCount)
    {
    case 1:
        std::cout << "Notified of real signal, recording" << std::endl;
        PIN_SaveContext(to, &RecordedContext);
        RecordedSignal = sig;
        break;

    case 2:
        std::cout << "Notified of first replayed signal" << std::endl;
        if (reason != CONTEXT_CHANGE_REASON_SIGNAL)
        {
            std::cout << "Wrong 'reason' in signal notification, expected " << static_cast<int>(CONTEXT_CHANGE_REASON_SIGNAL)
                << " (CONTEXT_CHANGE_REASON_SIGNAL), but got " << reason << std::endl;
            std::exit(1);
        }
        break;

    case 3:
        std::cout << "Notified of second replayed signal" << std::endl;
        if (reason != CONTEXT_CHANGE_REASON_FATALSIGNAL)
        {
            std::cout << "Wrong 'reason' in signal notification" << std::endl;
            std::exit(1);
        }
        break;

    default:
        std::cout << "Notified of too many signals" << std::endl;
        std::exit(1);
    }
}

static VOID ReplayHandled(THREADID tid, CONTEXT *here)
{
    if (RecordedSignal == 0)
    {
        std::cout << "Did not record signal yet in ReplayHandled()" << std::endl;
        std::exit(1);
    }

    std::cout << "Replaying handled signal" << std::endl;
    PIN_ReplayContextChange(tid, here, &RecordedContext, CONTEXT_CHANGE_REASON_SIGNAL, RecordedSignal);
    /* does not return */
}

static VOID ReplayFatal(THREADID tid, CONTEXT *here)
{
    if (RecordedSignal == 0)
    {
        std::cout << "Did not record signal yet in ReplayFatal()" << std::endl;
        std::exit(1);
    }

    std::cout << "Replaying fatal signal" << std::endl;
    PIN_ReplayContextChange(tid, here, 0, CONTEXT_CHANGE_REASON_FATALSIGNAL, RecordedSignal);
    /* does not return */
}

static VOID OnExit(INT32, VOID *)
{
    if (SignalCount != 3)
    {
        std::cout << "Expected 3 signal notification, but got " << SignalCount << std::endl;
        std::exit(1);
    }
    std::cout << "Notified of application exit" << std::endl;
    std::exit(0);
}
