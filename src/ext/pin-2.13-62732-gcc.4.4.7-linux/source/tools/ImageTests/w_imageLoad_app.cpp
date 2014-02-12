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
#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <windows.h>
#include <string>
#include <iostream>
using namespace std;

#define EXPORT_SYM extern "C" __declspec( dllexport )

EXPORT_SYM int AfterAttach();

const char * FIRST_DLL_NAME = "my_dll.dll";

const char * SECOND_DLL_NAME = "my_dll_1.dll";

enum ExitType {
    RES_SUCCESS = 0,  //0
    RES_LOAD_FAILED,  //1
};


/**************************************************/

void WindowsOpen(const char* filename)
{
    HMODULE hdll = LoadLibrary(filename);
    if(hdll == NULL)
    {
        fflush(stderr);
        exit(RES_LOAD_FAILED);
    }
    FreeLibrary(hdll);
}

int AfterAttach()
{
    // Pin sets an anslysis function here to notify the application when Pin attaches to it.
    return 0;
}


int main()
{
    WindowsOpen(FIRST_DLL_NAME);
    while(!AfterAttach())
    {
        Sleep(1*1000);
    }
    WindowsOpen(SECOND_DLL_NAME);
    return RES_SUCCESS;
}
