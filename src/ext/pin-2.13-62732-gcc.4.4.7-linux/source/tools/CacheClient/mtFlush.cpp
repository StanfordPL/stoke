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
//
//  ORIGINAL_AUTHOR: Kim Hazelwood
//
//  This tool flushes the code cache after every five
//      threads are created. (Run it with threadWait.c)
//  Sample usage:
//    pin -mt -t mtFlush -- threadWait

#include "pin.H"
#include "utils.H"
#include "portability.H"
#include <stdio.h>

using namespace std;

/* ================================================================== */
/* Global Variables                                                   */
/* ================================================================== */

FILE * out;
PIN_LOCK lock;
int numThreads;
int numFlushesTriggered;
int numFlushesOccurred;

/* ===================================================================== */
/* Commandline Switches */
/* ===================================================================== */

KNOB<BOOL>  KnobHelp(KNOB_MODE_WRITEONCE, "pintool",
    "hh", "0", "Print help message (command-line switches)");

void InitializeMe()
{
    out = fopen("mtFlush.out", "w");
    numThreads = 1;
    numFlushesTriggered = 0;
    numFlushesOccurred = 0;
}

VOID ThreadStart(THREADID threadid, CONTEXT *ctxt, INT32 flags, VOID *v)
{
    PIN_GetLock(&lock, threadid+1);
    fprintf(out, "thread begin %d\n",threadid);
    numThreads++;
    if (threadid % 5 == 4) 
    {
        numFlushesTriggered++;
        fprintf(out, "DUNK! (%d)\n",numFlushesTriggered);
        CODECACHE_FlushCache();
    }
    fflush(out);
    PIN_ReleaseLock(&lock);
}
    
VOID ThreadFini(THREADID threadid, const CONTEXT *ctxt, INT32 code, VOID *v)
{
    PIN_GetLock(&lock, threadid+1);
    fprintf(out, "thread end %d code %d\n",(int)threadid, (int)code);
    fflush(out);
    PIN_ReleaseLock(&lock);
}
    
VOID FlushHappened()
{
    numFlushesOccurred++;
    fprintf(out, "SWOOSH! (%d)\n",numFlushesOccurred);
}

VOID Fini(INT32 code, VOID *v)
{
    fprintf(out, "Fini: code %d\n", code);
    fclose(out);
}

/* ===================================================================== */
/* Main                                                                  */
/* ===================================================================== */

int main(INT32 argc, CHAR **argv)
{
    PIN_InitLock(&lock);

    InitializeMe();
    
    if (PIN_Init(argc, argv) || KnobHelp) return Usage();
    
    PIN_AddThreadStartFunction(ThreadStart, 0);
    PIN_AddThreadFiniFunction(ThreadFini, 0);
    CODECACHE_AddCacheFlushedFunction(FlushHappened, 0);
    PIN_AddFiniFunction(Fini, 0);
    
    // Never returns
    PIN_StartProgram();
    
    return 0;
}

