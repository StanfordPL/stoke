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
//  Replace an original function with a custom function defined in the tool using
//  probes.  The replacement function has a different signature from that of the 
//  original replaced function.

#include "pin.H"
#include <iostream>
using namespace std;

typedef VOID * ( *FP_MALLOC )( size_t );

// This is the replacement routine.
//
VOID * NewMalloc( FP_MALLOC orgFuncptr, UINT32 arg0, ADDRINT returnIp )
{
    // Normally one would do something more interesting with this data.
    //
    cout << "NewMalloc ("
         << hex << ADDRINT ( orgFuncptr ) << ", " 
         << dec << arg0 << ", " 
         << hex << returnIp << ")"
         << endl << flush;

    // Call the relocated entry point of the original (replaced) routine.
    //
    VOID * v = orgFuncptr( arg0 );

    return v;
}


// Pin calls this function every time a new img is loaded.
// It is best to do probe replacement when the image is loaded,
// because only one thread knows about the image at this time.
//
VOID ImageLoad( IMG img, VOID *v )
{
    // See if malloc() is present in the image.  If so, replace it.
    //
    RTN rtn = RTN_FindByName( img, "malloc" );
    
    if (RTN_Valid(rtn))
    {
        cout << "Replacing malloc in " << IMG_Name(img) << endl;
        
        // Define a function prototype that describes the application routine
        // that will be replaced.
        //
        PROTO proto_malloc = PROTO_Allocate( PIN_PARG(void *), CALLINGSTD_DEFAULT,
                                             "malloc", PIN_PARG(int), PIN_PARG_END() );
        
        // Replace the application routine with the replacement function.
        // Additional arguments have been added to the replacement routine.
        //
        RTN_ReplaceSignatureProbed(rtn, AFUNPTR(NewMalloc),
                                   IARG_PROTOTYPE, proto_malloc,
                                   IARG_ORIG_FUNCPTR,
                                   IARG_FUNCARG_ENTRYPOINT_VALUE, 0,
                                   IARG_RETURN_IP,
                                   IARG_END);

        // Free the function prototype.
        //
        PROTO_Free( proto_malloc );
    }
}

/* ===================================================================== */
/* Print Help Message                                                    */
/* ===================================================================== */

INT32 Usage()
{
    cerr << "This tool demonstrates how to replace an original" << endl;
    cerr << " function with a custom function defined in the tool " << endl;
    cerr << " using probes.  The replacement function has a different " << endl;
    cerr << " signature from that of the original replaced function." << endl;
    cerr << endl << KNOB_BASE::StringKnobSummary() << endl;
    return -1;
}

/* ===================================================================== */
/* Main: Initialize and start Pin in Probe mode.                         */
/* ===================================================================== */

int main( INT32 argc, CHAR *argv[] )
{
    // Initialize symbol processing
    //
    PIN_InitSymbols();
    
    // Initialize pin
    //
    if (PIN_Init(argc, argv)) return Usage();
    
    // Register ImageLoad to be called when an image is loaded
    //
    IMG_AddInstrumentFunction( ImageLoad, 0 );
    
    // Start the program in probe mode, never returns
    //
    PIN_StartProgramProbed();
    
    return 0;
}

