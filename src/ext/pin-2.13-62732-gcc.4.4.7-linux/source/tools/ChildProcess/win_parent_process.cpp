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
// Application that creates new process

#include <Windows.h>
#include <iostream>
#include <string>
using namespace std;

//Wait for a process completion
//Verify it returned the expected exit code
bool WaitAndVerify(HANDLE process)
{
    if(WaitForSingleObject( process, INFINITE ) == WAIT_FAILED)
    {
        cout << "WaitForSingleObject failed" << endl;
        return FALSE;
    }
    DWORD processExitCode;
    if(GetExitCodeProcess (process, &processExitCode) == FALSE)
    {
        cout << "GetExitCodeProcess Failed" << endl;
        return FALSE;
    }
    if(processExitCode != 0)
    {
        cout << "Got unexpected exit code" << endl;
        return FALSE;
    }
    return TRUE;
}

int main(int argc, char * argv[])
{
    char cmd[] = "win_child_process.exe \"param1 param2\" param3";
    STARTUPINFO         si;
    PROCESS_INFORMATION  pi;
    memset(&si, 0, sizeof(si));
    si.cb = sizeof(STARTUPINFO);
    memset(&pi, 0, sizeof(pi));
    if (!CreateProcess(NULL,cmd  , NULL, NULL, TRUE, NULL, 
        NULL, NULL, &si, &pi))
    {
        cout <<  "Couldn't create child process " << endl;
        exit(0);
    }
    if(WaitAndVerify(pi.hProcess) == FALSE)
    {
        exit(0);
    }
    cout << "First Process was created successfully!" << endl;
    
    //Create suspended
    if (!CreateProcess(NULL,cmd  , NULL, NULL, TRUE, CREATE_SUSPENDED, 
        NULL, NULL, &si, &pi))
    {
        cout <<  "Couldn't create child process " << endl;
        exit(0);
    }
    ResumeThread( pi.hThread );

    if(WaitAndVerify(pi.hProcess) == FALSE)
    {
        exit(0);
    }  
    cout << "Second Process was created successfully!" << endl;

    //Create process as user
    HANDLE tokenHandle;
    BOOL res = OpenProcessToken(GetCurrentProcess(), TOKEN_ALL_ACCESS, &tokenHandle);
    if(!res)
    {
        cout <<  "Couldn't open process token" << endl;
        exit(0);
    }
    if (!CreateProcessAsUser(tokenHandle, NULL,cmd  , NULL, NULL, TRUE, CREATE_SUSPENDED, 
        NULL, NULL, &si, &pi))
    {
        cout <<  "Couldn't create child process " << endl;
        exit(0);
    }
    ResumeThread( pi.hThread );

    if(WaitAndVerify(pi.hProcess) == FALSE)
    {
        exit(0);
    }  
    cout << "Third Process was created successfully!" << endl;

    
    Sleep(1000);

    return 0;
}

