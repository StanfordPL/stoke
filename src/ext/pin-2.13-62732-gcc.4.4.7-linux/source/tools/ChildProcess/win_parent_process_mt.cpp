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
// MT Application that creates new processes, from multiple threads simultaneously

#include <Windows.h>
#include <iostream>
#include <string>
using namespace std;

const LONG numthreads = 32;

LONG volatile numThreadsArrived = 0;

HANDLE threadReachedSynchPointSemHandle[numthreads];
CRITICAL_SECTION critSec;


void MutexWriteToStdout (char *msg)
{
    
    EnterCriticalSection (&critSec);
    
    printf (msg);
    
    fflush (stdout);
    
    LeaveCriticalSection (&critSec);
}

void MutexWriteToStdoutWithValue (char *msg, DWORD value)
{
    
    EnterCriticalSection (&critSec);
    
    printf (msg, value);
    
    fflush (stdout);
    
    LeaveCriticalSection (&critSec);
}

//Wait for a process completion
//Verify it returned the expected exit code
bool WaitAndVerify(HANDLE process)
{
    if(WaitForSingleObject( process, INFINITE ) == WAIT_FAILED)
    {
        MutexWriteToStdout ("WaitForSingleObject failed\n");
        return FALSE;
    }
    DWORD processExitCode;
    if(GetExitCodeProcess (process, &processExitCode) == FALSE)
    {
        MutexWriteToStdout ("GetExitCodeProcess Failed\n");
        return FALSE;
    }
    if(processExitCode != 0)
    {
        MutexWriteToStdoutWithValue ("Got unexpected exit code %x\n", processExitCode);
        return FALSE;
    }
    return TRUE;
}


// Cause all threads to wait here until all the threads arrive here
void AllThreadSynchPoint (LONG threadNum)
{
    LONG myNumThreadsArrived, i;
    
    myNumThreadsArrived = InterlockedIncrement (&numThreadsArrived);
    if (myNumThreadsArrived == numthreads)
    { // all threads have arrived 
      // wake the others
        numThreadsArrived = 0; // reset for next thread synch point
        for (i = 0; i < numthreads; i++)
        {
            if (i != threadNum)
            {
                ReleaseSemaphore (threadReachedSynchPointSemHandle[i], 1, NULL);
            }
        }
    }
    else
    { // thread waits here till all other threads arrive
        WaitForSingleObject (threadReachedSynchPointSemHandle[threadNum], INFINITE);
    }
}

DWORD WINAPI CreateTestProcesses(LPVOID threadNumPtr)
{
    char cmd[] = "win_child_process.exe \"param1 param2\" param3";
    STARTUPINFO         si;
    PROCESS_INFORMATION  pi;
    LONG threadNum = (LONG)threadNumPtr;

    memset(&si, 0, sizeof(si));
    si.cb = sizeof(STARTUPINFO);
    memset(&pi, 0, sizeof(pi));

    AllThreadSynchPoint(threadNum); // best attempt to get the threads to call CreateProcess 
                                    // simultaneously
    if (!CreateProcess(NULL, cmd, NULL, NULL, TRUE, NULL, NULL, NULL, &si, &pi))
    {
        MutexWriteToStdout ( "Couldn't create child process \n");
        return 1;
    }
    if(WaitAndVerify(pi.hProcess) == FALSE)
    {
        return 2;
    }
    CloseHandle (pi.hThread);
    CloseHandle (pi.hProcess);

    AllThreadSynchPoint(threadNum);
    MutexWriteToStdout ("First Process was created successfully!\n"); 
    
    //Create suspended

    AllThreadSynchPoint(threadNum);
    memset(&si, 0, sizeof(si));
    si.cb = sizeof(STARTUPINFO);
    memset(&pi, 0, sizeof(pi));
    if (!CreateProcess(NULL, cmd, NULL, NULL, TRUE, CREATE_SUSPENDED, NULL, NULL, &si, &pi))
    {
        MutexWriteToStdout ( "Couldn't create child process \n");
        return 1;
    }
    ResumeThread( pi.hThread );
    CloseHandle (pi.hThread);

    if(WaitAndVerify(pi.hProcess) == FALSE)
    {
        return 2;
    } 
    CloseHandle (pi.hProcess);

    AllThreadSynchPoint(threadNum);
    MutexWriteToStdout ("Second Process was created successfully!\n");

    //Create process as user

    AllThreadSynchPoint(threadNum);
    HANDLE tokenHandle;
    BOOL res = OpenProcessToken(GetCurrentProcess(), TOKEN_ALL_ACCESS, &tokenHandle);
    if (!res)
    {
        MutexWriteToStdout ( "Couldn't open process token\n");
        return 3;
    }

    AllThreadSynchPoint(threadNum);
    memset(&si, 0, sizeof(si));
    si.cb = sizeof(STARTUPINFO);
    memset(&pi, 0, sizeof(pi));
    if (!CreateProcessAsUser(tokenHandle, NULL, cmd, NULL, NULL, TRUE, CREATE_SUSPENDED, NULL, NULL, &si, &pi))
    {
        MutexWriteToStdout ( "Couldn't create child process \n");
        return 1;
    }
    ResumeThread( pi.hThread );
    CloseHandle (pi.hThread);
    CloseHandle (tokenHandle);

    if(WaitAndVerify(pi.hProcess) == FALSE)
    {
        return 2;
    }  
    CloseHandle (pi.hProcess);

    AllThreadSynchPoint(threadNum);
    MutexWriteToStdout ("Third Process was created successfully!\n");

    return 0;
}


int main(int argc, char * argv[])
{
    LONG i;
    HANDLE threadHandles[numthreads];

    InitializeCriticalSection (&critSec);
    
    for (i = 0; i < numthreads; i++)
    {
        threadReachedSynchPointSemHandle[i] = CreateSemaphore (NULL, 0, 1, NULL);
        if (threadReachedSynchPointSemHandle[i] == NULL)
        {
            cout << "failed to create threadReachedSynchPointSemHandle\n";
            return -1;
        }
    }

    for (i = 0; i < numthreads; i++)
    {
        threadHandles[i] =
            CreateThread(NULL, 0, (LPTHREAD_START_ROUTINE)CreateTestProcesses, (LPVOID)i, 0, NULL);
        if (threadHandles[i] == NULL)
        {
            cout << "failed to create thread\n";
            return -2;
        }
    }
    // Wait until all threads terminated
    WaitForMultipleObjects((DWORD)numthreads, threadHandles, TRUE, INFINITE);

    DeleteCriticalSection (&critSec);

    Sleep(1000);

    return 0;
}
