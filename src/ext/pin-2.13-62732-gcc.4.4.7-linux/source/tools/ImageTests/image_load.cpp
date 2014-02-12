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
// This tool prints a trace of image load and unload events
//

#include <stdio.h>
#include "pin.H"

namespace WIND
{
#include <windows.h>  
}

// Whether to check current process id received in KnobCurrentProcessId
KNOB<BOOL> KnobLoadSystemDlls(KNOB_MODE_WRITEONCE,         "pintool",
                                         "load_system_dlls", "0", "load system dlls in main()");


// Pin calls this function every time a new img is loaded
// It can instrument the image, but this example does not
// Note that imgs (including shared libraries) are loaded lazily

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

void FiniCore()
{
    fflush(stdout);
}

VOID Fini(INT32 code, VOID *v)
{
    FiniCore();
}

class PROBE_FINI_OBJECT
{
  public:
    ~PROBE_FINI_OBJECT()
    {
        FiniCore();
    }
};

VOID AppStart(VOID *v)
{
    printf("Application started\n");
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
    
    printf("In tool's main, probed = %d\n", PIN_IsProbeMode()); 
    
    if(KnobLoadSystemDlls)
    {
        WIND::HMODULE h1 = WIND::LoadLibrary("RPCRT4.dll");
        if(h1 == NULL)
        {
            printf("Failed to load RPCRT4\n");
            fflush(stdout);
            exit(-1);
        }     
        WIND::HMODULE h2 = WIND::LoadLibrary("advapi32.dll");
        if(h1 == NULL)
        {
            printf("Failed to load advapi32\n");
            fflush(stdout);
            exit(-1);
        }
        WIND::HMODULE h3 = WIND::LoadLibrary("dbghelp.dll");
        if(h1 == NULL)
        {
            printf("Failed to load dbghelp\n");
            fflush(stdout);
            exit(-1);
        }
        WIND::HMODULE h4 = WIND::LoadLibrary("user32.dll");
        if(h1 == NULL)
        {
            printf("Failed to load user32\n");
            fflush(stdout);
            exit(-1);
        }       
    }    

    // Never returns
    if ( PIN_IsProbeMode() )
    {
        static PROBE_FINI_OBJECT finiObject;      
        PIN_AddApplicationStartFunction(AppStart, 0);     
        PIN_StartProgramProbed();
    }
    else
    {
        PIN_AddThreadStartFunction(ThreadStart, 0);
        PIN_AddFiniFunction(Fini, 0);     
        PIN_StartProgram();
    }    
        
    return 0;
}

