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

/* ===================================================================== */
/*! @file
  Generates a trace of malloc/free calls
 */

#include "pin.H"
#include <iostream>
#include <fstream>

using namespace std;

/* ===================================================================== */
/* Global Variables */
/* ===================================================================== */
typedef VOID * (*FUNCPTR_MALLOC)(size_t);
typedef VOID (*FUNCPTR_FREE)(void *);
typedef VOID (*FUNCPTR_EXIT)(int);

VOID * Probe_Malloc_IA32( FUNCPTR_MALLOC orgFuncptr, size_t arg0 );
VOID   Probe_Free_IA32( FUNCPTR_FREE orgFuncptr, void * arg0 );
VOID   Probe_Exit_IA32( FUNCPTR_EXIT orgFuncptr, int code );

ofstream TraceFile;

/* ===================================================================== */
/* Commandline Switches */
/* ===================================================================== */

KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE, "pintool",
    "o", "probemalloctrace.outfile", "specify trace file name");

/* ===================================================================== */

INT32 Usage()
{
    cerr <<
        "This pin tool collects an instruction trace for debugging\n"
        "\n";
    cerr << KNOB_BASE::StringKnobSummary();
    cerr << endl;
    return -1;
}


/* ===================================================================== */
// Called every time a new image is loaded.
// Look for routines that we want to replace.
VOID ImageLoad(IMG img, VOID *v)
{
    RTN mallocRtn = RTN_FindByName(img, "malloc");

    if ( RTN_Valid(mallocRtn) && RTN_IsSafeForProbedReplacement(mallocRtn) )
    {
        PROTO proto_malloc = PROTO_Allocate( PIN_PARG(void *), CALLINGSTD_DEFAULT,
                                             "malloc", PIN_PARG(size_t), PIN_PARG_END() );
        
        RTN_ReplaceSignatureProbed(
            mallocRtn, AFUNPTR( Probe_Malloc_IA32 ),
            IARG_PROTOTYPE, proto_malloc,
            IARG_ORIG_FUNCPTR,
            IARG_FUNCARG_ENTRYPOINT_VALUE, 0,
            IARG_END);
        TraceFile << "Replaced malloc() in:"  << IMG_Name(img) << endl;
    }
 
    RTN freeRtn = RTN_FindByName(img, "free");

    if ( RTN_Valid(freeRtn)  && RTN_IsSafeForProbedReplacement(freeRtn) )
    {
        PROTO proto_free = PROTO_Allocate( PIN_PARG(void), CALLINGSTD_DEFAULT,
                                           "free", PIN_PARG(void *), PIN_PARG_END() );
        
        RTN_ReplaceSignatureProbed(
            freeRtn, AFUNPTR( Probe_Free_IA32 ),
            IARG_PROTOTYPE, proto_free,
            IARG_ORIG_FUNCPTR,
            IARG_FUNCARG_ENTRYPOINT_VALUE, 0,
            IARG_END);
        TraceFile << "Replaced free() in:"  << IMG_Name(img) << endl;
    }


    RTN exitRtn = RTN_FindByName(img, "exit");

    if (RTN_Valid(exitRtn) && RTN_IsSafeForProbedReplacement(exitRtn) )
    {
        PROTO proto_exit = PROTO_Allocate( PIN_PARG(void), CALLINGSTD_DEFAULT,
                                           "exit", PIN_PARG(int), PIN_PARG_END() );

        RTN_ReplaceSignatureProbed(
            exitRtn, AFUNPTR( Probe_Exit_IA32 ),
            IARG_PROTOTYPE, proto_exit,
            IARG_ORIG_FUNCPTR,
            IARG_FUNCARG_ENTRYPOINT_VALUE, 0,
            IARG_END);
        TraceFile << "Replaced exit() in:"  << IMG_Name(img) << endl;
    }
}

/* ===================================================================== */

int main(int argc, CHAR *argv[])
{
    PIN_InitSymbols();

    if( PIN_Init(argc,argv) )
    {
        return Usage();
    }

    TraceFile.open(KnobOutputFile.Value().c_str());
    TraceFile << hex;
    TraceFile.setf(ios::showbase);
    TraceFile << "Probe mode" << endl;
    
    
    IMG_AddInstrumentFunction(ImageLoad, 0);
    
    
    PIN_StartProgramProbed();
    
    return 0;
}


/* ===================================================================== */

VOID * Probe_Malloc_IA32( FUNCPTR_MALLOC orgFuncptr, size_t size)
{
    VOID * v = orgFuncptr(size);

    TraceFile << "malloc(" << size << ") returns " << v << endl;

    return v;
}

/* ===================================================================== */

VOID Probe_Free_IA32( FUNCPTR_FREE orgFuncptr, void * ptr)
{
    orgFuncptr(ptr);

    TraceFile << "free(" << ptr << ")" << endl;
}

/* ===================================================================== */

VOID Probe_Exit_IA32( FUNCPTR_EXIT orgFuncptr, int code)
{
    if (TraceFile.is_open())
    {
        TraceFile << "## eof" << endl << flush;
        TraceFile.close();
    }
    
    orgFuncptr(code);
}




/* ===================================================================== */
/* eof */
/* ===================================================================== */
