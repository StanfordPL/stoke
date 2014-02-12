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
 * A stress test for threads on Windows.  Create a bunch of threads and let them
 * exit at the same time.
 */

#include <windows.h>
#include <iostream>

static DWORD WINAPI Child(LPVOID);

HANDLE GoEvent;
const unsigned NumThreads = 50;


int main()
{
    GoEvent = CreateEvent(0, TRUE, FALSE, 0);
    if (!GoEvent)
    {
        std::cerr << "Unable to create GO event\n";
        return 1;
    }

    HANDLE *threadHandles = new HANDLE[NumThreads];
    for (unsigned i = 0;  i < NumThreads;  i++)
    {
        HANDLE h = CreateThread(0, 0, Child, 0, 0, 0);
        if (!h)
        {
            std::cerr << "Unable to create child thread\n";
            return 1;
        }
        threadHandles[i] = h;
    }

    // All the threads are waiting on this event.  Tell them all to go simultaneously.
    //
    if (!SetEvent(GoEvent))
    {
        std::cerr << "Error from SetEvent\n";
        return 1;
    }

    DWORD ret = WaitForMultipleObjects(NumThreads, threadHandles, TRUE, INFINITE);
    if (ret != WAIT_OBJECT_0)
    {
        std::cerr << "Failure while waiting for child threads to terminate\n";
        return 1;
    }

    delete threadHandles;
    return 0;
}

static DWORD WINAPI Child(LPVOID)
{
    WaitForSingleObject(GoEvent, INFINITE);
    return 0;
}
