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
// This test verifies that Pin correctly flushes the code cache
// for an MT program.  It must be run with the "mtflush" tool.

#define _WIN32_WINNT 0x0400 // Needed for SignalObjectAndWait()

#include <stdio.h>
#include <windows.h>

HANDLE Lock;
HANDLE Event;

typedef void (*FLUSHFUN)();
typedef void (*CHECKFUN)(volatile int *);

volatile FLUSHFUN FlushFun;
volatile CHECKFUN CheckFun;
volatile int Flag;

static DWORD WINAPI DoNothing(void *);
static DWORD WINAPI DoWaiter(void *);
extern "C" __declspec(dllexport) void DoFlush();
extern "C" __declspec(dllexport) void CheckFlush(volatile int *);


int main()
{
    // Create a thread and let it exit.  This verifies that the
    // the thread releases its generation count in Pin on exit.
    //
    HANDLE h = CreateThread(0, 0, DoNothing, 0, 0, 0);
    if (!h)
    {
        fprintf(stderr, "Unable to create thread\n");
        return 1;
    }
    WaitForSingleObject(h, INFINITE);

    // Create a thread that hangs on a system call.  This verifies that
    // the thread does not hold the generation count while blocked in
    // the system call.
    //
    Lock = CreateMutex(0, TRUE, 0);
    Event = CreateEvent(0, TRUE, FALSE, 0);
    h = CreateThread(0, 0, DoWaiter, 0, 0, 0);
    if (!h)
    {
        fprintf(stderr, "Unable to create thread\n");
        return 1;
    }

    // Wait for the thread to block in the system call.
    //
    WaitForSingleObject(Event, INFINITE);

    // on their entries.
    // Call through a volatile function pointer to ensure the compiler doesn't
    // inline it.  Pin sets an instrumentation point on its entry.
    //
    FlushFun = DoFlush;
    CheckFun = CheckFlush;
    FlushFun();
    CheckFun(&Flag);

    ReleaseMutex(Lock);
    WaitForSingleObject(h, INFINITE);
    return 0;
}

static DWORD WINAPI DoNothing(void *)
{
    return 0;
}

static DWORD WINAPI DoWaiter(void *)
{
    SignalObjectAndWait(Event, Lock, INFINITE, FALSE);
    return 0;
}

void DoFlush()
{
    // Pin sets an anslysis function here to flush the code cache.
}

void CheckFlush(volatile int *)
{
    // Pin sets an analysis function here to check that the code
    // cache was flushed.
}
