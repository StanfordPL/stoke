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
// This tool verifies that partial unmapping of an image does not result in an image unload callback.

#include <iostream>
#include <stdio.h>
#include "pin.H"

using std::cout;
using std::endl;
using std::flush;

/////////////////////
// GLOBAL VARIABLES
/////////////////////

bool markerHit = false;
bool testSuccess = false;

void NotifyMarker()
{
    cout << "TOOL: AppMarker has been called" << endl << flush;
    markerHit = true;
}

VOID ImageUnload(IMG img, VOID* v)
{
    if (IMG_IsMainExecutable(img))
    {
        cout << "TOOL: Calling ImageUnload for " << IMG_Name(img) << endl << flush;

        if (!markerHit)
        {
            cout << "TOOL: ERROR: ImageUnload called before the marker was hit" << endl << flush;
        }
        else
        {
            testSuccess = true;
        }
    }
}

VOID Routine(RTN rtn, VOID* v)
{
    if (RTN_Name(rtn) == "AppMarker" || RTN_Name(rtn) == "_AppMarker")
    {
        RTN_Open(rtn);
        RTN_InsertCall(rtn, IPOINT_BEFORE, NotifyMarker, IARG_END);
        RTN_Close(rtn);
    }
}

VOID Fini(int, VOID* v)
{
    cout << "TOOL: Calling Fini" << endl << flush;
    if (testSuccess)
    {
        cout << "TOOL: SUCCESS" << endl << flush;
    }
    else
    {
        cout << "TOOL: FAILURE" << endl << flush;
    }
}

int main(int argc, CHAR *argv[])
{
    PIN_InitSymbols();

    PIN_Init(argc,argv);

    IMG_AddUnloadFunction(ImageUnload, 0);
    RTN_AddInstrumentFunction(Routine, 0);
    PIN_AddFiniFunction(Fini, 0);

    PIN_StartProgram(); // never returns

    return 0;
}
