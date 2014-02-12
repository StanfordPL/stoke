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
  Pin does not support an API that removes a probe.  Probes are automatically
  removed when an image is unloaded.  Pin will display the address of the
  probes that are removed if the test is run with
  -xyzzy -mesgon log_probe
*/

/* ===================================================================== */
#include "pin.H"
#include <iostream>
#include <stdlib.h>

using namespace std;


/* ===================================================================== */
/* Replacement routines */
/* ===================================================================== */

VOID One_IA32( AFUNPTR orgFuncptr )
{
    orgFuncptr();
    return;
}

VOID One_IA32_2( AFUNPTR orgFuncptr )
{
    orgFuncptr();
    return;
}


/* ===================================================================== */
/* Instrumentation routines */
/* ===================================================================== */

VOID Sanity(IMG img, RTN rtn)
{
    if ( PIN_IsProbeMode() && ! RTN_IsSafeForProbedReplacement( rtn ) )
    {
        LOG( "Cannot replace " + RTN_Name(rtn) + " in " + IMG_Name(img) + "\n" );
        exit(1);
    }
}


/* ===================================================================== */

VOID ReplaceProbed( RTN rtn, PROTO proto)
{
    RTN_ReplaceSignatureProbed(
        rtn, AFUNPTR( One_IA32 ),
        IARG_PROTOTYPE, proto,
        IARG_ORIG_FUNCPTR,
        IARG_END);
    RTN_ReplaceSignatureProbed(
        rtn, AFUNPTR( One_IA32_2 ),
        IARG_PROTOTYPE, proto,
        IARG_ORIG_FUNCPTR,
        IARG_END);
}


/* ===================================================================== */
    
VOID ImageLoad(IMG img, VOID *v)
{
    PROTO proto = PROTO_Allocate( PIN_PARG(void), CALLINGSTD_DEFAULT,
                                  "one", PIN_PARG_END() );
    
    RTN rtn = RTN_FindByName(img, "one");
    if (RTN_Valid(rtn))
    {
        Sanity(img, rtn);
        
        LOG( "Replacing one in " + IMG_Name(img) + "\n" );
        LOG( "Address = " + hexstr( RTN_Address(rtn)) + "\n" );
        
        ReplaceProbed(rtn, proto);
    }
    
    PROTO_Free( proto );
}

/* ===================================================================== */

VOID ImageUnload(IMG img, VOID *v)
{
    LOG( "Unloading " + IMG_Name(img) + "\n" ); 
}

/* ===================================================================== */
VOID ProbesInserted( IMG img, VOID *v )
{ 
    RTN rtn = RTN_FindByName(img, "one");
    if (RTN_Valid(rtn))
    {
        PIN_CODE_RANGE * ranges = 0;
        
        INT32 num = RTN_CodeRangesProbed( rtn, 0, ranges );
        INT32 rsize = num * sizeof(PIN_CODE_RANGE);

        ranges = reinterpret_cast< PIN_CODE_RANGE * >( malloc( rsize ));

        INT32 count = RTN_CodeRangesProbed( rtn, num, ranges );
        
        LOG( "rtn   start address   size\n");
        for ( int i=0; i<count; i++ )
        {
            LOG(" " + decstr(RTN_Id(rtn)) + "       " +
                hexstr(ranges[i].start_address) + "        " +
                hexstr(ranges[i].size) + "\n");
        }
        free (ranges);
    }
}


/* ===================================================================== */

int main(INT32 argc, CHAR *argv[])
{
    PIN_InitSymbols();
    
    PIN_Init(argc, argv);
    
    IMG_AddInstrumentFunction(ImageLoad, 0);
    IMG_AddUnloadFunction(ImageUnload, 0);
    PIN_AddProbesInsertedFunction( ProbesInserted, 0 );
    
    PIN_StartProgramProbed();
    
    return 0;
}


/* ===================================================================== */
/* eof */
/* ===================================================================== */
