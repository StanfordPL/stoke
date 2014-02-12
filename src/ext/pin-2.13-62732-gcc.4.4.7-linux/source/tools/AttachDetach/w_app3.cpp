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
#define _WIN32_WINNT  0x0400 

#include <stdio.h>
#include <windows.h>
#include <iostream>
using namespace std;

volatile int doloop = 1;

__declspec(dllexport) int DoLoop()
{
    return doloop;
} 

VOID CALLBACK My_APCProc(ULONG_PTR dwParam)
{
    if(dwParam == 1) {return;}
    QueueUserAPC(My_APCProc, GetCurrentThread() , (dwParam - 1));
    DWORD status = SleepEx(10, true);
}

DWORD WINAPI ThreadProc1(VOID * p)
{
    while(DoLoop())
    {
        DWORD status = SleepEx(1000, true);
    }
    return 0;
}

DWORD WINAPI ThreadProc2(VOID * p)
{
    while(DoLoop())
    {
        QueueUserAPC(My_APCProc, HANDLE(p) , 2);
        Sleep(50);
    }
    return 0;
}

DWORD WINAPI ThreadProc3(VOID * p)
{
    while(DoLoop())
    {
        OutputDebugString("Debugger please help\n");
        Sleep(1);
    }
    return 0;
}

bool CppException()
{
    int h = 0x1234;
    try 
    {
        throw 0x1;
    }
    catch(...)
    {
        
    }
    if(h != 0x1234)
    {
        return false;
    }
    return true;
}

DWORD WINAPI ThreadProc4(VOID * p)
{
    while(DoLoop())
    {
        if(!CppException())
        {
            return -1;
        }
        Sleep(1);
    }
    return 0;
}

void DivideByZero()
{
    static int zero = 0;
    int i  = 1 / zero; 
}

DWORD WINAPI ThreadProc5(VOID * p)
{
    while(DoLoop())
    {
        __try 
        { 
            DivideByZero(); 
        } 
        __except(GetExceptionCode() == EXCEPTION_INT_DIVIDE_BY_ZERO ? EXCEPTION_EXECUTE_HANDLER : 
                                                                      EXCEPTION_CONTINUE_SEARCH)
        { 
            volatile int j = 11;
        }
        Sleep(1);
    }
    return 0;
}

int main()
{   
    HANDLE threads[5];
    threads[0] = CreateThread(NULL, 0, (LPTHREAD_START_ROUTINE)ThreadProc1, NULL, 0, NULL);
    threads[1] = CreateThread(NULL, 0, (LPTHREAD_START_ROUTINE)ThreadProc2, (VOID *)(threads[0]), 0, NULL);
    threads[2] = CreateThread(NULL, 0, (LPTHREAD_START_ROUTINE)ThreadProc3, NULL, 0, NULL);
    threads[3] = CreateThread(NULL, 0, (LPTHREAD_START_ROUTINE)ThreadProc4, NULL, 0, NULL);
    threads[4] = CreateThread(NULL, 0, (LPTHREAD_START_ROUTINE)ThreadProc5, NULL, 0, NULL);

    while(DoLoop())
    {
        Sleep(20);
    }
    DWORD ret = WaitForMultipleObjects(5, threads, TRUE, 420*1000);
    if(ret == WAIT_TIMEOUT)
    {
        cerr << "w_app1 failed!" << endl;
        doloop = 0;
        //let the threads the opportunity to terminate cleanly
        WaitForMultipleObjects(5, threads, TRUE, 10*1000);
        exit(-1);
    }
    return 0;
}