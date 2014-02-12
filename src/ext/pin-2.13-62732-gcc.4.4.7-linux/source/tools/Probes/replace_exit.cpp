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
#include <iostream>
#include <fstream>

using namespace std;

/* ===================================================================== */
/* Global variables */
/* ===================================================================== */

static void (*pf_exit)(int status);


/* ===================================================================== */
/* Commandline Switches */
/* ===================================================================== */

INT32 Usage()
{
    cerr <<
        "This pin tool replaces exit using probes.\n"
        "\n";
    cerr << KNOB_BASE::StringKnobSummary();
    cerr << endl;
    return -1;
}

/* ===================================================================== */
/* Replacement Routines */
/* ===================================================================== */

void my_exit(int code)
{
    cout << "inside my_exit" << endl;
    
    
    // calls the original function that was saved in pf_exit at the time of replacement
   if (pf_exit)
        (pf_exit)(code);
}


/* ===================================================================== */
/* Instrumentation Routines */
/* ===================================================================== */

// Called every time a new image is loaded
// Look for routines that we want to probe
VOID ImageLoad(IMG img, VOID *v)
{
    RTN exitRtn = RTN_FindByName(img, "exit");

    if (RTN_Valid(exitRtn))
    {
        if ( ! RTN_IsSafeForProbedReplacement( exitRtn ) )
        {
            cout << "Cannot replace exit with my_exit in " << IMG_Name(img) << endl;
        }
        else 
        {
            // Save the function pointer that points to the new location of
            // the entry point of the original exit in this image.


            pf_exit = (void (*)(int)) RTN_ReplaceProbed(exitRtn, AFUNPTR(my_exit));        

            cout << "Inserted probe for exit() in:"  << IMG_Name(img) << " at address " << hex << RTN_Address(exitRtn) << dec << endl;
            cout << "Relocated entry point is at address " << hex << (ADDRINT)pf_exit << dec << endl;
        }
        
    }
}

/* ===================================================================== */

int main(int argc, CHAR *argv[])
{
    
    PIN_InitSymbols();

    if( PIN_Init(argc,argv) )
    {
        return Usage();
    }

    IMG_AddInstrumentFunction(ImageLoad, 0);
    
    PIN_StartProgramProbed();
    
    return 0;
}

/* ===================================================================== */
/* eof */
/* ===================================================================== */
