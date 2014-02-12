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
//    pin -xyzzy -limit_code_cache 131072 -t cache_doubler -- /bin/ls

#include "pin.H"
#include "utils.H"
#include "portability.H"
#include <iostream>
#include <fstream>

using namespace std;

/* ================================================================== */
/* Global Variables                                                   */
/* ================================================================== */
int stretches, multiplier;
bool exponential;
ofstream TraceFile;

/* ================================================================== */
/* Command-Line Switches                                              */
/* ================================================================== */
KNOB<BOOL>  KnobHelp(KNOB_MODE_WRITEONCE, "pintool",
    "hh", "0", "Print help message (command-line switches)");
KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE, "pintool",
    "o", "cache_doubler.out", "specify trace file name");
KNOB<BOOL>   KnobPid(KNOB_MODE_WRITEONCE,                "pintool",
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
    
    stretches = 0;
    multiplier = 2;
    exponential = KnobExponentialGrowth.Value();
}

/* ================================================================== */
/*
 Print current flush count
*/
VOID PrintStretchInfo(INT32 code, VOID *v)
{
    TraceFile << endl << stretches << " stretches!" << endl;
    
    TraceFile << "Final cache size: " << BytesToString(CODECACHE_CacheSizeLimit()) << endl;
    TraceFile << "Final block size: " << BytesToString(CODECACHE_BlockSize()) << endl;
    TraceFile << "#eof" << endl;
    TraceFile.close();

    cout << "Cache Doubler Complete\n";
}

/* ================================================================== */
/*
  When notified by Pin that the cache is full, double the cache and
  tell the user about it.
*/
VOID GrowOnFull(UINT32 trace_size, UINT32 stub_size)
{
    stretches++;

    USIZE cacheSize = CODECACHE_CacheSizeLimit();
    USIZE blockSize = CODECACHE_BlockSize();

    cacheSize *= multiplier;
    if (stretches > 2) blockSize *= multiplier;

    CODECACHE_ChangeCacheLimit(cacheSize);
    CODECACHE_ChangeBlockSize(blockSize);
    ASSERTX(CODECACHE_CreateNewCacheBlock(blockSize));

    TraceFile << " STRETCH! (" << stretches;
    TraceFile << ")\tcache: " << BytesToString(cacheSize);
    TraceFile << "\tblock: " << BytesToString(blockSize) << endl;

    if (exponential) multiplier *= multiplier;
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
    
    // Register a routine that gets called every time the cache is full
    CODECACHE_AddFullCacheFunction(GrowOnFull, 0);
    
    // Register a routine that gets called when the program ends
    PIN_AddFiniFunction(PrintStretchInfo, 0);
    
    PIN_StartProgram();  // Never returns
    
    return 0;
}
