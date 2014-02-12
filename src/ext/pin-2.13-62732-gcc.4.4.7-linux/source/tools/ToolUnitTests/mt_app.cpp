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
 * A simple MT application.
 */

#include <string>
#include <iostream>
#include "../Utils/threadlib.h"

#if defined(TARGET_WINDOWS)
#define EXPORT_CSYM extern "C" __declspec( dllexport )
#else
#define EXPORT_CSYM extern "C"
#endif

using namespace std;

/*!
 * The tool intercepts this function and flushes the Code Cache. 
 */
volatile unsigned numFlushes = 0;
EXPORT_CSYM void DoFlush()
{
    ++numFlushes;
}

void * ThreadProc(void * arg)
{
    DelayCurrentThread(1000); 
    return 0;
}

int main(int argc, char *argv[])
{
    const int numThreads = 3;
    THREAD_HANDLE threads[numThreads];
      
    for (int i = 0; i < numThreads; i++)
    {
        if (!CreateOneThread(&threads[i], ThreadProc, 0))
        {
            cerr << "CreateOneThread failed" << endl;
        }
    }

    for (int i = 0; i < numThreads; i++)
    {
        if (!JoinOneThread(threads[i]))
        {
            cerr << "JoinOneThread failed" << endl;
        }
    }

    cerr << "All application's threads joined" << endl;

    // Trigger the Code Cache flush
    DoFlush();
    DelayCurrentThread(1000); 
    
    cerr << "Application is exiting" << endl;

    return 0;
}
