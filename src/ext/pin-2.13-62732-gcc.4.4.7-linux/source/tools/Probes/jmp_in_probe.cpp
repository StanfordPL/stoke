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
  Replaces probed_func that has a branch within the bytes which must be overwritten
 */

#include <stdlib.h>
 
#include "pin.H"
#include <iostream>
#include <fstream>

using namespace std;

/* ===================================================================== */
/* Global Variables */
/* ===================================================================== */


typedef int (*FUNCPTR)(int);
static int (*pf_jmp_in_probe)(int num);


/* ===================================================================== */

INT32 Usage()
{
    cerr <<
        "This pin tool replaces probed_func()\n"
        "\n";
    cerr << KNOB_BASE::StringKnobSummary();
    cerr << endl;
    return -1;
}


/* ===================================================================== */

int ToolReplacementFunc(int num)
{
    cout << "ToolReplacementFunc: calling probed_func()" << endl << flush;
    int retVal = (pf_jmp_in_probe)(num);
    cout << "ToolReplacementFunc: back from probed_func()" << endl << flush;
    return retVal;
}


/* ===================================================================== */

// Called every time a new image is loaded.
// Look for routines that we want to replace.
VOID ImageLoad(IMG img, VOID *v)
{
    RTN rtn = RTN_FindByName(img, "probed_func");

    if ( RTN_Valid(rtn))
    {
        if ( RTN_IsSafeForProbedReplacementEx(rtn, PROBE_MODE_ALLOW_RELOCATION) )
        {
            
            // Save the function pointer that points to the new location of
            // the entry point of the original exit in this image.
            //
            pf_jmp_in_probe = (FUNCPTR)RTN_ReplaceProbedEx( rtn, PROBE_MODE_ALLOW_RELOCATION, 
                            AFUNPTR( ToolReplacementFunc ));
            
            cout << "ImageLoad: Replaced probed_func() in:"  << IMG_Name(img) << endl;
        }
        else
        {
            cout << "ImageLocad: Can't replace probed_func() in:"  << IMG_Name(img) << endl;
            exit(-1);
        }
    }
}


/* ===================================================================== */

int main(int argc, CHAR *argv[])
{
    PIN_InitSymbols();

    if( PIN_Init(argc,argv) )
        return Usage();

    IMG_AddInstrumentFunction(ImageLoad, 0);
    
    PIN_StartProgramProbed();
    
    return 0;
}


/* ===================================================================== */
/* eof */
/* ===================================================================== */
