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
//  This tool reports Pin's memory usage over time. The intermittent
//    memory usage is dumped to a file when verbosity is set. At the
//    end of execution, the final memory usage is dumped to stdout.
//  Sample usage:
//    pin -t mem_usage -- /bin/ls

#include "pin.H"
#include "utils.H"
#include "portability.H"
#include <iostream>
#include <fstream>

using namespace std;

/* ================================================================== */
/* Global Variables                                                   */
/* ================================================================== */

int insertions;
int cacheblocks;
int flushes;
ofstream TraceFile;

/* ================================================================== */
/* Command-Line Switches                                              */
/* ================================================================== */
KNOB<BOOL>  KnobHelp(KNOB_MODE_WRITEONCE, "pintool",
    "hh", "0", "Print help message (command-line switches)");
KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE, "pintool",
    "o", "mem_usage.out", "specify trace file name");
KNOB<BOOL>  KnobPid(KNOB_MODE_WRITEONCE, "pintool",
    "p", "0", "append pid to output");
KNOB<BOOL> KnobVerboseOutput(KNOB_MODE_WRITEONCE, "pintool",
    "v", "0", "Verbose output");

/* ================================================================== */
/*
 Clear the stats
*/
VOID InitStretchCount()
{
    string logFileName = KnobOutputFile.Value();
    if( KnobPid )
        logFileName += "." + decstr( getpid_portable() );

    TraceFile.open(logFileName.c_str());

    insertions = 0;
    cacheblocks = 0;
    flushes = 0;
}

/* ================================================================== */
/*
  When notified by Pin that the cache was flushed, tell the user about it.
*/
VOID FlushHappened()
{
    flushes++;
    if (KnobVerboseOutput)
    {
        TraceFile << "---- SWOOSH! (" << dec << flushes << ") ----" << endl;
    }
}

/* ================================================================== */
/*
 Print details of traces as they are inserted. Note that we only print
 details of every 50th insertion.
*/
VOID WatchTraces(TRACE trace, VOID *v)
{
    insertions++;
    if (KnobVerboseOutput && (insertions % 50 == 0))
    {
        TraceFile << "Insertions: "     << dec << insertions;
        TraceFile << "   Blocks: "      << cacheblocks;
        TraceFile << "   TotalPinMem: " << PIN_MemoryAllocatedForPin();
        TraceFile << "   CodeMem(R): "  << CODECACHE_CodeMemReserved();
        TraceFile << " (U): "           << CODECACHE_CodeMemUsed();
        TraceFile << " (Stubs): "       << CODECACHE_ExitStubBytes();
        TraceFile << "   DirMem(U): "   << CODECACHE_DirectoryMemUsed();
        TraceFile << " (Links): "       << CODECACHE_LinkBytes() << endl;
    }
}

/* ================================================================== */
/*
 Print details at the end of the run
*/
VOID PrintDetailsOnExit(INT32 code, VOID *v)
{
    USIZE totalCodeCacheSize = CODECACHE_CodeMemReserved() + CODECACHE_DirectoryMemUsed();
    USIZE tracesSize = CODECACHE_CodeMemUsed() - CODECACHE_ExitStubBytes();
    USIZE lookupTableSize = CODECACHE_DirectoryMemUsed() - CODECACHE_LinkBytes();

    TraceFile << endl << "-------------------------------------------"               << endl;
    TraceFile << "Total Traces: "    << dec << insertions;
    TraceFile << "   Cache Blocks: " << cacheblocks << endl;
    TraceFile << "TotalPinMem: "     << BytesToString(PIN_MemoryAllocatedForPin())   << endl;
    TraceFile << "Code Cache: "      << BytesToString(totalCodeCacheSize)            << endl;
    TraceFile << "  Code Area "      << BytesToString(CODECACHE_CodeMemReserved());
    TraceFile << " (but only "       << BytesToString(CODECACHE_CodeMemUsed()) << " used)" << endl;
    TraceFile << "    (Traces): "    << BytesToString(tracesSize);
    TraceFile << " / "               << BytesToString(CODECACHE_CodeMemUsed())       << endl;
    TraceFile << "    (Exit stubs): " << BytesToString(CODECACHE_ExitStubBytes());
    TraceFile << " / "               << BytesToString(CODECACHE_CodeMemUsed())       << endl;
    TraceFile << "  Directory "      << BytesToString(CODECACHE_DirectoryMemUsed())  << endl;
    TraceFile << "    (Lookup table): " << BytesToString(lookupTableSize) ;
    TraceFile << " / "               << BytesToString(CODECACHE_DirectoryMemUsed())  << endl;
    TraceFile << "    (Links): "     << BytesToString(CODECACHE_LinkBytes()) ;
    TraceFile << " / "               << BytesToString(CODECACHE_DirectoryMemUsed())  << endl;
    TraceFile << "Flushes: "         << flushes << endl;
    TraceFile << "-------------------------------------------"                       << endl;

    TraceFile << "#eof" << endl;
    TraceFile.close();
}

/* ================================================================== */
/*
  Print details of a cache allocation
*/
VOID CollectBlockInfo(UINT32 block_size )
{
    cacheblocks++;
}

/* ================================================================== */
/*
 Initialize and begin program execution under the control of Pin
*/
int main(INT32 argc, CHAR **argv)
{
    if (PIN_Init(argc, argv) || KnobHelp) return Usage();

    // Initialize some local data structures
    InitStretchCount();
    
    // Register a routine that gets called when the cache is first initialized
    CODECACHE_AddCacheInitFunction(PrintInitInfo, 0);
    
    // Register a routine that gets called when new cache blocks are formed
    CODECACHE_AddCacheBlockFunction(CollectBlockInfo, 0);

    // Register a routine that gets called when a trace is 
    //  inserted into the codecache
    CODECACHE_AddTraceInsertedFunction(WatchTraces, 0);

    // Register a routine that gets called every time the cache is full
    CODECACHE_AddCacheFlushedFunction(FlushHappened, 0);
    
    // Register a routine that gets called when the program ends
    PIN_AddFiniFunction(PrintDetailsOnExit, 0);
    
    PIN_StartProgram();  // Never returns
    
    return 0;
}

