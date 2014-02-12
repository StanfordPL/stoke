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

/*! @file
 * Probe mode detach-reattach test which confirms that each thread get its respective thread detach callbacks.
 */

#include "pin.H"
#include <iostream>
#include <fstream>
#include <stdlib.h>
#include <assert.h>
#include <sched.h>
#include <linux/unistd.h>
#include <sys/syscall.h>

#define MAX_ITERATION 5

const char * FIRST_DLL_NAME = "libmy_dll.so";

static int iteration = 3;

using std::cerr;
/* ===================================================================== */
/* Commandline Switches */
/* ===================================================================== */

KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE, "pintool",
    "o", "reattachImageLoadCallbackAttached.out", "specify file name");

ofstream TraceFile;

PIN_LOCK lock;
/* ===================================================================== */


/* Session control checks that there is no callbacks mix between different 
 * attach-detach iterations
 */
class SESSION_CONTROL
{
  public:
    SESSION_CONTROL():_currentIteration(0), 
        _threadCounter(0),
        _startAttachSession(FALSE),
        _startDetachSession(FALSE) 
    {}

    static VOID ApplicationStart(VOID *v);
    static VOID AttachedThreadStart(VOID *sigmask, VOID *v);
    static INT DedicatedThread(VOID *arg);

    VOID StartIteration(UINT32 it) { _currentIteration = it; _threadCounter = 0;}
    UINT32 CurrentIteration() { return _currentIteration; }
    BOOL GotFirstThreadNotification(UINT32 it)
    {
        return ((it == _currentIteration) && (_threadCounter > 0));
    }
    static SESSION_CONTROL* Instance() { return &m_instance; }
    VOID StartDetach() 
    { 
        _startDetachSession = TRUE; 
        _startAttachSession = FALSE; 
    }
    VOID StartAttach() 
    { 
        _startAttachSession = TRUE; 
        _startDetachSession = FALSE; 
    }
    VOID WaitForDetach() { while (!_startDetachSession) sched_yield(); }
    VOID WaitForAttach() { while (!_startAttachSession) sched_yield(); }
  private:
    UINT32 _currentIteration;
    UINT32 _threadCounter;
    volatile BOOL _startAttachSession;
    volatile BOOL _startDetachSession;
    static SESSION_CONTROL m_instance;
};

SESSION_CONTROL SESSION_CONTROL::m_instance;

SESSION_CONTROL *SessionControl() { return SESSION_CONTROL::Instance(); }

/* Detach session
 * Callbacks and function replacements
 */
class DETACH_SESSION
{
  public:
    // Detach completion notification
    static VOID DetachCompleted(VOID *v);
    static VOID DetachThreadStart(VOID *v);
    static VOID ImageLoad(IMG img, VOID *v);
};


/* Reattach session */
class REATTACH_SESSION
{
  public:
    static VOID ImageLoad(IMG img, VOID *v);
    static VOID AttachedThreadStart(VOID *sigmask, VOID *v);
};


/*
 * Pin-tool detach-completed callback
 * Called from Pin
 */
VOID DETACH_SESSION::DetachCompleted(VOID *v)
{
    unsigned long detachIteration = (unsigned long)v;
    if (detachIteration != SessionControl()->CurrentIteration())
    {
        cerr << "Detach iteration error: Expected " << SessionControl()->CurrentIteration()
            << " Rececived " << detachIteration << " In DetachCompleted" << endl;
        PIN_ExitProcess (1);
    }

    PIN_GetLock(&lock, PIN_GetTid());
    TraceFile << "Detach session " << detachIteration << " Detach completed; tid = "
             << PIN_GetTid() << endl;
    if (detachIteration == MAX_ITERATION)
    {
        TraceFile <<  "TEST PASSED" << endl;
        TraceFile.close();
        PIN_ExitProcess(0);
    }
    PIN_ReleaseLock(&lock);
    SessionControl()->StartAttach();
}

BOOL afterAttachProbe(void)
{
    return TRUE;
}


VOID AttachMain(VOID *arg)
{
    UINT32 reattachIteration = *(reinterpret_cast <UINT32 *> (&arg));
    SessionControl()->StartIteration(reattachIteration);
    IMG_AddInstrumentFunction(REATTACH_SESSION::ImageLoad, arg);
    PIN_AddDetachFunctionProbed(DETACH_SESSION::DetachCompleted, arg);
    PIN_AddThreadAttachProbedFunction(SESSION_CONTROL::AttachedThreadStart, arg);
    PIN_AddThreadDetachProbedFunction(DETACH_SESSION::DetachThreadStart, arg);
}

/* This is the start function which is called by the child process of the main process
 * at the beginning of its execution.
 * Its preforms the repeated detach-reattach.
 */
INT SESSION_CONTROL::DedicatedThread(VOID *arg)
{
    static ADDRINT reattachIteration = 2;
    while (1)
    {
        SessionControl()->WaitForDetach();
        PIN_GetLock(&lock, PIN_GetTid());
        TraceFile << "Pin tool: sending detach request" << endl;
        PIN_ReleaseLock(&lock);
        PIN_DetachProbed();
        SessionControl()->WaitForAttach();
        PIN_GetLock(&lock, PIN_GetTid());
        TraceFile << "Pin tool: sending attach request" << endl;
        PIN_ReleaseLock(&lock);
        PIN_AttachProbed(AttachMain, (VOID *)reattachIteration++);		
    }
    return 0;
}


/* Thread start notification in the first session */
VOID SESSION_CONTROL::AttachedThreadStart(VOID *sigmask, VOID *arg)
{
    unsigned long iteration = (unsigned long)arg;
    if (iteration != SessionControl()->CurrentIteration())
    {
        cerr << "Iteration error: Expected " << SessionControl()->CurrentIteration()
            << " Received " << iteration << " In AttachedThreadStart" << endl;
         PIN_ExitProcess (1);
    }
    PIN_GetLock(&lock, PIN_GetTid());
    ++(SessionControl()->_threadCounter) ;
    TraceFile << "Thread start " << " notification at session " << iteration << " tid " << PIN_GetTid()<< endl;
    PIN_ReleaseLock(&lock);
}

VOID DETACH_SESSION::DetachThreadStart(VOID *arg)
{
    unsigned long iteration = (unsigned long)arg;
    if (iteration != SessionControl()->CurrentIteration())
    {
        cerr << "Iteration error: Expected " << SessionControl()->CurrentIteration()
            << " Received " << iteration << " In DetachThreadStart" << endl;
        PIN_ExitProcess (1);
    }
    PIN_GetLock(&lock, PIN_GetTid());
    TraceFile << "Thread detach "  << " notification at session " << iteration << " tid " << PIN_GetTid() << endl;
    PIN_ReleaseLock(&lock);
}


/*
 *Image load callback for the first Pin session
 */
VOID DETACH_SESSION::ImageLoad(IMG img,  VOID *v)
{
    if ( IMG_IsMainExecutable(img))
    {
        RTN rtn = RTN_FindByName(img, "AfterAttach1");

        // relevent only in the attach scenario.
        if (RTN_Valid(rtn))
        {
            RTN_ReplaceProbed(rtn, AFUNPTR(afterAttachProbe));
        }
    }

    PIN_GetLock(&lock, PIN_GetTid());
    TraceFile <<"Load image " << IMG_Name(img) << "in iteration " << iteration << endl;
    PIN_ReleaseLock(&lock);
    size_t found;
    found= IMG_Name(img).find(FIRST_DLL_NAME);

    if ( found!=string::npos )
    {
        SessionControl()->StartDetach();
    }
}

/*
 *Image load callback for the second Pin session
 */
VOID REATTACH_SESSION::ImageLoad(IMG img,  VOID *v)
{ 
    PIN_GetLock(&lock, PIN_GetTid());
    TraceFile <<"Load image " << IMG_Name(img) <<" in iteration" << iteration  <<endl;
    PIN_ReleaseLock(&lock);

    size_t found;
    found= IMG_Name(img).find(FIRST_DLL_NAME);
    if ( found!=string::npos )
    {
        SessionControl()->StartDetach();
    }
}

/* ===================================================================== */

int main(int argc, CHAR *argv[])
{
    PIN_InitSymbols();

    PIN_Init(argc,argv);
    SessionControl()->StartIteration(1);
    PIN_InitLock(&lock);
    TraceFile.open(KnobOutputFile.Value().c_str());
    IMG_AddInstrumentFunction(DETACH_SESSION::ImageLoad,(VOID *) 1);
    PIN_AddDetachFunctionProbed(DETACH_SESSION::DetachCompleted, (VOID *)1);
    PIN_AddThreadAttachProbedFunction(SESSION_CONTROL::AttachedThreadStart, (VOID *)1);
    PIN_AddThreadDetachProbedFunction(DETACH_SESSION::DetachThreadStart, (VOID *)1);
    UINT32 stackSize = 0x40000;
    UINT8 *stack = new UINT8[stackSize];
    
    // thread stack should be aligned 
    UINT8 *stackTop = (UINT8*)((((ADDRINT)stack + stackSize) >> 4) << 4);
    int flags = (CLONE_VM | CLONE_FS | CLONE_FILES | CLONE_SIGHAND | CLONE_THREAD | CLONE_PARENT);
    int tid = clone(SESSION_CONTROL::DedicatedThread, stackTop, flags, 0);
    assert(tid != -1);
    PIN_StartProgramProbed();

    return 0;
}

/* ===================================================================== */
/* eof */
/* ===================================================================== */
