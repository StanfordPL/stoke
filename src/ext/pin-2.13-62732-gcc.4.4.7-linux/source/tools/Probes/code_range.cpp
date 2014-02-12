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
  @ORIGINAL_AUTHOR: Gail Lyons
*/

/* ===================================================================== */
/*! @file
   Demonstrate a way for a tool to present a stack walk when a tool calls
   nested replaced functions.
*/

/* ===================================================================== */
#include "pin.H"
#include <iostream>
#include <stdlib.h>

using namespace std;

/* ===================================================================== */
/* Globals */ 
/* ===================================================================== */

typedef VOID (*FUNCPTR)(ADDRINT arg);

ADDRINT relocated_address[3];


/* ===================================================================== */
/* Replacement routines  */
/* ===================================================================== */

VOID First( FUNCPTR fp, CONTEXT * ctxt, ADDRINT arg )
{
    (*fp)(arg);
}

VOID Second( FUNCPTR fp, CONTEXT * ctxt, ADDRINT arg )
{
    (*fp)(arg);
}

VOID Third( FUNCPTR fp, CONTEXT * ctxt, ADDRINT arg )
{
    (*fp)(arg);
}


/* ===================================================================== */
/* Instrumentation Routines  */
/* ===================================================================== */

void Replace( IMG img, string name, AFUNPTR funptr, int index )
{
    RTN rtn = RTN_FindByName(img, name.c_str());

    if (RTN_Valid(rtn))
    {
        if ( RTN_IsSafeForProbedReplacement( rtn ) )
        {
            PROTO proto = PROTO_Allocate( PIN_PARG(void),
                                          CALLINGSTD_DEFAULT, name.c_str(),
                                          PIN_PARG(unsigned long),
                                          PIN_PARG_END() );
            
            relocated_address[index] = (ADDRINT)RTN_ReplaceSignatureProbed( rtn, funptr,
                                        IARG_PROTOTYPE, proto,
                                        IARG_ORIG_FUNCPTR,
                                        IARG_CONTEXT,
                                        IARG_FUNCARG_ENTRYPOINT_VALUE, 0,
                                        IARG_END);
            
            PROTO_Free( proto );
        }
    }
}


VOID ImageLoad(IMG img, VOID *v)
{
    if ( ! IMG_IsMainExecutable( img ) )
        return;

    int index=0;
    
    Replace( img, "first",  AFUNPTR( First ),  index++ );
    Replace( img, "second", AFUNPTR( Second ), index++ );
    Replace( img, "third",  AFUNPTR( Third ),  index++ );
}


BOOL Report( IMG img, string name, int index )
{
    BOOL success = FALSE;
    PIN_CODE_RANGE * ranges=0;
    
    RTN rtn = RTN_FindByName(img, name.c_str());
    if (RTN_Valid(rtn))
    {
        INT32 num = RTN_CodeRangesProbed( rtn, 0, ranges );
        
        INT32 rsize = num * sizeof(PIN_CODE_RANGE);
        
        ranges = reinterpret_cast< PIN_CODE_RANGE * >( malloc( rsize ));

        INT32 count = RTN_CodeRangesProbed( rtn, num, ranges );

        if ( num != count)
            cout << "Error: wrong size returned!" << endl;
        
        cout << "rtn   start address   size" << endl;
        for ( int i=0; i<num; i++ )
        {
            cout << " " << RTN_Id(rtn) << "       " << hex <<
                ranges[i].start_address << "        " <<
                ranges[i].size << dec << endl;
        }
        cout << endl;

        if ( relocated_address[index] == ranges[0].start_address )
            success = TRUE;
        
        free ( ranges );
    }
    return success;
}


VOID ProbesInserted( IMG img, VOID *v )
{ 
    if ( ! IMG_IsMainExecutable( img ) )
        return;

    int index = 0;
    
    BOOL stat = Report( img, "first",  index++ );
    if ( stat == TRUE )
         stat = Report( img, "second", index++ );
    if ( stat == TRUE )
         stat = Report( img, "third",  index++ );

    if ( stat == TRUE )
        cout << "Success!!" << endl;
    else
        cout << "Error.  Cannot find relocated address." << endl;
}



/* ===================================================================== */
/* Main  */
/* ===================================================================== */

int main(INT32 argc, CHAR *argv[])
{
    PIN_InitSymbols();

    PIN_Init(argc, argv);

    IMG_AddInstrumentFunction(ImageLoad, 0);
    PIN_AddProbesInsertedFunction( ProbesInserted, 0 );
    
    PIN_StartProgramProbed();

    return 0;
}

/* ===================================================================== */
/* eof */
/* ===================================================================== */
    
