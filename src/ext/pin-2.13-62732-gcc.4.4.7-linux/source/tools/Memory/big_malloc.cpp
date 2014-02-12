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
 * This test verifies that a tool can successfully allocate more than 4G of memory in one chunk on 64 bit platforms.
 * We only allocate 4608 MB since some of our test machines don't have enough memory for a larger chunk.
 *
 * When running the test, we use the -separate_memory knob to ensure that the allocation is done far enough from the
 * application, otherwise probe insertion may fail.
 */

#include <cstdlib>
#include <iostream>
#include "pin.H"

using std::cerr;
using std::endl;

#if defined(TARGET_WINDOWS)
namespace WIND {
#include <Windows.h>
}
#endif

static bool EnoughAvailableMemory(size_t size)
{
// Some Windows test machines don't have enough memory for the big allocation.
#if defined(TARGET_WINDOWS)
    WIND::MEMORYSTATUSEX memStatus;
    memStatus.dwLength = sizeof(memStatus);
    if (WIND::GlobalMemoryStatusEx(&memStatus) == 0)
    {
        cerr << "BIG MALLOC ERROR: Encountered an error while reading the memory status from the system." << endl;
        PIN_ExitProcess(1);
    }
    // The ullAvailPageFile field holds the maximum amount of memory the current process can commit.
    return (memStatus.ullAvailPageFile >= size);
#endif
    
// We expect all non-Windows test machines to have enough memory for the allocation.
    return true;
}


int main(int argc, char * argv[])
{
    PIN_Init(argc, argv);

    // Allocate a large chunk of memory (needs to be larger than 4 GB).
    size_t size = 1;    // 1 B
    size <<= 3;         // 8 B
    size += 1;          // 9 B
    size <<= 29;        // 4608 MB

    // Verify that there is enough available memory for this allocation.
    if (!EnoughAvailableMemory(size))
    {
        cerr << "BIG MALLOC WARNING: The system does not have enough available memory for the big allocation." << endl;
        PIN_StartProgram(); // never returns
        cerr << "BIG MALLOC ERROR: This line should not have been reached." << endl;
        PIN_ExitProcess(2);
    }

    // Now do the allocation itself.
    int* bigPtr = (int*)malloc(size);

    // Error checking.
    if (bigPtr == NULL)
    {
        size_t mbSize = size >> 20; // print something readable
        cerr << "BIG MALLOC ERROR: Unable to allocate the requested " << mbSize << " MB of memory." << endl;
        PIN_ExitProcess(3);
    }

    // Make sure we can access all elements of the array. If there was a problem with the allocation,
    // we will get a segmentation fault.
    size_t blocks = size/sizeof(int);
    for (size_t i = 0; i < blocks; ++i)
    {
    	bigPtr[i] = 1;
    }
    
    PIN_StartProgram(); // never returns

    return 0;
}
