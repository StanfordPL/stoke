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
 * A tool that creates private threads and verifies that PIN APIs,
 * like PIN_SafeCopy, TLS APIs, etc. work correctly in tool's threads.
 */

#include "pin.H"
#include <string>
#include <set>
#include <iostream>

namespace SYS
{
#include "sys_memory.h"
}

using namespace std;

/*!
 * Global variables.
 */

PIN_LOCK lock; // lock that serializes access to global vars

// Thread counters
int appThreadsStarted = 0;
int appThreadsFinished = 0;
int toolThreadsCreated = 0;
int toolThreadsFinished = 0;
int toolThreadsStarted = 0;

// UID of the main internal thread. It is created in the application thread by the
// main() tool's procedure.
PIN_THREAD_UID rootThreadUid; 

// Set of UIDs of all secondary internal threads, created by the main internal 
// thread (rootThreadUid).
// We use std::set to verify that each thread has a unique UID
set<PIN_THREAD_UID> uidSet; 

// TLS slot for passing data to exception handlers.
TLS_KEY exceptionTlsKey;

// Argument of the main internal thread
void * rootThreadArg = (void *)0xABBA;

// Address of the DoFlush function in the application's image
volatile ADDRINT addrDoFlush = 0;

// Flags (events) that synchronize an application thread that executes DoFlush
// and tool's threads that test RTN API and CodeCache API
volatile BOOL isDoFlushCalled = FALSE;
volatile BOOL isRtnTestCompleted = FALSE;
volatile BOOL isCacheTestCompleted = FALSE;

volatile BOOL isCacheFlushHappened = FALSE;

//==========================================================================
// Forward declarations
//==========================================================================
static void NotifyToolThreadExit(const string & threadName);

//==========================================================================
// Utilities
//==========================================================================

/*!
 * Convert a (function) pointer to ADDRINT.
 */
template <typename PF> ADDRINT Ptr2Addrint(PF pf)
{
    union CAST
    {
        PF pf;
        ADDRINT addr;
    } cast;
    cast.pf = pf;
    return cast.addr;
}

/*!
 * Print out the error message and exit the process.
 */
static void AbortProcess(const string & msg)
{
    THREADID myTid = PIN_ThreadId();

    PIN_GetLock(&lock, myTid + 1);
    cerr << "mt_tool test aborted: "<< msg << "." << endl;
    PIN_ReleaseLock(&lock);
    PIN_WriteErrorMessage(msg.c_str(), 1002, PIN_ERR_FATAL, 0);
}


/*!
 * Print out the error message and exit the thread.
 */
static void AbortThread(const string & msg, const string & threadName)
{
    THREADID myTid = PIN_ThreadId();

    PIN_GetLock(&lock, myTid + 1);
    cerr << "mt_tool thread aborted: "<< msg << ". Thread name = " << threadName << ", tid = " << myTid << endl;
    PIN_ReleaseLock(&lock);
    NotifyToolThreadExit(threadName);
    PIN_ExitThread(-1);
}

/*!
 * Print out the thread creation message and increase the count of threads created by tool.
 */
static void NotifyToolThreadCreated(THREADID threadId, PIN_THREAD_UID threadUid, const string & threadName)
{
    THREADID myTid = PIN_ThreadId();

    PIN_GetLock(&lock, myTid + 1);

    ++toolThreadsCreated;
    cerr << "Tool spawned a private thread. Thread name = " << threadName << ", tid = " << threadId << endl;

    BOOL insertStatus = TRUE;
    if (threadUid != rootThreadUid)
    {
        insertStatus =  (uidSet.insert(threadUid)).second;
    }

    PIN_ReleaseLock(&lock);

    if (!insertStatus)
    {
        AbortProcess("UID is not unique");
    }
}

/*!
 * Print out the thread start message and increase the count of tool's thread that started running.
 */
static void NotifyToolThreadStart(const string & threadName)
{
    if (PIN_IsApplicationThread())
    {
        AbortThread("PIN_IsApplicationThread() returns TRUE for a tool's thread", threadName);
    }

    THREADID myTid = PIN_ThreadId();

    PIN_GetLock(&lock, myTid + 1);
    ++toolThreadsStarted;
    cerr << "Tool's thread started running, name = " << threadName << ", tid = " << myTid << endl;
    PIN_ReleaseLock(&lock);
}

/*!
 * Print out the thread exit message and increase the count of finished tool's thread.
 */
static void NotifyToolThreadExit(const string & threadName)
{
    THREADID myTid = PIN_ThreadId();

    PIN_GetLock(&lock, myTid + 1);
    ++toolThreadsFinished;
    cerr << "Tool's thread finished, name = " << threadName << ", tid = " << myTid << endl;
    PIN_ReleaseLock(&lock);
}

/*!
 * Wait until PIN_IsProcessExiting() returns TRUE.
 */
static void WaitForProcessExit()
{
    unsigned i = 0;
    while (!PIN_IsProcessExiting())
    {
        PIN_Yield();
        
        if ((++i % 10) == 0)
        {
            PIN_Sleep(10);
        }
    }
}

//==========================================================================
/*!
 * Exception handler for the ThreadException() procedure
 */
EXCEPT_HANDLING_RESULT ExceptionHandler(THREADID tid, 
                                        EXCEPTION_INFO * pExceptInfo, 
                                        PHYSICAL_CONTEXT * pPhysCtxt, 
                                        VOID * arg)
{
    // Read the page address from the TLS slot. The same address is passed in <arg>.
    VOID * page = PIN_GetThreadData(exceptionTlsKey, tid);
    if (page != arg)
    {
        AbortThread("PIN_GetThreadData failed", "ThreadException");
    }

    // Allow write access to the page. This should fix the problem in the thread that 
    // attempts to write into this page.
    size_t pageSize = SYS::GetPageSize();
    BOOL protectStatus = SYS::MemProtect(page, pageSize, SYS::MEM_READ_WRITE_EXEC);
    ASSERTX(protectStatus);

    return EHR_HANDLED;
}

//==========================================================================
// Internal thread procedures (ROOT_THREAD_FUNC) spawned by the tool
//==========================================================================

/*!
 * Tool's thread that verifies PIN_SafeCopy
 */
static VOID ThreadSafeCopy(VOID * arg)
{
    NotifyToolThreadStart("ThreadSafeCopy");

    char dst[16];
    char src[16];
    size_t size;
    
    size = PIN_SafeCopy(dst, NULL, sizeof(dst));
    if (size != 0)
    {
        AbortThread("First PIN_SafeCopy failed", "ThreadSafeCopy");
    }

    size = PIN_SafeCopy(dst, src, sizeof(src));
    if (size != sizeof(src))
    {
        AbortThread("Second PIN_SafeCopy failed", "ThreadSafeCopy");
    }

    WaitForProcessExit();
    NotifyToolThreadExit("ThreadSafeCopy");
    PIN_ExitThread(0);
}

/*!
 * Tool's thread that verifies handling of internal exceptions
 */
static VOID ThreadException(VOID * arg)
{
    NotifyToolThreadStart("ThreadException");

    THREADID myTid = PIN_ThreadId();

    // Allocate a non-writable page and 
    size_t pageSize = SYS::GetPageSize();
    char * page = (char *)SYS::MemAlloc(pageSize, SYS::MEM_READ_EXEC);
    ASSERTX(page != 0);

    // To verify TLS API, we pass the page address to the exception handler in the TLS slot
    BOOL tlsStatus = PIN_SetThreadData(exceptionTlsKey, page, myTid);
    if (!tlsStatus)
    {
        AbortThread("PIN_SetThreadData failed", "ThreadException");
    }

    // Attempt to write into non-writable page to cause an exception 
    const char val = 0xAB;
    PIN_TryStart(myTid, ExceptionHandler, page);
    *page = val; // causes an exception which is handled by the ExceptionHandler() callback
    PIN_TryEnd(myTid);

    if (*page != val)
    {
        AbortThread("Exception handling failed", "ThreadException");
    }

    WaitForProcessExit();
    NotifyToolThreadExit("ThreadException");
    PIN_ExitThread(0);
}

/*!
 * Tool's thread that verifies RTN API
 */
static VOID ThreadRtn(VOID * arg)
{
    NotifyToolThreadStart("ThreadRtn");

    string errMsg;
    ADDRINT addr;
    RTN rtn;

    THREADID myTid = PIN_ThreadId();

    // Wait until <addrDoFlush> is initialized in the ImageLoad() callback
    while (addrDoFlush == 0)
    {
        PIN_Yield();
    }
    PIN_GetLock(&lock, myTid + 1);
    addr = addrDoFlush;
    PIN_ReleaseLock(&lock);

    if (addr == ADDRINT(-1))
    {
        // There is no DoFlush routine in the application image
        NotifyToolThreadExit("ThreadRtn");
        PIN_ExitThread(0);
    }

    // Now, wait until DoFlush is called
    while (!isDoFlushCalled)
    {
        PIN_Yield();
    }

    // Look for a routine at the <addrDoFlush> address and check its name
    PIN_LockClient();

    rtn = RTN_FindByAddress(addr);
    if (!RTN_Valid(rtn))
    {
        errMsg = "RTN_FindByAddress failed";
    }
    else if (RTN_Name(rtn)  != "DoFlush")
    {
        errMsg = "RTN_Name failed";
    }

    PIN_UnlockClient();

    // Continue execution of DoFlush
    isRtnTestCompleted = TRUE;

    if (!errMsg.empty())
    {
        AbortThread(errMsg, "ThreadRtn");
    }

    WaitForProcessExit();
    NotifyToolThreadExit("ThreadRtn");
    PIN_ExitThread(0);
}

/*!
 * Tool's thread that verifies CodeCache API
 */
static VOID ThreadCodeCache(VOID * arg)
{
    NotifyToolThreadStart("ThreadCodeCache");

    ADDRINT addr;
    THREADID myTid = PIN_ThreadId();

    // Wait until <addrDoFlush> is initialized in the ImageLoad() callback
    while (addrDoFlush == 0)
    {
        PIN_Yield();
    }
    PIN_GetLock(&lock, myTid + 1);
    addr = addrDoFlush;
    PIN_ReleaseLock(&lock);

    if (addr == ADDRINT(-1))
    {
        // There is no DoFlush routine in the application image
        NotifyToolThreadExit("ThreadCodeCache");
        PIN_ExitThread(0);
    }

    // Now, wait until DoFlush is called
    while (!isDoFlushCalled)
    {
        PIN_Yield();
    }

    // Flush the Code Cache
    CODECACHE_FlushCache(); 

    // Continue execution of DoFlush
    isCacheTestCompleted = TRUE;

    WaitForProcessExit();
    NotifyToolThreadExit("ThreadCodeCache");
    PIN_ExitThread(0);
}


/*!
 * Tool's thread that does nothing
 */
static VOID DummyThread(VOID * arg)
{
    NotifyToolThreadStart("DummyThread");
    NotifyToolThreadExit("DummyThread");
}

/*!
 * Main tool's thread. It is created in the application thread by the
 * main() tool's procedure.
 */
static VOID RootThread(VOID * arg)
{
    NotifyToolThreadStart("RootThread");

    // Verify the argument
    if (arg != rootThreadArg)
    {
        AbortThread("Invalid thread argument", "RootThread");
    }

    THREADID threadId;
    PIN_THREAD_UID threadUid;

    // Create an internal thread and wait for exit. 
    threadId = PIN_SpawnInternalThread(DummyThread, 0, 0, &threadUid);
    if (threadId == INVALID_THREADID)
    {
        AbortThread("PIN_SpawnInternalThread(DummyThread) failed", "RootThread");
    }
    NotifyToolThreadCreated(threadId, threadUid, "DummyThread");
 
    BOOL waitStatus = PIN_WaitForThreadTermination(threadUid, PIN_INFINITE_TIMEOUT, 0);
    if (!waitStatus)
    {
        AbortThread("PIN_WaitForThreadTermination(DummyThread) failed", "RootThread");
    }

    // Create an internal thread that verifies PIN_SafeCopy API
    threadId = PIN_SpawnInternalThread(ThreadSafeCopy, 0, 0, &threadUid);
    if (threadId == INVALID_THREADID)
    {
        AbortThread("PIN_SpawnInternalThread(ThreadSafeCopy) failed", "RootThread");
    }
    NotifyToolThreadCreated(threadId, threadUid, "ThreadSafeCopy");

    // Create an internal thread that verifies exception handling API
    threadId = PIN_SpawnInternalThread(ThreadException, 0, 0, &threadUid);
    if (threadId == INVALID_THREADID)
    {
        AbortThread("PIN_SpawnInternalThread(ThreadException) failed", "RootThread");
    }
    NotifyToolThreadCreated(threadId, threadUid, "ThreadException");

    // Create an internal thread that verifies RTN API
    threadId = PIN_SpawnInternalThread(ThreadRtn, 0, 0, &threadUid);
    if (threadId == INVALID_THREADID)
    {
        AbortThread("PIN_SpawnInternalThread(ThreadRtn) failed", "RootThread");
    }
    NotifyToolThreadCreated(threadId, threadUid, "ThreadRtn");

    // Create an internal thread that verifies CodeCache API
    threadId = PIN_SpawnInternalThread(ThreadCodeCache, 0, 0, &threadUid);
    if (threadId == INVALID_THREADID)
    {
        AbortThread("PIN_SpawnInternalThread(ThreadCodeCache) failed", "RootThread");
    }
    NotifyToolThreadCreated(threadId, threadUid, "ThreadCodeCache");

    WaitForProcessExit();
    NotifyToolThreadExit("RootThread");
    PIN_ExitThread(0);
}

//==========================================================================
// Analysis routines
//==========================================================================
static VOID OnDoFlush()
{
    // Notify tool's threads about a call to DoFlush 
    isDoFlushCalled = TRUE;

    // Wait until completion of all dependent tests 
    while (!(isRtnTestCompleted  && isCacheTestCompleted))
    {
        PIN_Yield();
    }
}

//==========================================================================
// Instrumentation callbacks
//==========================================================================
/*!
 * RTN instrumentation routine.
 */
static VOID InstrumentRoutine(RTN rtn, VOID *)
{
    if (RTN_Name(rtn) == "DoFlush")
    {
        RTN_Open(rtn);
        RTN_InsertCall(rtn, IPOINT_BEFORE, AFUNPTR(OnDoFlush), IARG_END);
        RTN_Close(rtn);
    }
}

/*!
 * Trace instrumentation routine.
 */
static VOID InstrumentTrace(TRACE trace, VOID *v)
{
    if (TRACE_Address(trace) == Ptr2Addrint(RootThread))
    {
        AbortProcess("Pin attempts to instrument the tool's thread");
    }
}

/*!
 * Image load callback.
 */
VOID ImageLoad(IMG img, VOID *v)
{
    if ( IMG_IsMainExecutable(img))
    {
        ADDRINT addr;
        RTN rtn = RTN_FindByName(img, "DoFlush");
        if (RTN_Valid(rtn))
        {
            addr = RTN_Address(rtn);
        }
        else
        {
            addr = ADDRINT(-1);
        }

        THREADID myTid = PIN_ThreadId();
        PIN_GetLock(&lock, myTid + 1);
        addrDoFlush = addr;
        PIN_ReleaseLock(&lock);
    }
}

static VOID OnCodeCacheFlush()
{
    isCacheFlushHappened = TRUE;
}

/*!
 * Thread start/exit callbacks in application's  threads.
 */
static VOID ThreadStart(THREADID threadid, CONTEXT *ctxt, INT32 flags, VOID *v)
{
    if (!PIN_IsApplicationThread())
    {
        AbortProcess("PIN_IsApplicationThread() returns FALSE for an application's thread");
    }

    PIN_GetLock(&lock, threadid + 1);
    appThreadsStarted++;
    cerr << "Application's thread started running, tid = " << threadid << endl;
    PIN_ReleaseLock(&lock);
}

static VOID ThreadFini(THREADID threadid, const CONTEXT *ctxt, INT32 code, VOID *v)
{
    PIN_GetLock(&lock, threadid + 1);
    appThreadsFinished++;
    cerr << "Application's thread finished, tid = " << threadid << endl;
    PIN_ReleaseLock(&lock);
}

/*!
 * Process exit callback (unlocked).
 */
static VOID FiniUnlocked(INT32 code, VOID *v)
{
    BOOL waitStatus;
    INT32 threadExitCode;
    BOOL threadExitStatus = TRUE;

    // First, wait for termination of the main internal thread. When this thread exits,
    // all secondary internal threads are already created and, so <uidSet> can be safely
    // accessed without lock.
    waitStatus = PIN_WaitForThreadTermination(rootThreadUid, PIN_INFINITE_TIMEOUT, &threadExitCode);
    if (!waitStatus)
    {
        AbortProcess("PIN_WaitForThreadTermination(RootThread) failed");
    }
    if (threadExitCode != 0) {threadExitStatus = FALSE;}

    // Wait until all secondary internal threads exit
    for (set<PIN_THREAD_UID>::iterator it = uidSet.begin(); it != uidSet.end(); ++it)
    {
        waitStatus = PIN_WaitForThreadTermination(*it, PIN_INFINITE_TIMEOUT, &threadExitCode);
        if (!waitStatus)
        {
            AbortProcess("PIN_WaitForThreadTermination(secondary thread) failed");
        }
        if (threadExitCode != 0) {threadExitStatus = FALSE;}
    }

    // If any thread exited abnormally, abort the process
    if (!threadExitStatus)
    {
        AbortProcess("At least one of the tool's threads exited abnormally");
    }

    THREADID myTid = PIN_ThreadId();

    PIN_GetLock(&lock, myTid + 1);
    cerr << "mt_tool test: All tool's threads finished succssfully." << endl;
    PIN_ReleaseLock(&lock);

}

/*!
 * Process exit callback (locked).
 */
static VOID Fini(INT32 code, VOID *v)
{
    cerr << "Number of application's threads started: "  << appThreadsStarted  << endl;
    cerr << "Number of application's threads finished: " << appThreadsFinished << endl;
    cerr << "Number of tool's threads created: "  << toolThreadsCreated << endl;
    cerr << "Number of tool's threads started: " << toolThreadsStarted << endl;
    cerr << "Number of tool's threads finished: " << toolThreadsFinished << endl;
    if (toolThreadsCreated != toolThreadsStarted)
    {
        cerr << (toolThreadsCreated - toolThreadsStarted) << " tool threads has not started" << endl;
        PIN_ExitProcess(1);
    }
    if (toolThreadsCreated != toolThreadsFinished)
    {
        cerr << (toolThreadsCreated - toolThreadsFinished) << " tool threads has not finished" << endl;
        PIN_ExitProcess(1);
    }

    if (isCacheTestCompleted && !isCacheFlushHappened)
    {
        cerr << "Code Cache flush did not happen" << endl;
        PIN_ExitProcess(1);
    }
}

/*!
 * The main procedure of the tool.
 */
int main(int argc, char *argv[])
{
    PIN_InitSymbols();

    PIN_Init(argc, argv);
    PIN_InitLock(&lock);

    PIN_AddThreadStartFunction(ThreadStart, 0);
    PIN_AddThreadFiniFunction(ThreadFini, 0);
    PIN_AddFiniFunction(Fini, 0);
    PIN_AddFiniUnlockedFunction(FiniUnlocked, 0);
    TRACE_AddInstrumentFunction(InstrumentTrace, 0);
    IMG_AddInstrumentFunction(ImageLoad, 0);
    RTN_AddInstrumentFunction(InstrumentRoutine, 0);
    CODECACHE_AddCacheFlushedFunction(OnCodeCacheFlush, 0);  

    // In order to verify TLS API in internal threads we create a TLS slot for 
    // passing data to exception handlers.
    exceptionTlsKey = PIN_CreateThreadDataKey(0);
    if (exceptionTlsKey == -1)
    {
        AbortProcess("PIN_CreateThreadDataKey failed");
    }

    // Spawn the main internal thread. When this thread starts it spawns all other internal threads.
    THREADID rootThreadId = PIN_SpawnInternalThread(RootThread, rootThreadArg, 0, &rootThreadUid);
    if (rootThreadId == INVALID_THREADID)
    {
        AbortProcess("PIN_SpawnInternalThread(RootThread) failed");
    }
    NotifyToolThreadCreated(rootThreadId, rootThreadUid, "RootThread");

    // Never returns
    PIN_StartProgram();
    return 0;
}
