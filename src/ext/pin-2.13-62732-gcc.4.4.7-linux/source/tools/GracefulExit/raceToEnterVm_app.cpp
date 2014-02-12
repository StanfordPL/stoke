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
 * This test creates a race condition in which multiple threads race to enter the VM
 * while the main thread attempts to stop them in the thread depot. This condition
 * should not cause the process to hang.
 * The test is run with no tool.
 */

#include <Windows.h>
#include <cassert>
#include <iostream>

using std::cerr;
using std::endl;

HANDLE hEvent; // the secondary threads will wait on this event


// main function of the secondary threads
static DWORD WINAPI SecondaryThread(LPVOID lpParameter) {
    // The threads will wait in a blocking system call until released for the first time.
    // Then, the event stays signaled, so we get a busy wait. Every iteration, the threads
    // enter the kernel and exit immediately, causing them to race back in to the VM.
    while (TRUE) {
        WaitForSingleObject(hEvent, INFINITE);
    }
}

int main() {
    hEvent = CreateEvent(NULL, TRUE, FALSE, NULL); // manual reset event
    cerr << "APP: Creating threads." << endl;
    for (int i = 0; i < 10; ++i) {
        DWORD tid;
        assert(CreateThread(NULL, 0, SecondaryThread, NULL, 0, &tid));
    }
    Sleep(2 * 1000);
    cerr << "APP: Releasing threads and exiting..." << endl;
    SetEvent(hEvent);
    return 0;
}
