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
//  This tool implements a custom code cache management policy
//  Sample usage:
//    pin -t cache_stats -- /bin/ls

#include "pin.H"
#include "utils.H"
#include "portability.H"
#include <iostream>
#include <fstream>

using namespace std;

/* ================================================================== */
/* Global Variables                                                   */
/* ================================================================== */

struct GLOBALSTRUCT
{
    int stretches;
    int multiplier;
    int flushes;
    int numJumpsIntoCodeCache;
    int numJumpsOutofCodeCache;
    int cacheblocks;
    int inaccessible;
    int insertions;
    int numLinks;
    int numUnlinks;
    int totalTraces;
    int totalStubs;
    int totalCompensations;
    long int totalTraceSize;
    long int totalStubSize;
    long int totalCompensationSize;
    bool exponential;
}Global;
ofstream TraceFile;

/* ================================================================== */
/* Command-Line Switches                                              */
/* ================================================================== */
KNOB<BOOL>  KnobHelp(KNOB_MODE_WRITEONCE, "pintool",
    "hh", "0", "Print help message (command-line switches)");
KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE, "pintool",
    "o", "cache_stats.out", "specify trace file name");
KNOB<BOOL>  KnobPid(KNOB_MODE_WRITEONCE, "pintool",
    "p", "0", "append pid to output");
KNOB<BOOL> KnobVerboseOutput(KNOB_MODE_WRITEONCE, "pintool",
    "v", "0", "Verbose output");
KNOB<BOOL> KnobExponentialGrowth(KNOB_MODE_WRITEONCE, "pintool",
    "exp", "0", "Cache size grows exponentially");

/* ================================================================== */
/*
 Clear the cache flush count
*/
VOID InitStretchCount()
{
    string logFileName = KnobOutputFile.Value();
    if( KnobPid )
        logFileName += "." + decstr( getpid_portable() );
    TraceFile.open(logFileName.c_str());

    Global.flushes = 0;
    Global.numJumpsIntoCodeCache = 0;
    Global.numJumpsOutofCodeCache = 0;
    Global.numLinks = 0;
    Global.numUnlinks = 0;
    Global.insertions = 0;
    Global.cacheblocks = 0;
    Global.stretches = 0;
    Global.multiplier = 2;
    Global.exponential = KnobExponentialGrowth.Value();
    Global.totalTraces = 0;
    Global.totalStubs = 0;
    Global.totalCompensations = 0;
    Global.totalTraceSize = 0;
    Global.totalStubSize = 0;
    Global.totalCompensationSize = 0;
}

/* ================================================================== */
/*
  When notified by Pin that the cache is full, grow the cache and
  tell the user about it.
*/
VOID GrowOnFull(UINT32 trace_size, UINT32 stub_size)
{
    Global.stretches++;

    USIZE cacheSize = CODECACHE_CacheSizeLimit();
    USIZE blockSize = CODECACHE_BlockSize();

    cacheSize *= Global.multiplier;
    if (Global.stretches > 1) blockSize *= Global.multiplier;

    CODECACHE_ChangeCacheLimit(cacheSize);
    CODECACHE_ChangeBlockSize(blockSize);
    ASSERTX(CODECACHE_CreateNewCacheBlock(blockSize));

    if (KnobVerboseOutput)
    {
        cout << " STRETCH! (" << dec << Global.stretches;
        cout << ")\tcache: " << dec << BytesToString(cacheSize);
        cout << "\tblock: " << dec << BytesToString(blockSize) << endl;
    }
    if (Global.exponential) Global.multiplier *= Global.multiplier;
}

/* ================================================================== */
/*
  When notified by Pin that the cache is full, perform a flush and
  tell the user about it.
*/
VOID FlushOnFull(UINT32 trace_size, UINT32 stub_size)
{
    Global.flushes++;
    CODECACHE_FlushCache();
    if (KnobVerboseOutput)
    {
        cout << " SWOOSH! (" << dec << Global.flushes << ")" << endl;
    }
}

/* ================================================================== */
/*
 Print details of jumps into code cache
*/
VOID WatchEnter(ADDRINT cache_pc)
{
    Global.numJumpsIntoCodeCache++;
    if (KnobVerboseOutput)
    {
        TraceFile << "Jump into code cache #" << dec << Global.numJumpsIntoCodeCache;
        TraceFile << "\tcache pc=0x" << hex << cache_pc << endl;
    }
}
/* ================================================================== */
/*
 Print details of jumps out of code cache
*/
VOID WatchExit(ADDRINT cache_pc)
{
    Global.numJumpsOutofCodeCache++;
    if (KnobVerboseOutput)
    {
        TraceFile << "Jump out of code cache #" << dec << Global.numJumpsOutofCodeCache;
        TraceFile << "\tcache pc=0x" << hex << cache_pc << endl;
    }
}

/* ================================================================== */
/*
 Print details of links as they are patched
*/
VOID WatchLinks(ADDRINT branch_pc, ADDRINT target_pc)
{
    Global.numLinks++;
    if (KnobVerboseOutput)
    {
        TraceFile << "LINK #" << dec << Global.numLinks;
        TraceFile << "\tcache pc=0x" << hex << branch_pc;
        TraceFile << " \tpatched to pc=0x" << hex << target_pc << endl;
    }
}
/* ================================================================== */
/*
 Print details of links unpatched
*/
VOID WatchUnlinks(ADDRINT branch_pc, ADDRINT stub_pc)
{
    Global.numUnlinks++;
    if (KnobVerboseOutput)
    {
        TraceFile << "UNLINK #" << dec << Global.numUnlinks;
        TraceFile << "\tcache pc=0x" << hex << branch_pc;
        TraceFile << " \trestored to stub pc=0x" << hex << stub_pc << endl;
    }
}

/* ================================================================== */
/*
 Print details of traces as they are inserted
*/
VOID WatchTraces(TRACE trace, VOID *v)
{
    Global.insertions++;
    Global.totalTraces++;
    Global.totalStubs+=TRACE_NumBbl(trace);
    Global.totalTraceSize += TRACE_CodeCacheSize(trace);
    Global.totalStubSize += TRACE_StubSize(trace);
    if (KnobVerboseOutput)
    {
        ADDRINT orig_pc = TRACE_Address(trace);
        TraceFile << "Code cache insertion #" << dec << Global.insertions;
        TraceFile << "\torig pc=0x" << hex << orig_pc;
        TraceFile << "\tcache pc=0x" << hex << TRACE_CodeCacheAddress(trace);

        string name = RTN_FindNameByAddress(orig_pc);
        if (name == "")
            name = "*noname*";
        
        TraceFile << "\ttrace size (orig)=" << TRACE_Size(trace);
        TraceFile << "\ttrace size (cache)=" << TRACE_CodeCacheSize(trace);
        TraceFile << " (BBL=" << TRACE_NumBbl(trace) << " Ins=" << TRACE_NumIns(trace) << ")";
        TraceFile << "\t+stub size=" << TRACE_StubSize(trace);
        TraceFile << "\t+name=" << name << endl;
    }
}

/* ================================================================== */
/*
 Print details at the end of the run
*/
VOID PrintDetailsOnExit(INT32 code, VOID *v)
{
    TraceFile << dec << endl << "--------------------------------------------------" << endl;
    TraceFile << Global.insertions << " insertions into code cache" << endl;
    TraceFile << Global.totalTraces << " traces\tavg size=" << (Global.totalTraceSize / Global.totalTraces) << endl;
    TraceFile << Global.totalStubs << " exit stubs\tavg size=" << (Global.totalStubSize / Global.totalStubs) << endl;
    //TraceFile << Global.totalCompensations << " compensations\tavg size=" <<
    //    (Global.totalCompensationSize / Global.totalCompensations) << endl;
    TraceFile << Global.numJumpsIntoCodeCache << " control transfers into code cache" << endl;
    TraceFile << Global.numJumpsOutofCodeCache << " control transfers out of code cache" << endl;
    TraceFile << Global.numLinks << " links set in the code cache" << endl;
    TraceFile << Global.numUnlinks << " links removed from the code cache" << endl;
    TraceFile << "--------------------------------------------------" << endl;
    TraceFile << "Final cache size: ";
    int cacheSizeLimit = CODECACHE_CacheSizeLimit();
    if (cacheSizeLimit)
        TraceFile << BytesToString(cacheSizeLimit) << endl;
    else
        TraceFile << "UNLIMITED" << endl;
    TraceFile << BytesToString(CODECACHE_CodeMemUsed()) << " code space used" << endl;
    TraceFile << BytesToString(CODECACHE_CodeMemReserved()) << " code space reserved" << endl;
    TraceFile << BytesToString(CODECACHE_DirectoryMemUsed()) << " code cache directory data structures" << endl;
    TraceFile << BytesToString(Global.inaccessible) << " inaccessible" << endl;
    TraceFile << "Final block size: " << BytesToString(CODECACHE_BlockSize()) << endl;
    TraceFile << Global.cacheblocks << " cache blocks created" << endl;
    TraceFile << Global.flushes << " flushes!" << endl;
    TraceFile << Global.stretches << " stretches!" << endl;
    TraceFile << "#eof" << endl;
    TraceFile.close();
}

/* ================================================================== */
/*
  Print details of a cache allocation
*/
VOID CollectBlockInfo(UINT32 block_size )
{
    Global.cacheblocks++;

    UINT32 bytesused = CODECACHE_CodeMemUsed();
    UINT32 bytesreserved = CODECACHE_CodeMemReserved();
    Global.inaccessible = bytesreserved - bytesused - block_size; 

    if (KnobVerboseOutput)
    {
        TraceFile << "New Block: " << BytesToString(block_size) << "\t";
        TraceFile << "Total Cache Used: " << BytesToString(bytesused);
        TraceFile << " / " << BytesToString(bytesreserved) << "\t\t";
        TraceFile << "Wasted (Fragmentation): " << BytesToString(Global.inaccessible) << endl;
    }
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

    // Register a routine that gets called when we jump into 
    //  the code cache
    CODECACHE_AddCodeCacheEnteredFunction(WatchEnter, 0);

    // Register a routine that gets called when we jump out of  
    //  the code cache
    CODECACHE_AddCodeCacheExitedFunction(WatchExit, 0);

    // Register a routine that gets called when a trace is 
    //  inserted into the codecache
    CODECACHE_AddTraceInsertedFunction(WatchTraces, 0);

    // Register a routine that gets called when patch a link in
    //  the code cache
    CODECACHE_AddTraceLinkedFunction(WatchLinks, 0);

    // Register a routine that gets called when we unpatch a link in
    //  the code cache
    CODECACHE_AddTraceUnlinkedFunction(WatchUnlinks, 0);

    // Register a routine that gets called every time the cache is full
    CODECACHE_AddFullCacheFunction(FlushOnFull, 0);
    //CODECACHE_AddFullCacheFunction(GrowOnFull, 0);
    
    // Register a routine that gets called when the program ends
    PIN_AddFiniFunction(PrintDetailsOnExit, 0);
    
    PIN_StartProgram();  // Never returns
    
    return 0;
}

