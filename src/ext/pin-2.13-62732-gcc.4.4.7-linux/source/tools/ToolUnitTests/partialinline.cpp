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
#include <stdio.h>
#include <assert.h>
#include <stdlib.h>
#include "pin.H"

const UINT32 period = 10000;

// The running bbl count is kept here
UINT32 acount = 0;
UINT32 pcount = 0;

ADDRINT Always()
{
    ++acount;
    return acount==period;
}

VOID Rare()
{
    ++pcount;
    acount = 0;
}

UINT32 ccount = 0;
UINT32 rcount = 0;

ADDRINT AlwaysNoinline()
{
    ++ccount;
    if (ccount == 1000000) printf("Should not get here\n");
    return ccount==period;
}

VOID RareNoinline()
{
    assert(ccount == period);
    ++rcount;
    if (ccount == 1000000) printf("Should not get here\n");
    ccount = 0;
}

UINT32 bcount = 0;
UINT32 qcount = 0;

VOID Noinline()
{
    ++bcount;

    if (bcount==period)
    {
        ++qcount;
        bcount = 0;
    }
}

static UINT32 mcount;

ADDRINT ReadAlways()
{
    mcount++;
    return mcount == 1000;
}

VOID ReadRare()
{
    if (mcount != 1000)
    {
        printf("Mcount %d\n", mcount);
        exit(1);
    }

    mcount = 0;
}

// Pin calls this function every time a new basic block is encountered
// It inserts a call to docount
VOID Trace(TRACE trace, VOID *v)
{
    // Visit every basic block in the trace
    for (BBL bbl = TRACE_BblHead(trace); BBL_Valid(bbl); bbl = BBL_Next(bbl))
    {
        for (INS ins = BBL_InsHead(bbl); INS_Valid(ins); ins = INS_Next(ins))
        {
            if (INS_IsMemoryRead(ins))
            {
                INS_InsertIfCall(ins, IPOINT_BEFORE, (AFUNPTR)ReadAlways, IARG_MEMORYREAD_EA, IARG_END);
                INS_InsertThenCall(ins, IPOINT_BEFORE, (AFUNPTR)ReadRare, IARG_MEMORYREAD_EA, IARG_END);
            }
        }
            
        // Always()->Rare() are partially inlined
        BBL_InsertIfCall(bbl,   IPOINT_BEFORE, (AFUNPTR)Always, IARG_END);
        BBL_InsertThenCall(bbl, IPOINT_BEFORE, (AFUNPTR)Rare, IARG_END);

        // Always()->Rare() are partially inlined
        BBL_InsertIfCall(bbl,   IPOINT_BEFORE, (AFUNPTR)AlwaysNoinline, IARG_END);
        BBL_InsertThenCall(bbl, IPOINT_BEFORE, (AFUNPTR)RareNoinline, IARG_END);

        // Noinline() is not inlined
        BBL_InsertCall(bbl, IPOINT_BEFORE, (AFUNPTR)Noinline, IARG_END);
    }
}

// This function is called when the application exits
VOID Fini(INT32 code, VOID *v)
{
    if (pcount*period+acount != qcount*period+bcount
        || pcount*period+acount != rcount*period+ccount)
    {
        fprintf(stderr, "Counts NOT matched:\n"
                "partial-inline   count=%d (pcount=%d acount=%d),\n"
                "partial-noinline count=%d (rcount=%d ccount=%d),\n"
                "noninline        count=%d (qcount=%d bcount=%d)\n",
                pcount*period+acount, pcount, acount,
                rcount*period+ccount, rcount, ccount,
                qcount*period+bcount, qcount, bcount);
        exit(1);
    }
}

// argc, argv are the entire command line, including pin -t <toolname> -- ...
int main(int argc, char * argv[])
{
    // Initialize pin
    PIN_Init(argc, argv);

    // Register Instruction to be called to instrument instructions
    TRACE_AddInstrumentFunction(Trace, 0);

    // Register Fini to be called when the application exits
    PIN_AddFiniFunction(Fini, 0);
    
    // Start the program, never returns
    PIN_StartProgram();
    
    return 0;
}
