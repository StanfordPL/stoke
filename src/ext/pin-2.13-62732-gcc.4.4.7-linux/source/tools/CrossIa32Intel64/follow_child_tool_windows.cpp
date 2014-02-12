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
using namespace std;

namespace WIND
{
#include <windows.h>  
}

// Whether to check current process id received in KnobCurrentProcessId
KNOB<BOOL> KnobLoadSystemDlls(KNOB_MODE_WRITEONCE,         "pintool",
                                         "load_system_dlls", "0", "load system dlls in main()");

BOOL FollowChild(CHILD_PROCESS childProcess, VOID * userData)
{
    cout << "At follow child callback" << endl << flush;
    cout << "Child process id = " << CHILD_PROCESS_GetId(childProcess) << endl << flush;
    return TRUE;
}


VOID ImageLoad(IMG img, VOID *v)
{
    cout << "Loading " <<  IMG_Name(img) << ", Image id = " << IMG_Id(img) << endl << flush;
}

// Pin calls this function every time a new img is unloaded
// You can't instrument an image that is about to be unloaded
VOID ImageUnload(IMG img, VOID *v)
{
    cout << "Unloading " <<  IMG_Name(img) << ", Image id = " << IMG_Id(img) << endl << flush;
}

VOID AppStart(VOID *v)
{
    cout << "Application started" << endl << flush;;
}

int main(INT32 argc, CHAR **argv)
{
    PIN_InitSymbols();

    PIN_Init(argc, argv);

    cout << "In tool's main, probed = " << decstr(PIN_IsProbeMode()) << endl << flush;
    cout << "Current process id = " << WIND::GetCurrentProcessId() << endl << flush;

    PIN_AddFollowChildProcessFunction(FollowChild, 0);

    IMG_AddInstrumentFunction(ImageLoad, 0);

    IMG_AddUnloadFunction(ImageUnload, 0);
    
       
    if(KnobLoadSystemDlls)
    {
        WIND::HMODULE h1 = WIND::LoadLibrary("RPCRT4.dll");
        if(h1 == NULL)
        {
            cout << "Failed to load RPCRT4" << endl << flush;
            exit(-1);
        }     
        WIND::HMODULE h2 = WIND::LoadLibrary("advapi32.dll");
        if(h1 == NULL)
        {
            cout << "Failed to load advapi32" << endl << flush;
            exit(-1);
        }
        WIND::HMODULE h3 = WIND::LoadLibrary("dbghelp.dll");
        if(h1 == NULL)
        {
            cout << "Failed to load dbghelp" << endl << flush;
            exit(-1);
        }
        WIND::HMODULE h4 = WIND::LoadLibrary("user32.dll");
        if(h1 == NULL)
        {
            cout << "Failed to load user32" << endl << flush;
            exit(-1);
        }       
    }
 
    // Never returns
    if ( PIN_IsProbeMode() )
    {
        PIN_AddApplicationStartFunction(AppStart, 0);
        PIN_StartProgramProbed();
    }
    else
    {
        PIN_StartProgram();
    }

    return 0;
}
