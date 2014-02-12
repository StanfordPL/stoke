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
 * Check that if we register an instruction fetcher it is not used to fetch from 
 * the tool itself. 
 */

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include "pin.H"

using std::cerr;
using std::endl;

static UINT64 insCount = 0;

static size_t fetchIns(void *buf, ADDRINT addr, size_t size, EXCEPTION_INFO *pExceptInfo, VOID *)
{
    /* Validate that the fetch is in the range we expect and abort if not.
     */
    size_t bytesRead = PIN_SafeCopyEx (static_cast<UINT8*>(buf),  
                           reinterpret_cast<UINT8*>(addr),  size, pExceptInfo);

    return bytesRead;
}

// This is small enough to be inlined, which stresses the code fetcher from the tool
// slightly more.
static VOID incCount()
{
    insCount++;
}

static VOID fini(INT32, VOID *)
{
	cerr << insCount << " instructions in the main image executed" << endl;
} 

static VOID Trace(TRACE trace, VOID *arg)
{
    UINT8 bytes[16];
    size_t len = 0;

    for (BBL bbl = TRACE_BblHead(trace); BBL_Valid(bbl); bbl = BBL_Next(bbl))
    {
        for (INS ins = BBL_InsHead(bbl); INS_Valid(ins); ins = INS_Next(ins))
        {
            INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)(incCount), IARG_END);
            len = PIN_FetchCode(bytes, (VOID*)INS_Address(ins), INS_Size(ins), 0);
            if (len != INS_Size(ins))
            {
                fprintf(stderr, "Error in fetcher callback call\n");
                exit(1);
            }
        }
    }
}

// argc, argv are the entire command line, including pin -t <toolname> -- ...
int main(int argc, char * argv[])
{
    PIN_InitSymbols();

    // Initialize pin
    PIN_Init(argc, argv);

    PIN_AddFetchFunction (fetchIns, 0);
    TRACE_AddInstrumentFunction(Trace, 0);

    // Register Fini to be called when the application exits
    PIN_AddFiniFunction(fini, 0);
    
    // Start the program, never returns
    PIN_StartProgram();
    
    return 0;
}
