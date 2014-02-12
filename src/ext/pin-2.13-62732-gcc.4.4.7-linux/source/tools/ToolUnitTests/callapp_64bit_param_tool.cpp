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
  Replace an original function with a custom function defined in the tool.  
  This tests passing of 64bit parameters (in 64bit app).
  Note that at the time of writing this test (Jan2011) 64bit parameters in 32bit
  apps are not supported for RT_RepalceSignature
*/

/* ===================================================================== */
#include "pin.H"
#include <iostream>
#include <stdlib.h>

using namespace std;

union  union_64{
    double _doub;
    unsigned char _uint8[8];
    INT64 i64;
} UNION_64;

/* ===================================================================== */
static void (*pf_bar)();

/* ===================================================================== */
VOID BarReplacement(  CONTEXT * ctxt, AFUNPTR pf_Bar, INT64 param1, INT64 param2 )
{
    union  union_64 param1Replacement, param2Replacement;

    

    param1Replacement._uint8[0]=0xdc;
    param1Replacement._uint8[1]=0xac;
    param1Replacement._uint8[2]=0xdc;
    param1Replacement._uint8[3]=0xac;
    param1Replacement._uint8[4]=0xdc;
    param1Replacement._uint8[5]=0xac;
    param1Replacement._uint8[6]=0xdc;
    param1Replacement._uint8[7]=0xac;

    param2Replacement._uint8[0]=0xed;
    param2Replacement._uint8[1]=0xde;
    param2Replacement._uint8[2]=0xad;
    param2Replacement._uint8[3]=0xba;
    param2Replacement._uint8[4]=0xed;
    param2Replacement._uint8[5]=0xde;
    param2Replacement._uint8[6]=0xad;
    param2Replacement._uint8[7]=0xba;

    union union_64 *ptr1 = (union union_64 *)(&param1);
    union union_64 *ptr2 = (union union_64 *)(&param2);
    printf("Hello from BarReplacementX!\n");

    printf("param1: ");
    for (int i=0; i<8; i++)
    {
        printf (" %x ", ptr1->_uint8[i]&0xff);
    }
    printf("\nparam2: ");
    for (int i=0; i<8; i++)
    {
        printf (" %x ", ptr2->_uint8[i]&0xff);
    }
    fflush (stdout);

    // verify expected values of original param to Bar
    if (ptr1->_uint8[0]!=0xde)
    {
        printf ("ERROR1\n");
        exit (-1);
    }
    if (ptr1->_uint8[1]!=0xad)
    {
        printf ("ERROR2\n");
        exit (-1);
    }
    if (ptr1->_uint8[2]!=0xbe)
    {
        printf ("ERROR3\n");
        exit (-1);
    }
    if (ptr1->_uint8[3]!=0xef)
    {
        printf ("ERROR4\n");
        exit (-1);
    }
    if (ptr1->_uint8[4]!=0xde)
    {
        printf ("ERROR5\n");
        exit (-1);
    }
    if (ptr1->_uint8[5]!=0xad)
    {
        printf ("ERROR6\n");
        exit (-1);
    }
    if (ptr1->_uint8[6]!=0xbe)
    {
        printf ("ERROR7\n");
        exit (-1);
    }
    if (ptr1->_uint8[7]!=0xef)
    {
        printf ("ERROR8\n");
        exit (-1);
    }

    if (ptr2->_uint8[0]!=0xde)
    {
        printf ("ERROR9\n");
        exit (-1);
    }
    if (ptr2->_uint8[1]!=0xad)
    {
        printf ("ERRORa\n");
        exit (-1);
    }
    if (ptr2->_uint8[2]!=0xbe)
    {
        printf ("ERRORb\n");
        exit (-1);
    }
    if (ptr2->_uint8[3]!=0xef)
    {
        printf ("ERRORc\n");
        exit (-1);
    }
    if (ptr2->_uint8[4]!=0xde)
    {
        printf ("ERRORd\n");
        exit (-1);
    }
    if (ptr2->_uint8[5]!=0xad)
    {
        printf ("ERRORe\n");
        exit (-1);
    }
    if (ptr2->_uint8[6]!=0xbe)
    {
        printf ("ERRORf\n");
        exit (-1);
    }
    if (ptr2->_uint8[7]!=0x7f)
    {
        printf ("ERRORg\n");
        exit (-1);
    }

    PIN_CallApplicationFunction( ctxt, PIN_ThreadId(), CALLINGSTD_DEFAULT, pf_Bar,
                                 PIN_PARG(void),
                                 PIN_PARG(INT64), param1Replacement,
                                 PIN_PARG(INT64), param2Replacement,
                                 PIN_PARG_END());
    
}


/* ===================================================================== */
VOID ImageLoad(IMG img, VOID *v)
{
    if ( IMG_IsMainExecutable( img ))
    {
        PROTO proto = PROTO_Allocate( PIN_PARG(void), CALLINGSTD_DEFAULT,
                                      "Bar", PIN_PARG_END() );
        
        
        RTN rtn = RTN_FindByName(img, "Bar");
        if (RTN_Valid(rtn))
        {
            printf ("Replacing %s in %s\n", RTN_Name(rtn).c_str(), IMG_Name(img).c_str());
            
            pf_bar = (void (*)())RTN_ReplaceSignature(
                rtn, AFUNPTR(BarReplacement),
                IARG_PROTOTYPE, proto,
                IARG_CONTEXT,
                IARG_ORIG_FUNCPTR,
                IARG_FUNCARG_ENTRYPOINT_VALUE, 0,
                IARG_FUNCARG_ENTRYPOINT_VALUE, 1,
                IARG_END);
            
        }    
        PROTO_Free( proto );
    }
}

/* ===================================================================== */
int main(INT32 argc, CHAR *argv[])
{
    PIN_InitSymbols();

    PIN_Init(argc, argv);

    IMG_AddInstrumentFunction(ImageLoad, 0);
    
    PIN_StartProgram();

    return 0;
}

/* ===================================================================== */
/* eof */
/* ===================================================================== */

