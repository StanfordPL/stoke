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
 * This  tool tests calling a THEN instrumentation function when the if instrumentation function 
   intiates a code-cache flush
 */

#include "pin.H"
#include <stdio.h>
#include <stdlib.h>

int numFlushes = 0;
int numThenCalls = 0;
int dummy = 0;



static VOID OnCacheFlush()
{
    numFlushes++;
}


static ADDRINT IfFunc ()
{
    CODECACHE_FlushCache();
    return 1;
}

static VOID ThenFunc (ADDRINT memoryReadAddr)
{
    // avoid any possibility of inlining
    dummy++;
    if (dummy==10)
    {
        dummy = 0;
    }
    numThenCalls++;
}

static VOID InstrumentRoutine(INS ins, VOID *)
{
    if (numThenCalls > 10)
    {
        return;
    }
    if (INS_IsMemoryRead(ins))
    {
        INS_InsertIfCall(ins, IPOINT_BEFORE, (AFUNPTR)IfFunc, IARG_END);
        INS_InsertThenCall(ins, IPOINT_BEFORE, (AFUNPTR)ThenFunc,
                           IARG_MEMORYREAD_EA, // pass a parameter
                           IARG_END);
    }
}

VOID Fini(INT32 code, VOID *v)
{
   if (numFlushes==0)
   {
       printf ("***Error had no flushes\n");
       exit (-1);
   }
   if (numThenCalls==0)
   {
       printf ("***Error had no then calls\n");
       exit (-1);
   }

}

int main(INT32 argc, CHAR **argv)
{
    PIN_Init(argc, argv);

    INS_AddInstrumentFunction(InstrumentRoutine, 0);
    CODECACHE_AddCacheFlushedFunction(OnCacheFlush, 0);
    PIN_AddFiniFunction(Fini, 0);

    PIN_StartProgram();
    return 0;
}

