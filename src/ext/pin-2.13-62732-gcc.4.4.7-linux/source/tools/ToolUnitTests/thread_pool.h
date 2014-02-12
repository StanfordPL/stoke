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
#ifndef THREAD_POOL_H
#define THREAD_POOL_H

#include "runnable.h"
#include "../Utils/threadlib.h"

/*!
 * Runnable object that exits the current thread.
 */
class EXIT_THREAD_OBJ : public RUNNABLE_OBJ
{
public:
    void Run() {ExitCurrentThread();}
};

/*!
 * Pool of threads that can be used to execute runnable objects.
 * External access to this singleton must be serialized. It is guaranteed
 * if the thread pool is managed by a single (main) thread of the process.
 */
class THREAD_POOL
{
public:

    // Constructor
    THREAD_POOL() : m_numThreads(0) {}

    // Destructor
    ~THREAD_POOL() {TerminateAll();}

    // Create specified number of new threads in the pool.
    // @return number of threads created successfully
    unsigned long Create(unsigned long numThreads);

    // Start running the specified object in the specified thread.
    // The function is non-blocking - it does not wait for the completion
    // of the RUNNABLE_OBJ::Run() function.
    // @return TRUE - success, FALSE - failure
    bool Start(unsigned long tid, RUNNABLE_OBJ * runObj); 

    // Block the current thread until a runnable object, assigned to the specified thread,
    // completes its function,
    // @return runnable object assigned to the thread or NULL.
    RUNNABLE_OBJ * Wait(unsigned long tid); 

    unsigned long NumThreads() const {return m_numThreads;}

    // Terminate all threads in the pool.
    void TerminateAll();

private:
    unsigned long m_numThreads;

    struct TLS_ELEMENT
    {
        THREAD_HANDLE m_handle;
        RUNNABLE_OBJ * volatile m_runObj;
        volatile bool m_semaphore;

        // Initialize TLS element
        void Init() {m_handle = 0; m_runObj = 0; m_semaphore = false;}

        // Semaphore manipulation functions
        void SwitchSemaphore(bool semaphoreState);
        void WaitSemaphore(bool semaphoreState) const;
        bool CheckSemaphore() const;

    }m_tls[MAXTHREADS];

    //Disable copy constructor and assignment operator
    THREAD_POOL(const THREAD_POOL &);
    THREAD_POOL & operator = (const THREAD_POOL &);

    // Main routine of threads in the pool
    static void * ThreadRoutine(void * tlsArg);
};

#endif //THREAD_POOL_H

/* ===================================================================== */
/* eof */
/* ===================================================================== */
