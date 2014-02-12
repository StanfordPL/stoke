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
// This tool is used by the memory_allocation_from_tool_access_protection.test.
// It checks the correctness of the APIs: PIN_CheckReadAccessProtection and PIN_CheckWriteAccessProtectionaccess
// when the mmap function is called by the tool.

#include "pin.H"
#include <iostream>
#include <fstream>
#include <errno.h>
#include <string.h>
#if defined(TARGET_WINDOWS)
namespace WINDOWS
{
#include <windows.h>
}
#else
#include <sys/mman.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#endif

/* ===================================================================== */
/* Global Variables */
/* ===================================================================== */

std::ofstream TraceFile;
BOOL AllocatedOnce;

/* ===================================================================== */
/* Commandline Switches */
/* ===================================================================== */

KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE, "pintool", "o", "tool_memory_access_protection_tool.out",
                            "specify trace file name");

/* ================================================================== */
// Utilities
/* ================================================================== */
#if defined(TARGET_WINDOWS)

size_t GetPageSize()
{
    WINDOWS::SYSTEM_INFO sysInfo;
    WINDOWS::GetSystemInfo(&sysInfo);
    return static_cast<size_t>(sysInfo.dwPageSize);
}


const char * MmapNoMemoryAccess()
{
    return reinterpret_cast<const char *> (WINDOWS::VirtualAlloc(0, GetPageSize(), MEM_COMMIT, PAGE_NOACCESS));
}

const char * MmapWithMemoryAccess()
{
    return reinterpret_cast<const char *> (WINDOWS::VirtualAlloc(0, GetPageSize(), MEM_COMMIT, PAGE_READWRITE));
}

#else

size_t GetPageSize()
{
    return static_cast<size_t>(getpagesize());
}

const char * MmapNoMemoryAccess()
{
#if defined(TARGET_MAC)
    return reinterpret_cast<const char *> (mmap(0, GetPageSize(), PROT_NONE , MAP_ANON | MAP_PRIVATE, -1, 0));
#else
   return reinterpret_cast<const char *> (mmap(0, GetPageSize(), PROT_NONE , MAP_ANONYMOUS | MAP_PRIVATE, 0, 0));
#endif
}

const char * MmapWithMemoryAccess()
{
#if defined(TARGET_MAC)
    return reinterpret_cast<const char *> (mmap(0, GetPageSize(),PROT_READ | PROT_WRITE, MAP_ANON | MAP_PRIVATE, -1, 0));
#else
   return reinterpret_cast<const char *> (mmap(0, GetPageSize(), PROT_READ | PROT_WRITE, MAP_ANONYMOUS | MAP_PRIVATE, 0, 0));
#endif
}
#endif

static VOID ToolMmap()
{
    if(!AllocatedOnce)
    {
        AllocatedOnce=true;
        const char * pageFrameStart = MmapNoMemoryAccess();
        bool ans= PIN_CheckReadAccess((void * )pageFrameStart);
        TraceFile << dec << ans;
        ans= PIN_CheckWriteAccess((void * )pageFrameStart);
        TraceFile << dec << ans;
        pageFrameStart = MmapWithMemoryAccess(); 
        ans= PIN_CheckReadAccess((void * )pageFrameStart);
        TraceFile << dec << ans;
        ans= PIN_CheckWriteAccess((void * )pageFrameStart);
        TraceFile << dec << ans;
        TraceFile << endl;
    }
}

static VOID InstrumentTrace(TRACE t, VOID *v)
{
    TRACE_InsertCall(t, IPOINT_BEFORE, (AFUNPTR)ToolMmap,
                     IARG_END);
}

int main(int argc, char *argv[])
{
    PIN_InitSymbols();
    PIN_Init(argc, argv);

    TraceFile.open(KnobOutputFile.Value().c_str());
    TraceFile << hex;
    TraceFile.setf(ios::showbase);

    AllocatedOnce=false;

    // Register Image to be called to instrument functions.
    TRACE_AddInstrumentFunction(InstrumentTrace, 0);

    // Never returns
    PIN_StartProgram();

    return 0;
}

/* ===================================================================== */
/* eof */
/* ===================================================================== */


