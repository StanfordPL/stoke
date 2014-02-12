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

/*! @file
 *  Implementation of the memory management API in Windows. 
 */
#include "sys_memory.h"
#include <windows.h>

/*!
 *  Given a MEM_PROTECTION attribute, return corresponding Windows protection flag. 
 */
static DWORD SysProtection(MEM_PROTECTION protect)
{
    switch (protect)
    {
        case MEM_READ_EXEC:
            return PAGE_EXECUTE_READ;
        case MEM_READ_WRITE_EXEC:
            return PAGE_EXECUTE_READWRITE;
        default:
            return PAGE_NOACCESS;
    }
}

/*!
 *  Implementation of the memory management API. 
 */
size_t GetPageSize()
{
    SYSTEM_INFO sysInfo;
    GetSystemInfo(&sysInfo);
    return (size_t)(sysInfo.dwPageSize);
}

void * MemAlloc(size_t size, MEM_PROTECTION protect)
{
    return VirtualAlloc(0, size, MEM_COMMIT, SysProtection(protect));
}

void MemFree(void * addr, size_t size)
{
    VirtualFree(addr, 0, MEM_RELEASE);
}

BOOL MemProtect(void * addr, size_t size, MEM_PROTECTION protect)
{
    DWORD oldProtect;
    return VirtualProtect(addr, size, SysProtection(protect), &oldProtect);
}

/* ===================================================================== */
/* eof */
/* ===================================================================== */
