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
#define _WIN32_WINNT   0x0400 
#include <Windows.h>
#include <iostream>
#include <stdio.h>
using namespace std;

static volatile int i = 0;

//Verify that the LFH is available. return true when running under debugger.
bool VerifyLFHAvailable()
{
    if(IsDebuggerPresent())
    {
        //LFH is not available unser debugger
        return true;
    }
    else
    {
        ULONG heapInfo = 2;
        return HeapSetInformation(GetProcessHeap(), HeapCompatibilityInformation, &heapInfo, sizeof(ULONG));
    }
}

BOOL WINAPI DllMain(HANDLE hDll, DWORD dwReason, LPVOID lpReserved)
{
    switch (dwReason) 
    {
      case DLL_PROCESS_ATTACH:
      {
		  if(VerifyLFHAvailable())
		  {		  
              cout << "Terminating process in DllMain(PROCESS_ATTACH)" << endl << flush;
		  }
		  else
		  {
              cout << "ERROR: LFH is not available" << endl << flush;
		  }
          TerminateProcess(GetCurrentProcess(), 0);
          i = 12;
          return FALSE;
          break;
      }  
      case DLL_THREAD_ATTACH:
          break;
      case DLL_THREAD_DETACH: 
          break;
      case DLL_PROCESS_DETACH:
          break;
      default:
          break; 
    } 
    return TRUE; 
}

extern "C" __declspec(dllexport) int Something() {return i;}