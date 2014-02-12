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
 *  Pool of threads.
 */

#include "thread_pool.h"

//=======================================================================
// Implementation of the THREAD_POOL class
//=======================================================================

unsigned long THREAD_POOL::Create(unsigned long numThreads)
{
    unsigned long count;
    for (count = 0; 
        (count < numThreads) && (m_numThreads < MAXTHREADS);
        ++count, ++m_numThreads)
    {
        TLS_ELEMENT * tls = &(m_tls[m_numThreads]);
        tls->Init();
        BOOL created = CreateOneThread(&(tls->m_handle), ThreadRoutine, tls);
        if (!created) {break;}
    }
    return count;
}

void THREAD_POOL::TerminateAll()
{
    EXIT_THREAD_OBJ exitObj;
    for (unsigned long tid = 0; tid < m_numThreads; ++tid)
    {
        Wait(tid);
        Start(tid, &exitObj); // run EXIT_THREAD_OBJ in the target thread to exit the thread 
        JoinOneThread(m_tls[tid].m_handle);
    }
    m_numThreads = 0;
}

bool THREAD_POOL::Start(unsigned long tid, RUNNABLE_OBJ * runObj)
{
    if (tid >= m_numThreads) {return false;}

    TLS_ELEMENT * tls = &(m_tls[tid]);
    if (tls->CheckSemaphore() == true)
    {
        return false; // can not start a new task until a previous one is not yet completed
    }

    // switch control to the specified thread in the pool
    tls->m_runObj = runObj;
    tls->SwitchSemaphore(true); 
    return true;
}

RUNNABLE_OBJ * THREAD_POOL::Wait(unsigned long tid)
{
    if (tid >= m_numThreads) {return 0;}

    TLS_ELEMENT * tls = &(m_tls[tid]);
    tls->WaitSemaphore(false);
    return tls->m_runObj;
}

void * THREAD_POOL::ThreadRoutine(void * tlsArg)
{
    TLS_ELEMENT * tls = static_cast<TLS_ELEMENT *>(tlsArg);
    while (true)
    {
        tls->WaitSemaphore(true);
        tls->m_runObj->Run();
        // switch control back to the managing thread
        tls->SwitchSemaphore(false);
    }
    return 0;
}

void THREAD_POOL::TLS_ELEMENT::SwitchSemaphore(bool semaphoreState)
{
    DelayCurrentThread(0); // we use this system call as a memory fence
    m_semaphore = semaphoreState;
}

void THREAD_POOL::TLS_ELEMENT::WaitSemaphore(bool semaphoreState) const
{
    while (m_semaphore != semaphoreState)
    {
        DelayCurrentThread(0);
    }
    DelayCurrentThread(0); // we use this system call as a memory fence
}

bool THREAD_POOL::TLS_ELEMENT::CheckSemaphore() const
{
    bool semaphoreState = m_semaphore;
    DelayCurrentThread(0); // we use this system call as a memory fence
    return semaphoreState;
}

/* ===================================================================== */
/* eof */
/* ===================================================================== */
