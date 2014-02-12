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
//
// This tool replaces routine "foo"
// that has two basic blocks in prolog bytes being replaced by probe.
// Check proper translation of the copied original bytes
//


#include "pin.H"
#include <iostream>

using namespace std;

//--------------------------------------------------------------------------------------------------
typedef  int (*fooType)( int val );
int FooProbe(fooType fooWithoutReplacement, int val)
{
    return fooWithoutReplacement(val);
}

/* ===================================================================== */
// Called every time a new image is loaded
// Look for routines that we want to probe

VOID ImageLoad(IMG img, VOID *v)
{
    RTN fooRtn = RTN_FindByName(img, "foo");

    if (RTN_Valid(fooRtn) && RTN_IsSafeForProbedReplacement(fooRtn))
    {
        PROTO s_protoFoo = PROTO_Allocate( PIN_PARG(int), CALLINGSTD_DEFAULT,
             "foo", PIN_PARG(int), PIN_PARG_END() );
        AFUNPTR fff = RTN_ReplaceSignatureProbed(fooRtn, AFUNPTR(FooProbe),
                                    IARG_PROTOTYPE, s_protoFoo,
                                     IARG_ORIG_FUNCPTR,
                                     IARG_FUNCARG_ENTRYPOINT_VALUE, 0,
                                     IARG_END);
		PROTO_Free(s_protoFoo);
    }
}

/* ===================================================================== */

int main(int argc, CHAR *argv[])
{
    PIN_InitSymbols();

    if( PIN_Init(argc,argv) )
    {
        return -1;
    }

    IMG_AddInstrumentFunction(ImageLoad, 0);
    
    PIN_StartProgramProbed();
    
    return 0;
}

/* ===================================================================== */
/* eof */
/* ===================================================================== */
