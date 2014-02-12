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
 *  Implementation of the threading API in Windows. 
 */

#include "threadlib.h"
#include <stdio.h>
#include <stdlib.h>
#include <malloc.h>
#include <windows.h>
#include <assert.h>

// Structure passed to the start routine in Windows
typedef struct WIN_THREAD_RTN_ARG_
{
    THREAD_RTN_PTR m_threadRtn;
    void * m_arg;
}WIN_THREAD_RTN_ARG;

// Thread start routine in Windows
static DWORD WINAPI WinThreadRtn(LPVOID arg)
{
    void * retval;
    WIN_THREAD_RTN_ARG winThreadRtnArg = *((WIN_THREAD_RTN_ARG *)arg);
    free(arg);
    retval = winThreadRtnArg.m_threadRtn(winThreadRtnArg.m_arg);
    return ((DWORD)retval);
}

BOOL CreateOneThread(THREAD_HANDLE * pThreadHandle, THREAD_RTN_PTR threadRtn, void * arg)
{
    HANDLE winThreadHandle;
    WIN_THREAD_RTN_ARG * pWinThreadRtnArg = (WIN_THREAD_RTN_ARG *)malloc(sizeof(WIN_THREAD_RTN_ARG));
    pWinThreadRtnArg->m_threadRtn = threadRtn;
    pWinThreadRtnArg->m_arg = arg;
    
    winThreadHandle = CreateThread(NULL, 0, WinThreadRtn, pWinThreadRtnArg, 0, NULL);
    if (winThreadHandle == NULL)
    {
        return FALSE;
    }
    
    *pThreadHandle = (THREAD_HANDLE)winThreadHandle;
    return TRUE;
}

BOOL JoinOneThread(THREAD_HANDLE threadHandle)
{
    HANDLE winThreadHandle = (HANDLE)threadHandle;
    DWORD waitStatus;
    waitStatus = WaitForSingleObject(winThreadHandle, INFINITE);
    assert(waitStatus != WAIT_TIMEOUT);
    return TRUE;
}

void ExitCurrentThread()
{
    ExitThread(0);
}

void DelayCurrentThread(unsigned int millisec)
{
    Sleep(millisec);
}
