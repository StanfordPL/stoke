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
/* ===================================================================== */
/*! @file
 *  This file tests calling malloc from the tool and if the memoray 
 *  allocation statistic are reported correctly.
 *
 *  For each trace of the application is allocates 128 bytes.
 *  In the fini it reports the amount of allocated memory.
 *  the test is run as:
 *      pin -t tool_malloc -o tool_malloc.out -xyzzy -statistic -- cp makefile <new-file>
 *
 *  The test then compare between the amount in tool_malloc.out and pintool.log
 */

#include "pin.H"
#include <iostream>
#include <fstream>
#include <stdlib.h>

using namespace std;

const INT BUF_SIZE = 100;

struct REC {
    CHAR data[BUF_SIZE];
    struct REC *next;
};

/* ===================================================================== */
/* Global Variables */
/* ===================================================================== */

struct REC *head = 0;
UINT64 alloc_count = 0;
ofstream TraceFile;

/* ===================================================================== */
/* Commandline Switches */
/* ===================================================================== */

KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE,         "pintool",
                            "o", "tool_malloc.out", "specify output file name");

/* ===================================================================== */

INT32 Usage()
{
    cerr <<
        "This tool allocate a record for each trace, and report the number of allocated bytes"
        "\n";

    cerr << KNOB_BASE::StringKnobSummary();

    cerr << endl;

    return -1;
}

/* ===================================================================== */

VOID Trace(TRACE trace, VOID *v)
{
    struct REC *rec = (struct REC *)malloc(sizeof(struct REC));
    alloc_count += sizeof(struct REC);
    rec->next = head;
    head = rec;
}

/* ===================================================================== */

VOID Fini(INT32 code, VOID *v)
{
    TraceFile.open(KnobOutputFile.Value().c_str());
    TraceFile << alloc_count << endl;
    TraceFile.close();
}

/* ===================================================================== */

int main(int argc, char *argv[])
{
    if( PIN_Init(argc,argv) )
    {
        return Usage();
    }
    
    TRACE_AddInstrumentFunction(Trace, 0);
    PIN_AddFiniFunction(Fini, 0);

    // Never returns
    PIN_StartProgram();
    
    return 0;
}

/* ===================================================================== */
/* eof */
/* ===================================================================== */
