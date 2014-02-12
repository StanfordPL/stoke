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
//  ORIGINAL_AUTHOR: Robert Muth
//
//  This tool watches various code cache activities 
//       and dumps them to a file
//  Sample usage:
//    pin -t event_trace -- /bin/ls

#include "pin.H"
#include "portability.H"
#include "utils.H"
#include <fstream>
#include <iostream>

using namespace std;

/* ================================================================== */
/* Global Variables                                                   */
/* ================================================================== */
ofstream    OutFile ("ctrace.out");
int numTraces;

/* ================================================================== */
/* Command-line Switches                                              */
/* ================================================================== */

KNOB<BOOL>  KnobHelp(KNOB_MODE_WRITEONCE, "pintool",
    "hh", "0", "Print help message (command-line switches)");

/* ================================================================== */
/*
 Print details of traces as they are inserted
*/

VOID WatchTraces(TRACE trace, VOID *v)
{
    ADDRINT orig_pc = TRACE_Address(trace);
    string name = RTN_FindNameByAddress(orig_pc);
    if (name == "")
        name = "*noname*";
       
    OutFile << "@ITRACE " << dec
            << numTraces++
            << " 0x" << hex << orig_pc
            << " 0x" << hex << TRACE_CodeCacheAddress(trace) << " " << dec 
            << TRACE_NumBbl(trace) << " " << dec 
            << TRACE_NumIns(trace) << " " << dec 
            << TRACE_Size(trace) << " " << dec 
            << TRACE_CodeCacheSize(trace) << " " 
            << name
            << endl << flush;
}

/* ================================================================== */
/*

*/

VOID WatchLinks(ADDRINT branch_pc, ADDRINT target_pc)
{
    OutFile << "@LINK "
            << " 0x" << hex << branch_pc
            << " 0x" << hex << target_pc
            << endl << flush;
}


/* ================================================================== */
/*
 Initialize and begin program execution under the control of Pin
*/
int main(INT32 argc, CHAR **argv)
{
    numTraces = 0;

    PIN_InitSymbols();

    if (PIN_Init(argc, argv) || KnobHelp) return Usage();

    CODECACHE_AddTraceInsertedFunction(WatchTraces, 0);

    CODECACHE_AddTraceLinkedFunction(WatchLinks, 0);
    
    PIN_StartProgram();  // Never returns
    
    return 0;
}

/* ================================================================== */
