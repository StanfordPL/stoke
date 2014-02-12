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
// This tool replaces my_yield, and calls the original.
// The function my_yield is written such that there is a syscall within
// the probe
//

#include "pin.H"
#include <iostream>
#include <stdlib.h>

using namespace std;

/* ===================================================================== */
/* Global Variables */
/* ===================================================================== */

static int (*pf_yield)();
static void (*pf_marker)();
static int my_counter = 0;

/* ===================================================================== */
/* Replacement Functions */
/* ===================================================================== */


int YieldProbe()
{
    my_counter++;
    return (pf_yield)();
}

void MarkerProbe()
{
    if (my_counter != 100)
    {
        cerr << "Unexpected number of calls to yield" << endl;
        exit(1);
    }

    int res = (pf_yield)();
    if (res != 0)
    {
        cerr << "Unexpected number of calls to yield" << endl;
        exit(1);
    }
    cerr << "Test ended succesfully" << endl;
    exit(0);
}

/* ===================================================================== */

// Called every time a new image is loaded
// Look for routines that we want to probe

VOID ImageLoad(IMG img, VOID *v)
{
    RTN yieldRtn = RTN_FindByName(img, "my_yield");
    if (RTN_Valid(yieldRtn))
    {
        if (  RTN_IsSafeForProbedReplacement( yieldRtn ) )
        {
            pf_yield = (int (*)()) RTN_ReplaceProbed(yieldRtn, AFUNPTR(YieldProbe));

            cerr << "Inserted probe for my_yield:" << IMG_Name(img) << endl;
        }
    }

    RTN markerRtn = RTN_FindByName(img, "my_marker");
    if (RTN_Valid(markerRtn))
    {
        if (  RTN_IsSafeForProbedReplacement( markerRtn ) )
        {
            pf_marker = (void (*)()) RTN_ReplaceProbed(markerRtn, AFUNPTR(MarkerProbe));

            cerr << "Inserted probe for my_marker:" << IMG_Name(img) << endl;
        }
    }
}

/* ===================================================================== */

int main(int argc, CHAR *argv[])
{
    PIN_InitSymbols();

    PIN_Init(argc,argv);

    IMG_AddInstrumentFunction(ImageLoad, 0);
    
    PIN_StartProgramProbed();
    
    return 0;
}

/* ===================================================================== */
/* eof */
/* ===================================================================== */
