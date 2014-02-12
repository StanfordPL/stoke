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
 * This tool replays a windows exception. It is intended to be
 * used with the win_exception.c test.
 */
#include <stdio.h>
#include "pin.H"

static FILE * out;

VOID Fini(INT32 code, VOID *v)
{
    fprintf(out, "PinFiniFunction\n");
    fclose(out);
}

static CONTEXT savedFromContext;
static CONTEXT savedToContext;
static INT32   savedReason;

static int exceptionCount = 0;
static BOOL foundReplayException = FALSE;

static VOID OnException(THREADID threadIndex, 
                        CONTEXT_CHANGE_REASON reason, 
                        const CONTEXT *ctxtFrom,
                        CONTEXT *ctxtTo,
                        INT32 info, 
                        VOID *v)
{
    if (!foundReplayException)
    {
        fprintf (out, "Failed to instrument ReplayException!\n");
    }
    if (reason == CONTEXT_CHANGE_REASON_EXCEPTION)
    {
        if (exceptionCount++ == 0)
        {
            PIN_SaveContext (ctxtFrom, &savedFromContext);
            PIN_SaveContext (ctxtTo,   &savedToContext);
            savedReason = info;
        }
        fprintf (out, "See exception %d : info 0x%x from 0x%0x\n", exceptionCount, info,
                 PIN_GetContextReg(ctxtFrom, REG_INST_PTR));
        fflush(out);
        
        if (exceptionCount == 2)
        {
            // Check that the second exception is the same as the first, at least to a first approximation.
            if (info == savedReason && 
                PIN_GetContextReg(ctxtFrom, REG_INST_PTR) == PIN_GetContextReg(&savedFromContext, REG_INST_PTR))
            {
                fprintf (out, "Second exception looks like a replay, good!\n");
                fflush(out);
                exit(0);
            }
            else
            {
                fprintf (out, "Second exception does not look like a replay, BAD!\n");
                fflush(out);
                exit(1);
            }
        }
    }
}

static VOID reRaiseException(THREADID tid)
{
    if (exceptionCount == 0)
    {
        fprintf (out, "Trying to replaying the first exception, but we haven't seen one!\n");
        return;
    }
    fprintf (out, "Replaying the first exception\n");
    fflush(out);
    PIN_ReplayContextChange(tid, &savedFromContext, &savedToContext, CONTEXT_CHANGE_REASON_EXCEPTION, savedReason);
}

static VOID Image(IMG img, VOID *v)
{
    if (foundReplayException)
        return;

    // hook the functions in the image. If these functions are called then it means
    // that pin has not lost control.
    RTN rtn = RTN_FindByName(img, "ReplayException");
    if (RTN_Valid(rtn))
    {
        RTN_Open(rtn);
        RTN_InsertCall(rtn, IPOINT_BEFORE, AFUNPTR(reRaiseException), IARG_THREAD_ID, IARG_END);
        RTN_Close(rtn);
        foundReplayException = TRUE;
    }
}

int main(INT32 argc, CHAR **argv)
{
    out = fopen("win_replay_exception.out", "w");

    PIN_InitSymbols();
    PIN_Init(argc, argv);

    PIN_AddContextChangeFunction(OnException, 0);

    IMG_AddInstrumentFunction(Image, 0);

    PIN_AddFiniFunction(Fini, 0);

    // Never returns
    PIN_StartProgram();

    return 0;
}
