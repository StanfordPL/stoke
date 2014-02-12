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
// This tool is a negative test, it verify that pin report error on
// using illegal callbacks in probe/jit mode.
//

#include <stdio.h>
#include <stdlib.h>
#include "pin.H"

VOID ImageLoad(IMG img, VOID *v)
{
    printf("Loading %s, Image id = %d\n", IMG_Name(img).c_str(), IMG_Id(img));
    fflush(stdout);
}

// Pin calls this function every time a new img is unloaded
// You can't instrument an image that is about to be unloaded
VOID ImageUnload(IMG img, VOID *v)
{
    printf("Unloading %s\n", IMG_Name(img).c_str());
    fflush(stdout);
}

VOID ThreadStart(THREADID threadid, CONTEXT *ctxt, INT32 flags, VOID *v)
{
    printf("Got thread start notification\n");
    fflush(stdout);    
}

VOID Fini(INT32 code, VOID *v)
{
    printf("We are not expecting to get here...\n");
    fflush(stdout);    
    exit(1);
}

VOID DetachComplete(VOID *v)
{
    printf("Detach complete\n");
    fflush(stdout);
}


// argc, argv are the entire command line, including pin -t <toolname> -- ...
int main(int argc, char * argv[])
{ 
    // Initialize symbol processing
    PIN_InitSymbols();
    
    // Initialize pin
    PIN_Init(argc, argv);
    
    // Register ImageLoad to be called when an image is loaded
    IMG_AddInstrumentFunction(ImageLoad, 0);

    // Register ImageUnload to be called when an image is unloaded
    IMG_AddUnloadFunction(ImageUnload, 0);

    // Register fini funcation
    PIN_AddFiniFunction(Fini, 0);     
    
    printf("This is a negative test it is expected to fail\n");
    
    // Never returns
    if ( PIN_IsProbeMode() )
    {
        // Thread start callback is JIT mode only
        PIN_AddThreadStartFunction(ThreadStart, 0);
        PIN_StartProgramProbed();
    }
    else
    {
        // Detach probed callback is Probe mode only
        PIN_AddDetachFunctionProbed(DetachComplete, 0); 
        PIN_StartProgram();
    }    
        
    return 0;
}

