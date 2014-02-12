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
// This tool replaces sleep(). 
//

#include "pin.H"
#include <iostream>
using namespace std;

/* ===================================================================== */
/* Global Variables */
/* ===================================================================== */

static void (*pf_sleep)(int);

/* ===================================================================== */
/* Replacement Functions */
/* ===================================================================== */


void SleepProbe( int b )
{
    cerr << "SleepProbe: calling sleep" << endl;
    
    if (pf_sleep)
    {
        (pf_sleep)( b );
    }
}



/* ===================================================================== */

#if defined (TARGET_WINDOWS)

// Returns TRUE if baseName matches tail of imageName. Comparison is case-insensitive.
// Parameters:
//   imageName  image file name in either form with extension
//   baseName   image base name with extension (e.g. kernel32.dll)
BOOL MatchedImageName(const string & imageName, const string & baseName)
{
    if (imageName.size() >= baseName.size())
    {
        return _stricmp(imageName.c_str() + imageName.size() - baseName.size(), baseName.c_str()) == 0;
    }
    return FALSE;
}

#endif

/* ===================================================================== */

// Called every time a new image is loaded
// Look for routines that we want to probe

VOID ImageLoad(IMG img, VOID *v)
{
    
#if defined (TARGET_WINDOWS)
    RTN sleepRtn = RTN_Invalid();
    // Look for Sleep only in kernel32.dll
    if (MatchedImageName(IMG_Name(img), "kernel32.dll"))
    {
        sleepRtn = RTN_FindByName(img, "Sleep");
    }
#else
    RTN sleepRtn = RTN_FindByName(img, "sleep");
#endif

    if (RTN_Valid(sleepRtn))
    {
        if (  RTN_IsSafeForProbedReplacement( sleepRtn ) )
        {
            pf_sleep = (void (*)(int)) RTN_ReplaceProbed(sleepRtn,
                                                     AFUNPTR(SleepProbe));

            cerr << "Inserted probe for Sleep:" << IMG_Name(img) << endl;
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
