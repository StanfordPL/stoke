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
  Checks probe mode with functions relocation
 */

#include <stdlib.h>
#include "pin.H"
#include <iostream>
#include <fstream>

using namespace std;

/* ===================================================================== */
/* Global Variables */
/* ===================================================================== */

typedef void (*FUNCPTR)();
typedef int (*FUNCPTR1a)();
static void (*pf_r1)();
static int (*pf_r1a)();
static void (*pf_r2)();


/* ===================================================================== */

INT32 Usage()
{
    cerr <<
        "This pin tool replaces relocatable_1() and relocatable_2()\n"
        "\n";
    cerr << KNOB_BASE::StringKnobSummary();
    cerr << endl;
    return -1;
}


/* ===================================================================== */

void R1()
{
    cout << "R1: calling original relocatable_1()" << endl;

    return (pf_r1)();
}

int R1a()
{
    cout << "R1a: calling original relocatable_1a()" << endl;

    return (pf_r1a)();
}

void R2()
{
    cout << "R2: calling original relocatable_2()" << endl;

    return (pf_r2)();
}
void R3(FUNCPTR fptr)
{
    cout << "R3: calling original relocatable_3()" << endl;

    return (fptr)();
}




/* ===================================================================== */

VOID CheckRelocatable(const char *fname, IMG img, FUNCPTR *origFptr, AFUNPTR replacementFunc)
{
    RTN rtn = RTN_FindByName(img, fname);

    if ( RTN_Valid(rtn))
    {
        //fprintf(stderr, "Attach to prs %d and debug %s\n", PIN_GetPid(), fname);
        //getchar();
        if (RTN_IsSafeForProbedReplacement(rtn))
        {        
            cout << fname << " routine should not be probed w/o relocation" << endl;
            exit(-1);
        }
        if (RTN_IsSafeForProbedReplacementEx(rtn, PROBE_MODE_ALLOW_RELOCATION))
        {        
            // Save the function pointer that points to the new location of
            // the entry point of the original exit in this image.
            //
            *origFptr = (FUNCPTR)RTN_ReplaceProbedEx( rtn, PROBE_MODE_ALLOW_RELOCATION, replacementFunc);
            
            cout << "ImageLoad: Replaced " << fname << " in:"  << IMG_Name(img) << endl;
    	}
        else
        {
            cout << "ImageLoad: Pin does not want to replace " << fname << " in:"  << IMG_Name(img) << endl;
            exit(-1);
        }    
    }
}

VOID CheckRelocatable1a(const char *fname, IMG img, FUNCPTR1a *origFptr, AFUNPTR replacementFunc)
{
    RTN rtn = RTN_FindByName(img, fname);

    if ( RTN_Valid(rtn))
    {
        //fprintf(stderr, "Attach to prs %d and debug %s\n", PIN_GetPid(), fname);
        //getchar();
        if (RTN_IsSafeForProbedReplacement(rtn))
        {        
            cout << fname << " routine should not be probed w/o relocation" << endl;
            exit(-1);
        }
        if (RTN_IsSafeForProbedReplacementEx(rtn, PROBE_MODE_ALLOW_RELOCATION))
        {        
            // Save the function pointer that points to the new location of
            // the entry point of the original exit in this image.
            //
            *origFptr = (FUNCPTR1a)RTN_ReplaceProbedEx( rtn, PROBE_MODE_ALLOW_RELOCATION, replacementFunc);
            
            cout << "ImageLoad: Replaced " << fname << " in:"  << IMG_Name(img) << endl;
    	}
        else
        {
            cout << "ImageLoad: Pin does not want to replace " << fname << " in:"  << IMG_Name(img) << endl;
            exit(-1);
        }    
    }
}

VOID CheckRelocatableSig(const char *fname, IMG img, AFUNPTR replacementFunc)
{
    RTN rtn = RTN_FindByName(img, fname);

    if ( RTN_Valid(rtn))
    {
        //fprintf(stderr, "Attach to prs %d and debug %s\n", PIN_GetPid(), fname);
        //getchar();
        if (RTN_IsSafeForProbedReplacement(rtn))
        {        
            cout << fname << " routine should not be probed w/o relocation" << endl;
            exit(-1);
        }
        if (RTN_IsSafeForProbedReplacementEx(rtn, PROBE_MODE_ALLOW_RELOCATION))
        { 
            PROTO proto = PROTO_Allocate( PIN_PARG(void), CALLINGSTD_DEFAULT,
                                      fname, PIN_PARG_END() );

            RTN_ReplaceSignatureProbedEx(rtn, PROBE_MODE_ALLOW_RELOCATION, replacementFunc,
                IARG_PROTOTYPE, proto, IARG_ORIG_FUNCPTR, IARG_END);
   
            cout << "ImageLoad: Replaced " << fname << " in:"  << IMG_Name(img) << endl;
    	}
        else
        {
            cout << "ImageLoad: Pin does not want to replace " << fname << " in:"  << IMG_Name(img) << endl;
            exit(-1);
        }    
    }
}

VOID CheckNonRelocatable(const char *fname, IMG img)
{
    RTN rtn = RTN_FindByName(img, fname);

    if ( RTN_Valid(rtn))
    {
        //fprintf(stderr, "Attach to prs %d and debug %s\n", PIN_GetPid(), fname);
        //getchar();
        if (RTN_IsSafeForProbedReplacement(rtn))
        {        
            cout << fname << " routine should not be probed" << endl;
            exit(-1);
        }
        if (RTN_IsSafeForProbedReplacementEx(rtn, PROBE_MODE_ALLOW_RELOCATION))
        {        
            cout << fname << " routine should not be probed" << endl;
            exit(-1);
    	}
        else
        {
            cout << "ImageLoad: Pin behavior is right: reject to replace " << fname << " routine" << endl;
        }    
    }
}

VOID ImageLoad(IMG img, VOID *v)
{
    CheckRelocatable("relocatable_1", img, &pf_r1, AFUNPTR(R1));
    CheckRelocatable1a("relocatable_1a", img, &pf_r1a, AFUNPTR(R1a));
    CheckRelocatable("relocatable_2", img, &pf_r2, AFUNPTR(R2));
    CheckRelocatableSig("relocatable_3", img, AFUNPTR(R3));
    CheckNonRelocatable("non_relocatable_1", img);
    CheckNonRelocatable("non_relocatable_2", img);    
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
