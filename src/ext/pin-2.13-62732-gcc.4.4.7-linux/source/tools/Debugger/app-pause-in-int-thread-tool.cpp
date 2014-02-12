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
#include "pin.H"
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

/*
  The tool validates stopping threads API called in internal thread.
*/

#define MAX_NUM_THREADS 5
// Number of times to stop application threads
#define TIMES 3
// Interval in instructions to repeat PIN_StopApplicationThreads() calls.
#define PAUSE_INTERVAL 10000000

// Instruction counters per thread
long long unsigned int icounter[MAX_NUM_THREADS];

volatile bool stopFlag = false;

THREADID intTid;

VOID doPause(VOID * arg)
{
    for (int i = 0; i < TIMES; i++)
    {
        while (stopFlag == false)
        {
            PIN_Sleep(10);
        }
        stopFlag = false;

        printf("Threads to be stopped by internal thread %u\n", intTid);
        fflush(stdout);
        if (PIN_StopApplicationThreads(intTid))
        {
            UINT32 nThreads = PIN_GetStoppedThreadCount();

            printf("Threads stopped by internal thread %u : %u\n", intTid, nThreads);
            fflush(stdout);

            for (UINT32 index = 0; index < nThreads; index++)
            {
                THREADID tid = PIN_GetStoppedThreadId(index);
                const CONTEXT * ctxt = PIN_GetStoppedThreadContext(tid);
                printf("  Thread %u, IP = %llx, icount = %llu\n", tid,
                       (long long unsigned int)PIN_GetContextReg(ctxt, REG_INST_PTR), icounter[tid]);
            }
            PIN_ResumeApplicationThreads(intTid);
            printf("Threads resumed by internal thread %u\n", intTid);
            fflush(stdout);
        }
    }
    return;
}

VOID iCount(THREADID threadid)
{
    if ((++icounter[threadid] % PAUSE_INTERVAL) == 0)
    {
        stopFlag = true;
    }
}

VOID insCallback(INS ins, void *v)
{
    INS_InsertCall(ins, IPOINT_BEFORE,
        AFUNPTR(iCount),
        IARG_THREAD_ID,
        IARG_END);
}

int main(int argc, char **argv)
{
    PIN_Init(argc,argv);
    INS_AddInstrumentFunction(insCallback, 0);

    intTid = PIN_SpawnInternalThread(doPause, 0, 0, 0);
    ASSERT(intTid != INVALID_THREADID, "Fail to spawn internal thread");

    PIN_StartProgram();
    return 0;
}
