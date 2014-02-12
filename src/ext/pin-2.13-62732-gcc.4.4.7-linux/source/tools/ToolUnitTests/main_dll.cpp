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
/*! @file
 *  pin tool combined from multi-DLLs (main_dll, dynamic_secondary_dll, static_secondary_dll). 
 *  This is the "main DLL", use PIN API only in this DLL
 *  usage of PIN API in dynamic_secondary_dll and static_secondary_dll is not allowed
 *  (see README for more inforamtion)
 */

#include <iostream>
#include <fstream>
#include "pin.H"
namespace WINDOWS
{
#include <windows.h>
}

using namespace std;

/* ===================================================================== */
/* Global Variables and Declerations */
/* ===================================================================== */

PIN_LOCK lock;

typedef VOID (* BEFORE_BBL)(ADDRINT ip);

// Functions pointers for dynamic_secondary_dll
BEFORE_BBL pBeforeBBL2;
WINDOWS::FARPROC pInit2;
WINDOWS::FARPROC pFini2;

// Dll imports for static_secondary_dll
extern "C" __declspec( dllimport ) VOID BeforeBBL1(ADDRINT ip);
extern "C" __declspec( dllimport ) VOID Init1();
extern "C" __declspec( dllimport ) VOID Fini1();

/* ===================================================================== */

// This function is called before every basic block
VOID PIN_FAST_ANALYSIS_CALL BeforeBBL(ADDRINT ip) 
{
    PIN_GetLock(&lock, PIN_GetTid());
    BeforeBBL1(ip);
    pBeforeBBL2(ip);
    PIN_ReleaseLock(&lock);
}

/* ===================================================================== */

// Pin calls this function every time a new trace is encountered
VOID Trace(TRACE trace, VOID *v)
{
    // Visit every basic block  in the trace
    for (BBL bbl = TRACE_BblHead(trace); BBL_Valid(bbl); bbl = BBL_Next(bbl))
    {
        // Insert a call to BeforeBBL before every bbl, passing the ip address.
        BBL_InsertCall(bbl, IPOINT_BEFORE, (AFUNPTR)BeforeBBL, IARG_FAST_ANALYSIS_CALL, 
                       IARG_INST_PTR, IARG_END);
    }
}

VOID ThreadStart(THREADID threadid, CONTEXT *ctxt, INT32 flags, VOID *v)
{
    PIN_GetLock(&lock, PIN_GetTid());
    BeforeBBL1(0);
    pBeforeBBL2(0);
    PIN_ReleaseLock(&lock);
}

VOID ThreadFini(THREADID threadid, const CONTEXT *ctxt, INT32 code, VOID *v)
{
    PIN_GetLock(&lock, PIN_GetTid());
    BeforeBBL1(0);
    pBeforeBBL2(0);
    PIN_ReleaseLock(&lock);
}

/* ===================================================================== */

// This function is called when the application exits
VOID Fini(INT32 code, VOID *v)
{
    Fini1();
    pFini2();
}

/* ===================================================================== */

int main(int argc, char * argv[])
{
    PIN_InitLock(&lock);

    // Initialize pin
    PIN_Init(argc, argv);

    // Register Trace() to be called to instrument traces
    TRACE_AddInstrumentFunction(Trace, 0);

    // Register Fini() to be called when the application exits
    PIN_AddFiniFunction(Fini, 0);

    // Call Static secondary dll Init1()
    Init1();

    // Dynamic secondary dll - load library, initialize function pointers
    // and call Init2()
    WINDOWS::HMODULE module = WINDOWS::LoadLibrary("dynamic_secondary_dll.dll");
    if(module == NULL)
    {
        cerr << "Failed to load dynamic_secondary_dll.dll" << endl;
        exit(1);
    }
    pInit2 = WINDOWS::GetProcAddress(module, "Init2");
    pBeforeBBL2 = reinterpret_cast<BEFORE_BBL>(WINDOWS::GetProcAddress(module, "BeforeBBL2"));
    pFini2 = WINDOWS::GetProcAddress(module, "Fini2");
    if(pInit2 == NULL || pBeforeBBL2 == NULL || pFini2 == NULL)
    {
        cerr << "Failed to find proc addresses in dynamic_secondary_dll.dll" << endl;
        exit(1);
    }
    pInit2(); 
    
    // Start the program, never returns
    PIN_StartProgram();
    
    return 0;
}

