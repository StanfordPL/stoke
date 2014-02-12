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
//    pin -xyzzy -limit_code_cache 131072 -cache_policy custom -t cache_flusher -- /bin/ls

#include "pin.H"
#include "portability.H"
#include "utils.H"
#include <iostream>
#include <fstream>

using namespace std;

/* ================================================================== */
/* Global Data Structures                                             */
/* ================================================================== */

/* ================================================================== */
int flushes, acks;
ofstream SwooshFile;

/* ================================================================== */
/* Command-Line Switches                                              */
/* ================================================================== */
KNOB<BOOL>  KnobHelp(KNOB_MODE_WRITEONCE, "pintool",
    "hh", "0", "Print help message (command-line switches)");
KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE, "pintool",
    "o", "cache_flusher.out", "specify trace file name");
KNOB<BOOL>   KnobPid(KNOB_MODE_WRITEONCE,                "pintool",
    "p", "0", "append pid to output");

/* ================================================================== */
/*
 Clear the cache flush count
*/
VOID InitFlushCount()
{
    string logFileName = KnobOutputFile.Value();
    if( KnobPid )
        logFileName += "." + decstr( getpid_portable() );
    SwooshFile.open(logFileName.c_str());
    flushes = 0;
    acks = 0;
}

/* ================================================================== */
/*
 Print current flush count
*/
VOID PrintFlushInfo(INT32 code, VOID *v)
{
    cout << endl << flushes << " flushes!" << endl;
    cout << endl << acks << " acks!" << endl;
    SwooshFile << "#eof" << endl;
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
    SwooshFile << " SWOOSH! (" << flushes << ")" << endl;
}
VOID FlushAck()
{
    SwooshFile << " Flush (" << flushes << ") Complete!" << endl;
    acks++;
}


/* ================================================================== */
/*
 Initialize and begin program execution under the control of Pin
*/
int main(INT32 argc, CHAR **argv)
{
    if (PIN_Init(argc, argv) || KnobHelp) return Usage();

    // Initialize some local data structures
    InitFlushCount();
    
    // Register a routine that gets called when the cache is first initialized
    CODECACHE_AddCacheInitFunction(PrintInitInfo, 0);
    
    // Register a routine that gets called every time the cache is full
    CODECACHE_AddFullCacheFunction(FlushOnFull, 0);
    
    // Register a routine that gets called every time the cache is flushed
    CODECACHE_AddCacheFlushedFunction(FlushAck, 0);
    
    // Register a routine that gets called when the program ends
    PIN_AddFiniFunction(PrintFlushInfo, 0);
    
    PIN_StartProgram();  // Never returns
    
    return 0;
}
