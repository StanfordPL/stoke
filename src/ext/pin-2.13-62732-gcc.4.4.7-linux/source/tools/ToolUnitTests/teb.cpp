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
#include <string>
#include <iostream>
using namespace std;

namespace WINDOWS
{
    #include <windows.h>
}

//=======================================================================
// This is a tool that instruments the GetLastError() function and changes
// TEB.LastErrorValue. This change should not be seen in the application.
//
// Also this tool uses very big automatic variables in order to verify that
// pin handles stack bounds in TEB correctly.
//=======================================================================

// Address of the GetLastError API.
ADDRINT pfnGetLastError = 0; 


typedef UINT64 COUNTER;
const UINT32 MAX_INDEX = 8000; 
const UINT32 VECT_SIZE = 4; 

struct CSTATS
{
    CSTATS() 
    {
        memset(counters, 0, sizeof(COUNTER)*MAX_INDEX);
    }
    COUNTER counters[MAX_INDEX];
};

// very big static object initialized before main()
vector<CSTATS> MyGlobalVect(VECT_SIZE); 

//=======================================================================
// 
VOID InGetLastError()
{
    static BOOL first = TRUE;
    if (first)
    {
        cout << "In GetLastError" << endl;
        // test very big variables on stack
        first = FALSE;
        vector<CSTATS> myVect(VECT_SIZE); 
        myVect[0].counters[0] = 1;
        MyGlobalVect = myVect;

        CSTATS myStat;
        myStat.counters[0] = 2;
        MyGlobalVect[1] = myStat;
    }
    // Change TEB.LastErrorValue to something different from 777
    WINDOWS::SetLastError(999);
}

//=======================================================================
// This function is called for every instruction and instruments the 
// GetLastError() function
VOID Instruction(INS ins, VOID *v)
{
    if (INS_Address(ins) == pfnGetLastError)
    {
        INS_InsertCall(ins, IPOINT_BEFORE, AFUNPTR(InGetLastError), IARG_END);
    }
}

//=======================================================================
int main(int argc, CHAR *argv[])
{
    pfnGetLastError = (ADDRINT)WINDOWS::GetProcAddress(
                               WINDOWS::GetModuleHandle("kernel32.dll"), "GetLastError");
    PIN_Init( argc, argv );
    INS_AddInstrumentFunction(Instruction, 0);
    PIN_StartProgram();
    
    return 0;
}

