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
  Replaces pthread_spin_lock(). Linux only, of course.
 */
#include <stdlib.h>
#include "pin.H"
#include <iostream>
#include <fstream>

using namespace std;

/* ===================================================================== */
/* Global Variables */
/* ===================================================================== */

typedef int (*FUNCPTR)(pthread_spinlock_t *);


/* ===================================================================== */

INT32 Usage()
{
    cerr <<
        "This pin tool replaces pthread_spin_lock()\n"
        "\n";
    cerr << KNOB_BASE::StringKnobSummary();
    cerr << endl;
    return -1;
}


/* ===================================================================== */

int SpinLock( FUNCPTR orgFuncptr, void * lock)
{
    pthread_spinlock_t * spinlock = reinterpret_cast<pthread_spinlock_t *>(lock);
    
    cout << "SpinLock: calling pthread_spin_lock() at address " << hex << (ADDRINT)orgFuncptr << dec << endl;

    int locked = orgFuncptr(spinlock);

    cout << "Spinlock: returned from pthread_spin_lock()." << endl;

    return locked;
}

/* ===================================================================== */

// Called every time a new image is loaded.
// Look for routines that we want to replace.
VOID ImageLoad(IMG img, VOID *v)
{
    RTN rtn = RTN_FindByName(img, "pthread_spin_lock");

    if ( RTN_Valid(rtn) )
    {
        if (RTN_IsSafeForProbedReplacementEx(rtn, PROBE_MODE_ALLOW_RELOCATION) )
        {
            PROTO proto = PROTO_Allocate( PIN_PARG(int), CALLINGSTD_DEFAULT,
                                        "pthread_spin_lock", PIN_PARG(void *),
                                        PIN_PARG_END() );
            
#if defined ( TARGET_IA32 ) || defined ( TARGET_IA32E )
        
            RTN_ReplaceSignatureProbedEx(
                rtn, PROBE_MODE_ALLOW_RELOCATION,
                AFUNPTR( SpinLock ),
                IARG_PROTOTYPE, proto,
                IARG_ORIG_FUNCPTR,
                IARG_FUNCARG_ENTRYPOINT_VALUE, 0,
                IARG_END);
#else

            RTN_ReplaceSignatureProbedEx(
                rtn, PROBE_MODE_ALLOW_RELOCATION,
                AFUNPTR( SpinLock ),
                IARG_PROTOTYPE, proto,
                IARG_ORIG_FUNCPTR,
                IARG_FUNCARG_ENTRYPOINT_VALUE, 0,
                IARG_REG_VALUE, REG_TP,
                IARG_END);
#endif
            cout << "ImageLoad: Replaced pthread_spin_lock() in:"  << IMG_Name(img) << endl;
        }
        else
        {
            cout << "ImageLoad: Can't replace pthread_spin_lock() in:"  << IMG_Name(img) << endl;
            exit(-1);
        }
    }
}


/* ===================================================================== */

int main(int argc, CHAR *argv[])
{
    PIN_InitSymbols();

    if( PIN_Init(argc,argv) )
        return Usage();

    IMG_AddInstrumentFunction(ImageLoad, 0);
    
    PIN_StartProgramProbed();
    
    return 0;
}


/* ===================================================================== */
/* eof */
/* ===================================================================== */
