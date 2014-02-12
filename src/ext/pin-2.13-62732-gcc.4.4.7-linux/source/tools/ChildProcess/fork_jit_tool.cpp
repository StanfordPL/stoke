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
/* ===================================================================== */
/*
  @ORIGINAL_AUTHOR: Elena Demikhovsky
*/

/* ===================================================================== */
/*! @file
 * A test for callbacks around fork in jit mode.
 * The test checks that
 *   - callbacks before/after fork are called
 *   - context in after-fork callback includes the correct child pid
 */
#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>
#include <stdlib.h>
#if defined(TARGET_ANDROID)
#define SYS_fork __NR_fork
#define SYS_clone __NR_clone
#endif
#if defined(TARGET_MAC) || defined(TARGET_BSD) || defined(TARGET_ANDROID)
#include <sys/syscall.h>
#else
#include <syscall.h>
#endif

#include "pin.H"

#include <iostream>
#include <fstream>

using namespace std;
/* ===================================================================== */

KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE, "pintool",
    "o", "fork_jit_tool.out", "specify file name");

ofstream Out;
/* ===================================================================== */

INT32 Usage()
{
    cerr <<
        "This pin tool tests probe replacement.\n"
        "\n";
    cerr << KNOB_BASE::StringKnobSummary();
    cerr << endl;
    return -1;
}


pid_t childPid = 0;
PIN_LOCK lock;
ofstream childOut;

/* 
 * To make sure that before-fork callback works
 */
VOID BeforeFork(THREADID threadid, const CONTEXT* ctxt, VOID * arg)
{
    PIN_GetLock(&lock, threadid+1);
    Out << "TOOL: Before fork." << endl;
    PIN_ReleaseLock(&lock);
}

/*
 * To make sure that after-fork callback works
 * and
 * the context has the correct child pid in syscall-return register.
 * The child pid value should be equal in after-fork and after-syscall
 * callbacks.
 */
VOID AfterForkInParent(THREADID threadid, const CONTEXT* ctxt, VOID * arg)
{
    pid_t parentPid = *(pid_t*)&arg;
    PIN_GetLock(&lock, threadid+1);
    Out << "TOOL: After fork in parent." << endl;
    PIN_ReleaseLock(&lock);
    if (PIN_GetPid() != parentPid)
    {
    	cerr << "PIN_GetPid() fails in parent process" << endl;
		exit(-1);
    }
    else
    {
    	Out << "PIN_GetPid() is correct in parent process" << endl;
    }    

#ifdef TARGET_BSD
    SYSCALL_STANDARD syscallStd = SYSCALL_STANDARD_IA32E_BSD;
#else
#if defined (TARGET_IA32E)
    SYSCALL_STANDARD syscallStd = SYSCALL_STANDARD_IA32E_LINUX;
#else
#ifdef TARGET_MAC
    SYSCALL_STANDARD syscallStd = SYSCALL_STANDARD_IA32_MAC;
#else
    SYSCALL_STANDARD syscallStd = SYSCALL_STANDARD_IA32_LINUX;
#endif
#endif
#endif

    pid_t afterForkChildPid = (pid_t)PIN_GetSyscallReturn(ctxt, syscallStd);
    if (!childPid)
    {
        childPid = afterForkChildPid;
    }
    else if (childPid != afterForkChildPid)
    {
        cerr << "Child pid received in syscall-after callback " <<
           childPid << " and child Pid in after-fork callback " <<
           afterForkChildPid << " don't match " << endl;
        exit(-1);
    }
}

VOID OpenChildOutput()
{
    if (!childOut.is_open())
    {
        char *outFileName = new char[KnobOutputFile.Value().size()+10];
        sprintf(outFileName, "%s_%d", KnobOutputFile.Value().c_str(), PIN_GetPid());
        childOut.open(outFileName);
    }
}

VOID AfterForkInChild(THREADID threadid, const CONTEXT* ctxt, VOID * arg)
{

    // After the fork, there is only one thread in the child process.  It's possible
    // that a different thread in the parent held this lock when the fork() happened.
    // Since that thread does not exist in the child, it will never release the lock.
    // Compensate by re-initializing the lock here in the child.

    PIN_InitLock(&lock);
    PIN_GetLock(&lock, threadid+1);
    PIN_ReleaseLock(&lock);

    pid_t parentPid = *(pid_t*)&arg;

    OpenChildOutput();

    childOut << "TOOL: After fork in child." << endl;

    pid_t currentPid = PIN_GetPid();
    
    if ((currentPid == parentPid) || (getppid() != parentPid))
    {
		cerr << "PIN_GetPid() fails in child process" << endl;
		exit(-1);
    }
    else
    {
    	childOut << "PIN_GetPid() is correct in child process" << endl;
    }
    childOut << "Child pid " << currentPid << endl;

}

UINT32 lastSyscall = (UINT32)(-1);

VOID SyscallBefore(THREADID tid, CONTEXT *ctxt, SYSCALL_STANDARD scStd,
                  VOID *arg)
{
    lastSyscall = (UINT32)PIN_GetSyscallNumber(ctxt, scStd);
}

VOID SyscallAfter(THREADID tid, CONTEXT *ctxt, SYSCALL_STANDARD scStd, 
                  VOID *arg)
{
    pid_t parentPid = *(pid_t*)&arg;
    pid_t currentPid = PIN_GetPid();
    if ((
#if defined (TARGET_MAC) || defined (TARGET_BSD)
         (lastSyscall == SYS_fork) 
#else
         (lastSyscall == SYS_fork) || (lastSyscall == SYS_clone)
#endif
        )
        && (parentPid == currentPid))
    {
        //We are looking at ater-fork in parent
        pid_t res = PIN_GetSyscallReturn(ctxt, scStd);
        if (childPid)
        {
            if (res != childPid)
            {
                cerr << "Child pid received in after fork callback " <<
                childPid << " and child Pid in syscall-after callback " <<
                res << " don't match " << endl;
               exit(-1);
            }
        }
    }
}  


int main(INT32 argc, CHAR **argv)
{
    if( PIN_Init(argc,argv) )
    {
        return Usage();
    }
	
    Out.open(KnobOutputFile.Value().c_str());
    
    unsigned long parentPid = (unsigned long)PIN_GetPid();
    PIN_AddForkFunction(FPOINT_BEFORE, BeforeFork, (VOID*)parentPid);
    PIN_AddForkFunction(FPOINT_AFTER_IN_PARENT, AfterForkInParent, (VOID *)parentPid);
	PIN_AddForkFunction(FPOINT_AFTER_IN_CHILD, AfterForkInChild, (VOID*)parentPid);
    PIN_AddSyscallEntryFunction(SyscallBefore, 0);
    PIN_AddSyscallExitFunction(SyscallAfter, (VOID*)parentPid);
    // Never returns
    PIN_StartProgram();
    
    return 0;
}
