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
  @ORIGINAL_AUTHOR: 
*/

/* ===================================================================== */
/*! @file
  Tests inserting a probe when the replacement function has the cdecl calling standard
*/



#include "pin.H"
#include <stdio.h>

/* ===================================================================== */
/* Global Variables */
/* ===================================================================== */

FILE *fp;

/* ===================================================================== */
/* Commandline Switches */
/* ===================================================================== */



/* ===================================================================== */



//--------------------------------------------------------------------------------------------------
typedef void* (__cdecl *mallocType)(size_t size );
void* MallocProbe(mallocType mallocWithoutReplacement, size_t size, CONTEXT* pPinContext, ADDRINT returnIp)
{
    fprintf (fp, "Probe\n");
	fflush (fp);
    void * ptr = mallocWithoutReplacement(size);
    return ptr;
}


/* ===================================================================== */
// Called every time a new image is loaded
// Look for routines that we want to probe

static bool s_init = false;
static PROTO s_protoAlloc;
VOID ImageLoad(IMG img, VOID *v)
{
    if( !s_init )
    {
        s_protoAlloc = PROTO_Allocate( PIN_PARG(void *), CALLINGSTD_CDECL,
                             "malloc", PIN_PARG(size_t), PIN_PARG_END() );
        s_init = true;
    }

    RTN stdAllocRtn = RTN_FindByName(img, "malloc");
    if (RTN_Valid(stdAllocRtn) && RTN_IsSafeForProbedReplacement(stdAllocRtn))
    {  
        RTN_ReplaceSignatureProbed(stdAllocRtn, AFUNPTR(MallocProbe),
                                    IARG_PROTOTYPE, s_protoAlloc,
                                     IARG_ORIG_FUNCPTR,
                                     IARG_FUNCARG_ENTRYPOINT_VALUE, 0,
                                     IARG_CONTEXT,
                                     IARG_RETURN_IP,
                                     IARG_END);
    }

    
}

/* ===================================================================== */

int main(int argc, CHAR *argv[])
{
    
    PIN_InitSymbols();

    if( PIN_Init(argc,argv) )
    {
        exit (0);
    }

    fp = fopen ("probecdecl.outfile", "w");

    IMG_AddInstrumentFunction(ImageLoad, 0);
    
    PIN_StartProgramProbed();
    
    return 0;
}

/* ===================================================================== */
/* eof */
/* ===================================================================== */
