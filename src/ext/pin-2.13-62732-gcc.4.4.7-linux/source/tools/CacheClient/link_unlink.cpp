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
//  This tool prints out any linking activity in the code cache
//  Sample usage:
//    pin -t link_unlink -- /bin/ls  

#include "pin.H"
#include "utils.H"
#include "portability.H"
#include <iostream>
#include <fstream>

using namespace std;

/* ================================================================== */
/* Global Variables                                                   */
/* ================================================================== */
int numLinks;
int numUnlinks;
ofstream TraceFile;

/* ===================================================================== */
/* Commandline Switches */
/* ===================================================================== */

KNOB<BOOL>  KnobHelp(KNOB_MODE_WRITEONCE, "pintool",
    "hh", "0", "Print help message (command-line switches)");
KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE, "pintool",
    "o", "link_unlink.out", "specify trace file name");
KNOB<BOOL>  KnobPid(KNOB_MODE_WRITEONCE, "pintool",
    "p", "0", "append pid to output");

/* ================================================================== */
VOID InitCounters()
{
    string logFileName = KnobOutputFile.Value();
    if( KnobPid )
        logFileName += "." + decstr( getpid_portable() );
    TraceFile.open(logFileName.c_str());

    numLinks = 0;
    numUnlinks = 0;
}

/* ================================================================== */
/*
 Print details of links patched
*/
VOID WatchLinks(ADDRINT branch_pc, ADDRINT target_pc)
{
    numLinks++;
    TraceFile << "LINK #" << dec << numLinks;
    TraceFile << "\tcache pc=0x" << hex << branch_pc;
    TraceFile << " \tpatched to pc=0x" << hex << target_pc << endl;
}
/* ================================================================== */
/*
 Print details of links unpatched
*/
VOID WatchUnlinks(ADDRINT branch_pc, ADDRINT stub_pc)
{
    numUnlinks++;
    TraceFile << "UNLINK #" << dec << numUnlinks;
    TraceFile << "\tcache pc=0x" << hex << branch_pc;
    TraceFile << " \trestored to stub pc=0x" << hex << stub_pc << endl;
}

/* ================================================================== */
/*
 Print details at the end of the run
*/
VOID PrintDetailsOnExit(INT32 code, VOID *v)
{
    int traces = CODECACHE_NumTracesInCache();

    TraceFile << endl << "------------------------" << endl;
    TraceFile << dec << traces << " traces" << endl;
    TraceFile << numLinks << " links set in the code cache" << endl;
    TraceFile << numUnlinks << " links removed from the code cache" << endl;
    TraceFile << "#eof" << endl;
    TraceFile.close();
}

/* ================================================================== */
/*
 Initialize and begin program execution under the control of Pin
*/
int main(INT32 argc, CHAR **argv)
{
    if (PIN_Init(argc, argv) || KnobHelp) return Usage();

    // Initialize some counters we're using in this tool
    InitCounters();

    // Register a routine that gets called when the cache is first initialized
    CODECACHE_AddCacheInitFunction(PrintInitInfo, 0);

    // Register a routine that gets called when patch a link in
    //  the code cache
    CODECACHE_AddTraceLinkedFunction(WatchLinks, 0);

    // Register a routine that gets called when we unpatch a link in
    //  the code cache
    CODECACHE_AddTraceUnlinkedFunction(WatchUnlinks, 0);

    // Register a routine that gets called when the program ends
    PIN_AddFiniFunction(PrintDetailsOnExit, 0);
    
    PIN_StartProgram();  // Never returns
    
    return 0;
}
