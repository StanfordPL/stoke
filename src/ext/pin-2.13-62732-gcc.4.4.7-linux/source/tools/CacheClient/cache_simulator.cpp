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
//    pin -t cache_simulator -- /bin/ls

#include "pin.H"
#include "utils.H"
#include "portability.H"
#include <iostream>
#include <fstream>

using namespace std;

/* ================================================================== */
/* Global Variables                                                   */
/* ================================================================== */
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
ofstream TraceFile;

/* ================================================================== */
/* Command-Line Switches                                              */
/* ================================================================== */
KNOB<BOOL>  KnobHelp(KNOB_MODE_WRITEONCE, "pintool",
    "hh", "0", "Print help message (command-line switches)");
KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE, "pintool",
    "o", "cache_simulator.out", "specify trace file name");
KNOB<BOOL>  KnobPid(KNOB_MODE_WRITEONCE, "pintool",
    "p", "0", "append pid to output");
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

    flushes = 0;
    numJumpsIntoCodeCache = 0;
    numJumpsOutofCodeCache = 0;
    numLinks = 0;
    numUnlinks = 0;
    insertions = 0;
    cacheblocks = 0;
    stretches = 0;
    multiplier = 2;
    exponential = KnobExponentialGrowth.Value();
    totalTraces = 0;
    totalStubs = 0;
    totalCompensations = 0;
    totalTraceSize = 0;
    totalStubSize = 0;
    totalCompensationSize = 0;
}

/* ================================================================== */
/*
  When notified by Pin that the cache is full, perform a flush and
  tell the user about it.
*/
VOID GrowOnFull(UINT32 trace_size, UINT32 stub_size)
{
    stretches++;

    USIZE cacheSize = CODECACHE_CacheSizeLimit();
    USIZE blockSize = CODECACHE_BlockSize();

    cacheSize *= multiplier;
    if (stretches > 1) blockSize *= multiplier;

    CODECACHE_ChangeCacheLimit(cacheSize);
    CODECACHE_ChangeBlockSize(blockSize);
    ASSERTX(CODECACHE_CreateNewCacheBlock(blockSize));

    cout << " STRETCH! (" << dec << stretches;
    cout << ")\tcache: " << BytesToString(cacheSize);
    cout << "\tblock: " << BytesToString(blockSize) << endl;

    if (exponential) multiplier *= multiplier;
}

/* ================================================================== */
/*
  When notified by Pin that the cache is full, perform a flush and
  tell the user about it.
*/
VOID FlushOnFull(UINT32 trace_size, UINT32 stub_size)
{
    flushes++;
    CODECACHE_FlushCache();
    cout << " SWOOSH! (" << dec << flushes << ")" << endl;
}

/* ================================================================== */
/*
 Print details of jumps into code cache
*/
VOID WatchEnter(ADDRINT cache_pc)
{
    numJumpsIntoCodeCache++;
    TraceFile << "Jump into code cache #" << dec << numJumpsIntoCodeCache;
    TraceFile << "\tcache pc=0x" << hex << cache_pc << endl;
}
/* ================================================================== */
/*
 Print details of jumps out of code cache
*/
VOID WatchExit(ADDRINT cache_pc)
{
    numJumpsOutofCodeCache++;
    TraceFile << "Jump out of code cache #" << dec << numJumpsOutofCodeCache;
    TraceFile << "\tcache pc=0x" << hex << cache_pc << endl;
}

/* ================================================================== */
/*
 Print details of links as they are patched
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
 Print details of traces as they are inserted
*/
VOID WatchTraces(TRACE trace, VOID *v)
{
    insertions++;
    TraceFile << "Code cache insertion #" << dec << insertions;
    TraceFile << "\torig pc=0x" << hex << TRACE_Address(trace);
    TraceFile << "\tcache pc=0x" << hex << TRACE_CodeCacheAddress(trace);

    totalTraces++;
    totalStubs+=TRACE_NumBbl(trace);
    totalTraceSize += TRACE_CodeCacheSize(trace);

    string name = RTN_FindNameByAddress(TRACE_Address(trace));
    if (name == "")
        name = "*noname*";
        
    TraceFile << "\tcache trace size=" << dec << TRACE_CodeCacheSize(trace);
    TraceFile << " (BBL=" << dec << TRACE_NumBbl(trace) << " Ins=" << TRACE_NumIns(trace) << ")";
    TraceFile << "\t+name=" << name << endl;
}

/* ================================================================== */
/*
 Print details at the end of the run
*/
VOID PrintDetailsOnExit(INT32 code, VOID *v)
{
    TraceFile << endl << "--------------------------------------------------" << endl;
    TraceFile << dec << insertions << " insertions into code cache" << endl;
    TraceFile << totalTraces << " traces\tavg size=" << (totalTraceSize / totalTraces) << endl;
    TraceFile << dec << numJumpsIntoCodeCache << " control transfers into code cache" << endl;
    TraceFile << numJumpsOutofCodeCache << " control transfers out of code cache" << endl;
    TraceFile << numLinks << " links set in the code cache" << endl;
    TraceFile << numUnlinks << " links removed from the code cache" << endl;
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
    TraceFile << "Final block size: " << BytesToString(CODECACHE_BlockSize()) << endl;
    TraceFile << cacheblocks << " cache blocks created" << endl;
    TraceFile << flushes << " flushes!" << endl;
    TraceFile << stretches << " stretches!" << endl;
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

    UINT32 bytesused = CODECACHE_CodeMemUsed();
    UINT32 bytesreserved = CODECACHE_CodeMemReserved();
    inaccessible = bytesreserved - bytesused - block_size; 

    TraceFile << "New Block: " << BytesToString(block_size) << "\t";
    TraceFile << "Total Cache Used: " << BytesToString(bytesused) << " / " << BytesToString(bytesreserved) << "\t\t";
    TraceFile << "Wasted (Fragmentation): " << BytesToString(inaccessible) << endl;
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

