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
#include <string.h>

using namespace std;

INT32 Usage()
{
    cerr <<
        "This pin tool tests probe replacement.\n"
        "\n";
    cerr << KNOB_BASE::StringKnobSummary();
    cerr << endl;
    return -1;
}

typedef VOID (*INITFUNC)(INT32 argc, CHAR **argv, CHAR **env);

// Save original init functions in global vars
INITFUNC origLibcInit;
INITFUNC origPthreadInit;

// libcInitialized is TRUE when libc from user application completed initialization
BOOL libcInitialized = FALSE;
// libpthreadInitialized is TRUE when libc from user application completed initialization
BOOL libpthreadInitialized = FALSE;

// Wrapper for initialization function of libc 
// all standard init functions receive 3 parameters - argc, argv and env
extern "C"
VOID AlternativeLibcInit(INT32 argc, CHAR **argv, CHAR **env)
{
    // call to original init function
    (*origLibcInit)(argc, argv, env);
    // switch-on libcInitialized 
    libcInitialized = TRUE;
    cout << "libc initialized" << endl;
}

// Wrapper for initialization function of libpthread
extern "C"
VOID AlternativeLibpthreadInit(INT32 argc, CHAR **argv, CHAR **env)
{
    // call to original init function
    (*origPthreadInit)(argc, argv, env);
    // switch-on libpthreadInitialized
    libpthreadInitialized = TRUE;
    cout << "libpthread initialized" << endl;
}

extern "C"
VOID OtherImageInit(INT32 argc, CHAR **argv, CHAR **env, INITFUNC origInit, UINT32 imgId)
{
	(*origInit)(argc, argv, env);
	IMG img = IMG_FindImgById(imgId);
	cout << "Initialized " << IMG_Name(img) << endl;
}



/* ===================================================================== */

// Called every time a new image is loaded
// Add notification before library initialization

VOID ImageLoad(IMG img, VOID *v)
{
    const char *name = IMG_Name(img).c_str();
    if (strstr(name, "libc.so"))
    {
        RTN initRtn = RTN_FindByName(img, "_init");
        if (RTN_Valid(initRtn))
        {
            PROTO protoLibcInit = PROTO_Allocate( PIN_PARG(VOID), CALLINGSTD_DEFAULT,
                "AlternativeLibcInit", PIN_PARG(INT32), PIN_PARG(CHAR**), PIN_PARG(CHAR**), PIN_PARG_END() );

            origLibcInit = (INITFUNC)RTN_ReplaceSignatureProbed(initRtn, AFUNPTR(AlternativeLibcInit),
                IARG_PROTOTYPE, protoLibcInit, IARG_G_ARG0_CALLEE, IARG_G_ARG1_CALLEE, IARG_G_ARG2_CALLEE,
                IARG_END);
        }
        else
        {
            // the image doesn't have .init section
            cout << "initialization code of libc is not found" << endl;
        }
    }
    else if (strstr(name, "libpthread"))
    {
        RTN initRtn = RTN_FindByName(img, "_init");
        if (RTN_Valid(initRtn))
        {
            PROTO protoPthreadInit = PROTO_Allocate( PIN_PARG(VOID), CALLINGSTD_DEFAULT,
                "AlternativeLibpthreadInit", PIN_PARG(INT32), PIN_PARG(CHAR**), PIN_PARG(CHAR**), PIN_PARG_END() );

            origPthreadInit = (INITFUNC)RTN_ReplaceSignatureProbed(initRtn, AFUNPTR(AlternativeLibpthreadInit),
                IARG_PROTOTYPE, protoPthreadInit, IARG_G_ARG0_CALLEE, IARG_G_ARG1_CALLEE, IARG_G_ARG2_CALLEE,
                IARG_END);
        }
        else
        {
            cout << "initialization code of libpthread is not found" << endl;
        }
    }
	else
    {
        RTN initRtn = RTN_FindByName(img, "_init");
        if (RTN_Valid(initRtn))
        {
            PROTO protoInit = PROTO_Allocate( PIN_PARG(VOID), CALLINGSTD_DEFAULT,
                "OtherImageInit", PIN_PARG(INT32), PIN_PARG(CHAR**), PIN_PARG(CHAR**), PIN_PARG(AFUNPTR),
                PIN_PARG(UINT32), PIN_PARG_END() );

            RTN_ReplaceSignatureProbed(initRtn, AFUNPTR(OtherImageInit),
                IARG_PROTOTYPE, protoInit, IARG_G_ARG0_CALLEE, IARG_G_ARG1_CALLEE, IARG_G_ARG2_CALLEE,
                IARG_ORIG_FUNCPTR, IARG_UINT32, IMG_Id(img), IARG_END);
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

