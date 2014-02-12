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
  Replace an original function with a custom function defined in the tool. The
  new function can have either the same or different signature from that of its
  original function.
*/

/* ===================================================================== */
#include "pin.H"
#include <iostream>
#include <stdio.h>
#include <stdlib.h>

using namespace std;

int numTimesPreOriginalReplaced = 0;
int numTimesOriginalReplaced = 0;
/* ===================================================================== */


/* ===================================================================== */
long PreOriginalReplacement(  CONTEXT * ctxt, AFUNPTR origFunc, long one, long two )
{
    

    long res;
    
    numTimesPreOriginalReplaced++;
    PIN_CallApplicationFunction( ctxt, PIN_ThreadId(),
                                 CALLINGSTD_DEFAULT, origFunc,
                                 PIN_PARG(long), &res,
                                 PIN_PARG(long), one,
                                 PIN_PARG(long), two,
                                 PIN_PARG_END() );
    

    return res;
}

long OriginalReplacement(  CONTEXT * ctxt, AFUNPTR origFunc, long one, long two )
{
    

    long res;
    
    numTimesOriginalReplaced++;
    PIN_CallApplicationFunction( ctxt, PIN_ThreadId(),
                                 CALLINGSTD_DEFAULT, origFunc,
                                 PIN_PARG(long), &res,
                                 PIN_PARG(long), one,
                                 PIN_PARG(long), two,
                                 PIN_PARG_END() );
    

    return res;
}


/* ===================================================================== */
VOID ImageLoad(IMG img, VOID *v)
{
    if ( IMG_IsMainExecutable( img ))
    {
        PROTO proto = PROTO_Allocate( PIN_PARG(long), CALLINGSTD_DEFAULT,
                                      "OriginalProto", PIN_PARG(long), PIN_PARG(long),
                                      PIN_PARG_END() );
        
        VOID * pf_Original;
        RTN rtn = RTN_FindByName(img, "Original");
        if (RTN_Valid(rtn))
        {
            pf_Original = reinterpret_cast<VOID *>(RTN_Address(rtn));
            cout << "Replacing " << RTN_Name(rtn) << " in " << IMG_Name(img) << endl;
            RTN_ReplaceSignature(
                rtn, AFUNPTR(OriginalReplacement),
                IARG_PROTOTYPE, proto,
                IARG_CONTEXT,
                IARG_PTR, pf_Original,
                IARG_ADDRINT, 1,
                IARG_ADDRINT, 2,
                IARG_END);
        }
        else
        {
            cout << "Original cannot be found." << endl;
            exit(1);
        }
 
        PROTO_Free( proto );


        
        proto = PROTO_Allocate( PIN_PARG(long), CALLINGSTD_DEFAULT,
                                      "PreOriginalProto", PIN_PARG(long), PIN_PARG(long),
                                      PIN_PARG_END() );
        

        rtn = RTN_FindByName(img, "PreOriginal");
        if (RTN_Valid(rtn))
        {
            pf_Original = reinterpret_cast<VOID *>(RTN_Address(rtn));
            cout << "Replacing " << RTN_Name(rtn) << " in " << IMG_Name(img) << endl;
            RTN_ReplaceSignature(
                rtn, AFUNPTR(PreOriginalReplacement),
                IARG_PROTOTYPE, proto,
                IARG_CONTEXT,
                IARG_PTR, pf_Original,
                IARG_ADDRINT, 1,
                IARG_ADDRINT, 2,
                IARG_END);
        }
        else
        {
            cout << "PreOriginal cannot be found." << endl;
            exit(1);
        }
 
        PROTO_Free( proto );
    }
}


VOID Fini(INT32 code, VOID *v)
{
    if (1000000 != numTimesOriginalReplaced)
    {
        printf ("***ERROR numTimesOriginalReplaced %d is unexpected\n", numTimesOriginalReplaced);
        exit(-1);
    }
    if (1 != numTimesPreOriginalReplaced)
    {
        printf ("***ERROR numTimesPreOriginalReplaced %d is unexpected\n", numTimesPreOriginalReplaced);
        exit(-1);
    }
}
    
/* ===================================================================== */
int main(INT32 argc, CHAR *argv[])
{
    PIN_InitSymbols();

    PIN_Init(argc, argv);

    IMG_AddInstrumentFunction(ImageLoad, 0);

    PIN_AddFiniFunction(Fini, 0);
    
    PIN_StartProgram();

    return 0;
}

/* ===================================================================== */
/* eof */
/* ===================================================================== */

