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
 * Insert a call before/after a function in probe mode.
 */

/* ===================================================================== */
#include "pin.H"
#if defined (TARGET_WINDOWS)
namespace WINDOWS
{
#include<Windows.h>
}
#endif
#include <cstdlib>
#include <iostream>

using namespace std;

/* ===================================================================== */
/* Analysis routines  */
/* ===================================================================== */

VOID Before( ADDRINT ebx, ADDRINT ebp, ADDRINT esp )
{
    cout << "Before:   ebx/r15 = " << hex << ebx 
         << "  ebp/rbp = " << ebp 
         << "  esp/rsp = " << esp << dec << endl;
}

VOID After( REG reg )
{
    cout << "After: return value = " << reg << endl << flush;
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
    RTN rtn = RTN_FindByName(img, "Bar9");
    if (RTN_Valid(rtn))
    {
        Sanity(img, rtn);
        
        PROTO proto = PROTO_Allocate( PIN_PARG(int), CALLINGSTD_DEFAULT,
                                      "Bar9", PIN_PARG(int), PIN_PARG(int),
                                      PIN_PARG(int), PIN_PARG(int),
                                      PIN_PARG(int), PIN_PARG(int),
                                      PIN_PARG(int), PIN_PARG(int),
                                      PIN_PARG(int), 
                                      PIN_PARG_END() );
#if defined (TARGET_IA32)        
        RTN_InsertCallProbed(
            rtn, IPOINT_BEFORE, AFUNPTR( Before ),
            IARG_PROTOTYPE, proto,
            IARG_REG_VALUE, REG_EBX,
            IARG_REG_VALUE, REG_EBP,
            IARG_REG_VALUE, REG_ESP,
            IARG_END);
#else
        RTN_InsertCallProbed(
            rtn, IPOINT_BEFORE, AFUNPTR( Before ),
            IARG_PROTOTYPE, proto,
            IARG_REG_VALUE, REG_R15,
            IARG_REG_VALUE, REG_RBP,
            IARG_REG_VALUE, REG_RSP,
            IARG_END);
#endif        
        RTN_InsertCallProbed(
            rtn, IPOINT_AFTER, AFUNPTR( After ),
            IARG_PROTOTYPE, proto,
            IARG_REG_VALUE, REG_GAX,
            IARG_END);

        PROTO_Free( proto );
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
