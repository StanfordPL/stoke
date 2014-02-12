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
/*
  @ORIGINAL_AUTHOR: Jim Cownie
*/

/* ===================================================================== */
/*! @file
 *  This file contains a test for the implementation of thenpredicated 
 * instrumentation.
 * It tests the condition reported in Mantis 1862 which causes a Pin
 * assertion on this code. 
 */

#include "pin.H"
#include <iostream>
#include <fstream>
#include <string.h>

/* ===================================================================== */
/* Global Variables */
/* ===================================================================== */

/* ===================================================================== */
/* Commandline Switches */
/* ===================================================================== */

LOCALVAR std::ofstream out;

KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE,         "pintool",
    "o", "thenpredicated.out", "Output file");


/* ===================================================================== */

INT32 Usage()
{
    cerr << "This tool tests thenpredicated instrumentation" << endl;
    cerr << KNOB_BASE::StringKnobSummary();
    cerr << endl;

    return -1;
}

/* ===================================================================== */
static ADDRINT returnArg(ADDRINT arg)
{
    return arg;
}

// Not thread safe, but that's not the point of this test.
static UINT32 predicatedTrueCount = 0;

static VOID countInst()
{
    predicatedTrueCount++;
}

/* ===================================================================== */

VOID Instruction(INS ins, VOID *v)
{
    // Find predicated instructions only.
    if (INS_IsPredicated(ins))
    {
        INS_InsertIfCall (ins, IPOINT_BEFORE, (AFUNPTR)returnArg, IARG_ADDRINT, 1, IARG_END);
        INS_InsertThenPredicatedCall (ins, IPOINT_BEFORE, (AFUNPTR)countInst, IARG_END);
    }
}

/* ===================================================================== */

VOID Fini(INT32 code, VOID *v)
{
    out << "Predicated true instructions " << predicatedTrueCount << endl;
    out.close();
}

/* ===================================================================== */

int main(int argc, char *argv[])
{
    if( PIN_Init(argc,argv) )
    {
        return Usage();
    }
    
    string filename =  KnobOutputFile.Value();
    
    // Do this before we activate controllers
    out.open(filename.c_str());

    INS_AddInstrumentFunction(Instruction, 0);
    PIN_AddFiniFunction(Fini, 0);

    // Never returns
    PIN_StartProgram();
    
    return 0;
}

/* ===================================================================== */
/* eof */
/* ===================================================================== */
