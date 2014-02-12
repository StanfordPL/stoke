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
 * This tool is designed to run with the "rt-locks-app.cpp" application.  See
 * that source file for a description.
 */
 
#include <iostream>
#include <cstdlib>
#include "pin.H"
#include <sched.h>

static void InstrumentIns(INS, VOID *);
static void InstrumentRtn(RTN, VOID *);
static void OnExit(INT32, VOID *);
static void UseLocksWorker();
static void UseLocksScheduler();
static void CannotRunTest();

static BOOL FoundDoWork = FALSE;
static BOOL FoundDoGetLock = FALSE;
static BOOL TestNotRun = FALSE;

static PIN_LOCK Lock;
static unsigned long UseLockWorkerCount = 0;
static unsigned long UseLockSchedulerCount = 0;


int main(int argc, char * argv[])
{
    PIN_Init(argc, argv);
    PIN_InitSymbols();
    PIN_InitLock(&Lock);

    INS_AddInstrumentFunction(InstrumentIns, 0);
    RTN_AddInstrumentFunction(InstrumentRtn, 0);
    PIN_AddFiniFunction(OnExit, 0);
    PIN_StartProgram();
    return 0;
}


static void InstrumentIns(INS ins, VOID *)
{
    RTN rtn = INS_Rtn(ins);
    if (RTN_Valid(rtn) && RTN_Name(rtn) == "DoWorkInstrumentedWithPin")
    {
        FoundDoWork = true;
        INS_InsertCall(ins, IPOINT_BEFORE, AFUNPTR(UseLocksWorker), IARG_END);
    }
}

static void InstrumentRtn(RTN rtn, VOID *)
{
    if (RTN_Name(rtn) == "DoGetLockWithPin")
    {
        FoundDoGetLock = true;
        RTN_Open(rtn);
        RTN_InsertCall(rtn, IPOINT_BEFORE, AFUNPTR(UseLocksScheduler), IARG_END);
        RTN_Close(rtn);
    }

    if (RTN_Name(rtn) == "TellPinNotSupported")
    {
        RTN_Open(rtn);
        RTN_InsertCall(rtn, IPOINT_BEFORE, AFUNPTR(CannotRunTest), IARG_END);
        RTN_Close(rtn);
    }
}

static void OnExit(INT32, VOID *)
{
    if (!TestNotRun && (!FoundDoWork || !FoundDoGetLock))
    {
        std::cout << "Couldn't find instrumentation routine(s)" << std::endl;
        exit(1);
    }
    std::cout << "Worker count for UseLocks   : " << std::dec << UseLockWorkerCount << std::endl;
    std::cout << "Scheduler count for UseLocks: " << std::dec << UseLockSchedulerCount << std::endl;
}

static void UseLocksWorker()
{
    UseLockWorkerCount++;

    // The worker thread executes this in a loop.  We do sched_yield() to
    // encourage the kernel to switch the thread off the CPU while it holds
    // the lock.  This would be possible even without the sched_yield(), though.
    //
    PIN_GetLock(&Lock, 1);
    sched_yield();
    PIN_ReleaseLock(&Lock);
}

static void UseLocksScheduler()
{
    UseLockSchedulerCount++;

    // The scheduler thread executes this after it has lowered the priority of
    // the worker thread.  The hope is that we will try to acquire the lock while
    // the worker already has it.
    //
    PIN_GetLock(&Lock, 2);
    PIN_ReleaseLock(&Lock);
}

static void CannotRunTest()
{
    TestNotRun = TRUE;
}
