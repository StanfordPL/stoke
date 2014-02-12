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
 * Insert a call after a function in probe mode.
 */

/* ===================================================================== */
#include "pin.H"
#include <cstdlib>
#include <iostream>

using namespace std;

/* ===================================================================== */
/* Analysis routines  */
/* ===================================================================== */

VOID After_Malloc( ADDRINT retval )
{
    cout << "After_Malloc: my_malloc() return value = " << hex << retval
         << dec << endl << flush;
}

VOID After_Free()
{
    cout << "After_Free: returning from my_free()." << endl << flush;
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
    RTN rtn = RTN_FindByName(img, "my_malloc");
    if (RTN_Valid(rtn))
    {
        Sanity(img, rtn);
        
        cout << "Inserting calls after my_malloc in " << IMG_Name(img) << endl;

        PROTO proto_malloc = PROTO_Allocate( PIN_PARG(void *), CALLINGSTD_DEFAULT,
                                             "my_malloc", PIN_PARG(size_t), PIN_PARG_END() );
        
        RTN_InsertCallProbed(
            rtn, IPOINT_AFTER, AFUNPTR( After_Malloc ),
            IARG_PROTOTYPE, proto_malloc,
            IARG_REG_VALUE, REG_GAX,
            IARG_END);

        PROTO_Free( proto_malloc );
    }

    rtn = RTN_FindByName(img, "my_free");
    if (RTN_Valid(rtn))
    {
        Sanity(img, rtn);
        
        cout << "Inserting calls after my_free in " << IMG_Name(img) << endl;

        PROTO proto_free = PROTO_Allocate( PIN_PARG(void), CALLINGSTD_DEFAULT,
                                             "my_free", PIN_PARG(void *), PIN_PARG_END() );
        
        RTN_InsertCallProbed(
            rtn, IPOINT_AFTER, AFUNPTR( After_Free ),
            IARG_PROTOTYPE, proto_free,
            IARG_END);

        PROTO_Free( proto_free );
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
