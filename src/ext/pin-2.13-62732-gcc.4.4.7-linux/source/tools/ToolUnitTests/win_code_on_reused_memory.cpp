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
#include <Windows.h>
#include <iostream>
using namespace std;

// This application must be compiled with /INCREMENTAL:NO

// Don't change Function location!
int Return10()
{
    return 10;
}
void EndReturn10()
{
}

int Return20()
{
    return 20;
}
void EndReturn20()
{
}
/////////////////////////////////

typedef int (* FUNCTION_PROTO)();

size_t PtrDiff(const VOID * ptr1, const VOID * ptr2)
{
    return (reinterpret_cast<const char *>(ptr1) - reinterpret_cast<const char *>(ptr2));
}

int main()
{
    size_t functionSize1 = PtrDiff((const VOID *)EndReturn10, 
                                       (const VOID *)Return10);
    size_t functionSize2 = PtrDiff((const VOID *)EndReturn20, 
                                        (const VOID *)Return20);
    size_t allocationSize = max(functionSize1, functionSize2);
    LPVOID address = VirtualAlloc(NULL, allocationSize, MEM_RESERVE, PAGE_EXECUTE_READWRITE );
    if(address == NULL)
    {
        cout << "Failed to reserve memory" << endl;
        exit(0);
    }    
    
    // First
    {   
        LPVOID address1 = VirtualAlloc(address, allocationSize, MEM_COMMIT, PAGE_EXECUTE_READWRITE );
        if(address1 == NULL || address1 != address)
        {
            cout << "Failed to commit memory at first" << endl;
            exit(0);
        }
        memcpy(address1, (const VOID *)Return10, functionSize1);
        FUNCTION_PROTO pReturn10 = (FUNCTION_PROTO)address1;
        cout << "First function return value = " << pReturn10() << endl;
        VirtualFree(address1, allocationSize, MEM_DECOMMIT);
    }

    // Second
    {
        LPVOID address2 = VirtualAlloc(address, allocationSize, MEM_COMMIT, PAGE_EXECUTE_READWRITE );
        if(address2 == NULL || address2 != address)
        {
            cout << "Failed to commit memory at second" << endl;
            exit(0);
        }
        memcpy(address2, (const VOID *)Return20, functionSize2);
        FUNCTION_PROTO pReturn20 = (FUNCTION_PROTO)address2;
        cout <<  "Second function return value = " << pReturn20() << endl;
        VirtualFree(address2, allocationSize, MEM_DECOMMIT);
    }

    VirtualFree(address, 0x0, MEM_RELEASE);
    return 0;
}





