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
  @ORIGINAL_AUTHOR: Weiss Yael
*/

/* ===================================================================== */
/*! @file
 *  Pin Tool for testing the correctness of "INS_InsertThenCall" function.
 */

#include "pin.H"
#include <iostream>
#include <fstream>
#include <string.h>

/* ===================================================================== */
/* Commandline Switches */
/* ===================================================================== */

LOCALVAR std::ofstream out;

KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE, "pintool",
    "o", "insert_if_then_call1.out", "Output file");


/* ===================================================================== */

static ADDRINT IfFunction()
{
    return TRUE;
}

static VOID ThenFunction (BOOL first)
{
    //do nothing
}



/* ===================================================================== */

VOID Instruction(INS ins, VOID *v)
{
    //Should cause an error since Pin does not support IPOINT_ANYWHERE with the function: "INS_InsertThenCall"
    INS_InsertIfCall(ins, IPOINT_BEFORE , (AFUNPTR)IfFunction, IARG_END);
    INS_InsertThenCall(ins, IPOINT_ANYWHERE, (AFUNPTR)ThenFunction, IARG_END);
}


/* ===================================================================== */
/* Utilities                                                             */
/* ===================================================================== */

/*!
*  Print out help message.
*/

INT32 Usage()
{
	/* Knobs automate the parsing and management of command line switches. 
     * A command line contains switches for Pin, the tool, and the application. 
     * The knobs parsing code understands how to separate them. 
     */
    cerr << KNOB_BASE::StringKnobSummary() << endl; //   Print out a summary of all the knobs declare

    return -1;
}


/* ===================================================================== */

int main(int argc, char *argv[])
{
    if( PIN_Init(argc,argv) )
    {
        return Usage();
    }

    INS_AddInstrumentFunction(Instruction, 0);

    // Never returns
    PIN_StartProgram();
    
    return 0;
}

/* ===================================================================== */
/* eof */
/* ===================================================================== */
