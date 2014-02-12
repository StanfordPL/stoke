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
  @ORIGINAL_AUTHOR: Nadav Chachmon
*/

/* ===================================================================== */
/*! @file
 * Replace main's executable entry point and DLL entry point
 */

#include "pin.H"
#include <iostream>
#include <fstream>
namespace WIND
{
#include <windows.h>
}

using namespace std;

/* ===================================================================== */
/* Commandline Switches */
/* ===================================================================== */

KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE, "pintool",
    "out_file", "image_entry.out", "specify image entry file name");

KNOB<BOOL> KnobVerbose(KNOB_MODE_WRITEONCE, "pintool",
    "verbose", "0", "verbosity level - 0 / 1");
/* ===================================================================== */

INT32 Usage()
{
    cerr << "This pin tool replaces main's executable entry point \
             and DLL entry point." << endl;
    cerr << KNOB_BASE::StringKnobSummary();
    cerr << endl;
    cerr.flush();
    return -1;
}

/* ===================================================================== */
/* Global definitions*/
/* ===================================================================== */

//Signature of main executable entry point
typedef int (* EXE_ENTRY_POINT)();

//Signature of dll entry point
typedef WIND::BOOLEAN  (WINAPI * DLL_ENTRY_POINT)(WIND::HINSTANCE hDllHandle, 
                                                  WIND::DWORD     nReason,    
                                                  WIND::LPVOID    Reserved );

/* ===================================================================== */
/* Global Variables */
/* ===================================================================== */
//output file
ofstream traceFile;
//lock
PIN_LOCK lock;
//counter of number of exe entry point entrances
UINT32 exeEntryCounter = 0;
//counter of number of DLL entry point entrances, reason = THREAD_ATTACH
UINT32 dllEntryCounterThreadAttach = 0;
//counter of number of DLL entry point entrances, reason = THREAD_DETACH
UINT32 dllEntryCounterThreadDetach = 0;
//this variable is set to 1 when the application start callback is called
static volatile int isAppStarted = 0;

/* ===================================================================== */
/* Main executable entry point (before - JIT / replacement - PROBE) */
/* ===================================================================== */
//Used in JIT mode
void BeforeExeEntry()
{
    PIN_GetLock(&lock, PIN_GetTid());
    exeEntryCounter++;
    if(KnobVerbose)
    {
        traceFile << "In exe entry point, threadid = " << PIN_GetTid() << endl;
    }
    PIN_ReleaseLock(&lock);
}

//Used in PROBE mode
int MyExeEntry(
    CONTEXT * context,
    EXE_ENTRY_POINT orig_exeEntry )
{
    PIN_GetLock(&lock, PIN_GetTid());
    exeEntryCounter++;
    if(KnobVerbose)
    {
        traceFile << "In exe entry point, threadid = " << PIN_GetTid() << endl;
    }
    PIN_ReleaseLock(&lock);

    return orig_exeEntry();  
}

/* ===================================================================== */
/* DLL entry point replacement */
/* ===================================================================== */
WIND::BOOLEAN WINAPI MyDllEntry(
    CONTEXT * context,
    DLL_ENTRY_POINT orig_dllEntry,
    WIND::HINSTANCE hDllHandle, 
    WIND::DWORD     nReason,    
    WIND::LPVOID    Reserved )
{
    PIN_GetLock(&lock, PIN_GetTid());
    if(nReason == DLL_THREAD_ATTACH)
    {
        dllEntryCounterThreadAttach++;
    } 
    else if(nReason == DLL_THREAD_DETACH)
    {
        dllEntryCounterThreadDetach++;
    } 
    if(KnobVerbose)
    {
        traceFile << "In DLL entry point,  threadid = " << PIN_GetTid() << 
                     ", dll handle = " << hDllHandle << ", reason  = " << nReason << endl;
    }
    PIN_ReleaseLock(&lock);

    WIND::BOOLEAN ret;
    if (PIN_IsProbeMode())
    {
        ret = orig_dllEntry(hDllHandle, nReason, Reserved);
    } else 
    {
        //FIXME : Use PIN_CallApplicationFunction when it possible
        //        (Fix for mantis 1122/1123)
#if 1
        ret = orig_dllEntry(hDllHandle, nReason, Reserved);  
#else
        PIN_CallApplicationFunction( context, PIN_ThreadId(),
                                 CALLINGSTD_STDCALL, AFUNPTR(orig_dllEntry),
                                 PIN_PARG(WIND::BOOLEAN),   &ret,
                                 PIN_PARG(WIND::HINSTANCE), hDllHandle, 
                                 PIN_PARG(WIND::DWORD) ,    nReason,    
                                 PIN_PARG(WIND::LPVOID),    Reserved,
                                 PIN_PARG_END() );
#endif
    }
    ASSERTX(ret);
    return ret;
}

/* ===================================================================== */
/* Replace (PROBE) / Before (JIT) exe entry point (in exe image load event) */
/* ===================================================================== */
VOID ReplaceExeEntryPoint(IMG img)
{
    if(!IMG_IsMainExecutable(img))
    {
        return;
    }

    // This is main executable, find it's entry point and replace it
    RTN rtn = RTN_FindByAddress(IMG_Entry(img));
    ASSERTX(RTN_Valid(rtn));
    if(KnobVerbose)
    {
        traceFile << "Replacing Exe entry point, Address = " << RTN_Address(rtn)\
                  << ", Name = \"" << RTN_Name(rtn).c_str() << "\", Size = " << RTN_Size(rtn) << endl;
    }

    if (PIN_IsProbeMode())
    {
        PROTO proto_exeEntry = PROTO_Allocate( 
                                           PIN_PARG(int), 
                                           CALLINGSTD_DEFAULT,
                                           "", 
                                           PIN_PARG_END() );
        ASSERTX(RTN_IsSafeForProbedReplacement(rtn));
        RTN_ReplaceSignatureProbed(
                              rtn, AFUNPTR(MyExeEntry),
                              IARG_PROTOTYPE, proto_exeEntry,
                              IARG_CONTEXT,
                              IARG_ORIG_FUNCPTR,
                              IARG_END);
        PROTO_Free(proto_exeEntry);
    } else
    {
        RTN_Open(rtn);
        RTN_InsertCall(rtn, IPOINT_BEFORE, AFUNPTR(BeforeExeEntry), IARG_END);
        RTN_Close(rtn);
    }
}

/* ===================================================================== */
/* Replace DLL entry point */
/* ===================================================================== */
VOID ReplaceDllEntryPoint(IMG img, const CHAR * dllName, AFUNPTR replacementFunction)
{
    string imagePath = IMG_Name(img);
    string::size_type index = imagePath.find(dllName);
    if(index == string::npos)
    {
        return;
    }

    // This is the dll we are looking for, find it's entry point and replace it
    RTN rtn = RTN_FindByAddress(IMG_Entry(img));
    ASSERTX(RTN_Valid(rtn));
    if(KnobVerbose)
    {
        traceFile << "Replacing " << dllName << " entry point, Address = " << RTN_Address(rtn)\
                  << ", Name = \"" << RTN_Name(rtn).c_str() << "\", Size = " << RTN_Size(rtn) << endl;
    }
    PROTO proto_dllEntry = PROTO_Allocate( 
                               PIN_PARG(WIND::BOOLEAN), 
                               CALLINGSTD_STDCALL,
                               "",
                               PIN_PARG(WIND::HINSTANCE),
                               PIN_PARG(WIND::DWORD),
                               PIN_PARG(WIND::LPVOID),
                               PIN_PARG_END() );
    if (PIN_IsProbeMode())
    {
        ASSERTX(RTN_IsSafeForProbedReplacement(rtn));
        RTN_ReplaceSignatureProbed(rtn, replacementFunction,
                                   IARG_PROTOTYPE, proto_dllEntry,
                                   IARG_CONTEXT,
                                   IARG_ORIG_FUNCPTR,
                                   IARG_FUNCARG_ENTRYPOINT_VALUE, 0,
                                   IARG_FUNCARG_ENTRYPOINT_VALUE, 1,
                                   IARG_FUNCARG_ENTRYPOINT_VALUE, 2,
                                   IARG_END);
    } else 
    {
        RTN_ReplaceSignature(rtn, replacementFunction,
                                   IARG_PROTOTYPE, proto_dllEntry,
                                   IARG_CONTEXT,
                                   IARG_ORIG_FUNCPTR,
                                   IARG_FUNCARG_ENTRYPOINT_VALUE, 0,
                                   IARG_FUNCARG_ENTRYPOINT_VALUE, 1,
                                   IARG_FUNCARG_ENTRYPOINT_VALUE, 2,
                                   IARG_END);
    }
    PROTO_Free(proto_dllEntry);
}

/* ===================================================================== */
// Called every time a new image is loaded     
// Look for routines that we want to replace
/* ===================================================================== */
VOID ImageLoad(IMG img, VOID *v)
{
    ReplaceExeEntryPoint(img);
    ReplaceDllEntryPoint(img, "win_tls_dll.dll", AFUNPTR(MyDllEntry));
}

/* ===================================================================== */
// Fini code
/* ===================================================================== */
VOID CoreFini()
{
    traceFile << "exeEntryCounter = " << exeEntryCounter << endl;
    traceFile << "dllEntryCounterThreadAttach = " << dllEntryCounterThreadAttach << endl;
    traceFile << "dllEntryCounterThreadDetach = " << dllEntryCounterThreadDetach << endl;
    traceFile.close();
}

class PROBE_FINI_OBJECT
{
  public:
    ~PROBE_FINI_OBJECT()
    {
        if(isAppStarted == 0) {traceFile << "AppStart() was not called" << endl;}
        CoreFini();
    }
};

VOID Fini(INT32 code, VOID *v)
{
    CoreFini();
}

VOID AppStart(VOID *v)
{
    isAppStarted = 1;
}

/* ===================================================================== */
// main function. Initialize and start probe/jit
/* ===================================================================== */
int main(int argc, CHAR *argv[])
{
    PIN_InitSymbols();
    
    if( PIN_Init(argc,argv) )
    {
        return Usage();
    }

    traceFile.open(KnobOutputFile.Value().c_str());
    traceFile << hex;
    traceFile.setf(ios::showbase);

    PIN_InitLock(&lock);
    
    IMG_AddInstrumentFunction(ImageLoad, 0);
    
    if (PIN_IsProbeMode()) 
    {
        PIN_AddApplicationStartFunction(AppStart, 0);
        static PROBE_FINI_OBJECT finiObject;
        PIN_StartProgramProbed();
    } else 
    {
        PIN_AddFiniFunction(Fini, 0);
        PIN_StartProgram();
    }
    
    return 0;
}

/* ===================================================================== */
/* eof */
/* ===================================================================== */
