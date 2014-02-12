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
/*! @file
 * Insert a call before a function in probe mode.
 */

/* ===================================================================== */
#include "pin.H"
#include <iostream>
#include <stdlib.h>

using namespace std;

/* ===================================================================== */
/* Analysis routines  */
/* ===================================================================== */

VOID Before_Malloc0( size_t size )
{
    cout << "Before_Malloc0: Calling malloc() with size=" << size << endl << flush;
}

VOID Before_Malloc1( size_t size )
{
    cout << "Before_Malloc1: Calling malloc() with size=" << size << endl << flush;
}

VOID Before_Free0( void * ptr )
{
    cout << "Before_Free0: Calling free() with ptr=" << hex <<
        (ADDRINT)ptr << dec << endl << flush;
}

VOID Before_Free1( void * ptr )
{
    cout << "Before_Free1: Calling free() with ptr=" << hex <<
        (ADDRINT)ptr << dec << endl << flush;
}



/* ===================================================================== */
/* Instrumentation routines  */
/* ===================================================================== */

VOID Sanity(IMG img, RTN rtn)
{
    if ( PIN_IsProbeMode() && ! RTN_IsSafeForProbedInsertion( rtn ) )
    {
        cout << "Cannot insert calls around " << RTN_Name(rtn) <<
            "() in " << IMG_Name(img) << endl;
        exit(1);
    }
}

/* ===================================================================== */
VOID ImageLoad(IMG img, VOID *v)
{
    RTN rtn = RTN_FindByName(img, "malloc");
    if (RTN_Valid(rtn))
    {
        Sanity(img, rtn);
        
        cout << "Inserting 2 calls before malloc in " << IMG_Name(img) << endl;

        RTN_InsertCallProbed(
            rtn, IPOINT_BEFORE, AFUNPTR( Before_Malloc0 ),
            IARG_FUNCARG_ENTRYPOINT_VALUE, 0,
            IARG_END);

        RTN_InsertCallProbed(
            rtn, IPOINT_BEFORE, AFUNPTR( Before_Malloc1 ),
            IARG_FUNCARG_ENTRYPOINT_VALUE, 0,
            IARG_END);
    }

    rtn = RTN_FindByName(img, "free");
    if (RTN_Valid(rtn))
    {
        Sanity(img, rtn);
        
        cout << "Inserting 2 calls before free in " << IMG_Name(img) << endl;

        RTN_InsertCallProbed(
            rtn, IPOINT_BEFORE, AFUNPTR( Before_Free0 ),
            IARG_FUNCARG_ENTRYPOINT_VALUE, 0,
            IARG_END);

        RTN_InsertCallProbed(
            rtn, IPOINT_BEFORE, AFUNPTR( Before_Free1 ),
            IARG_FUNCARG_ENTRYPOINT_VALUE, 0,
            IARG_END);
    }
}


/* ===================================================================== */

int main(INT32 argc, CHAR *argv[])
{
    PIN_InitSymbols();
    
    PIN_Init(argc, argv);
    
    IMG_AddInstrumentFunction(ImageLoad, 0);
    
    PIN_StartProgramProbed();
    
    return 0;
}



/* ===================================================================== */
/* eof */
/* ===================================================================== */
