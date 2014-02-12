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
#include "pin.H"
#include <string>
#include <stdio.h>
#include <assert.h>
using namespace std;

//=======================================================================
// This is a tool that replaces an original function my_mpi_init() with
// with mpi_init_repl() which is implemented in this tool.
// mpi_init_repl() calls to the original my_mpi_init() function which uses 
// alertable system call and receives callbacks.
//=======================================================================

typedef void (*mpi_init_t)( void );


extern "C" void mpi_init_repl( CONTEXT * ctxt, AFUNPTR pf_mpi_init )
{
    printf( "----> mpi_init_repl\n" ); fflush( stdout );
    assert( pf_mpi_init );

    PIN_CallApplicationFunction( ctxt, PIN_ThreadId(),
                                 CALLINGSTD_DEFAULT, pf_mpi_init,
                                 PIN_PARG(void),
                                 PIN_PARG_END() );
}

//=======================================================================

VOID ImageLoad(IMG img, VOID *v)
{
    // Replace "my_mpi_init"  with "mpi_init_repl":
    RTN mpiinitRtn = RTN_FindByName(img, "my_mpi_init");
    if ( RTN_Valid( mpiinitRtn ) ) 
    {
        printf( "Replacing mpi_init ...\n" );

        PROTO proto = PROTO_Allocate( PIN_PARG(void), CALLINGSTD_DEFAULT,
                                  "mpi_init", PIN_PARG_END() );

        RTN_ReplaceSignature( mpiinitRtn, AFUNPTR(mpi_init_repl),
                              IARG_PROTOTYPE, proto,
                              IARG_CONTEXT, IARG_ORIG_FUNCPTR,
                              IARG_END);

        fflush( stdout );
        PROTO_Free( proto );
   }
}

static void OnCallback(THREADID threadIndex, 
                  CONTEXT_CHANGE_REASON reason, 
                  const CONTEXT *ctxtFrom,
                  CONTEXT *ctxtTo,
                  INT32 info, 
                  VOID *v)
{
    if (reason == CONTEXT_CHANGE_REASON_CALLBACK)
    {
        // Some systems interrupt aleratble system call in the mpi_init function 
        // with a callback, while some some others do not. To have the same
        // output on all systems we disable printf in this function.

        // printf( "Start handling system callback\n" ); fflush( stdout );
    }
}

//=======================================================================

int main(int argc, CHAR *argv[])
{
    PIN_InitSymbols();
    PIN_Init( argc, argv );
    IMG_AddInstrumentFunction( ImageLoad, 0 );
    PIN_AddContextChangeFunction(OnCallback, 0);
    PIN_StartProgram();
    
    return 0;
}
