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
#include <errno.h>
#include <stdio.h>
#if defined(TARGET_WINDOWS)
#include <cstdio>
#include <cstdlib>
namespace WINDOWS
{
#include <windows.h>
}
#define EXPORT_SYM extern "C" __declspec(dllexport) __declspec(noinline)
#else
#include <sys/mman.h>
#include <unistd.h>
#include <stdlib.h>
#define EXPORT_SYM extern "C"
#endif

enum ExitType {
    RES_SUCCESS = 0,        // 0
    RES_INVALID_ARGS,       // 1
    RES_INVALID_TEST_TYPE   // 2
};

EXPORT_SYM void NotifyPinAfterMmap(const char * addr)
{
    fprintf(stderr, "Allocated %p\n", addr);
}

#if defined(TARGET_WINDOWS)

size_t GetPageSize()
{
    WINDOWS::SYSTEM_INFO sysInfo;
    WINDOWS::GetSystemInfo(&sysInfo);
    return static_cast<size_t>(sysInfo.dwPageSize);
}

const char * MmapWrapperNoMemoryAccess()
{
    return reinterpret_cast<const char *> (WINDOWS::VirtualAlloc(0, GetPageSize(), MEM_COMMIT, PAGE_NOACCESS));
}

const char * MmapWrapperWriteAndReadMemoryAccess()
{
    return reinterpret_cast<const char *> (WINDOWS::VirtualAlloc(0, GetPageSize(), MEM_COMMIT, PAGE_READWRITE));
}

#else

size_t GetPageSize()
{
    return static_cast<size_t>(getpagesize());
}

const char * MmapWrapperNoMemoryAccess()
{
#if defined(TARGET_MAC)
    return reinterpret_cast<const char *> (mmap(0, GetPageSize(),  PROT_NONE, MAP_ANON | MAP_PRIVATE, -1, 0));
#else
   return reinterpret_cast<const char *> (mmap(0, GetPageSize(), PROT_NONE, MAP_ANONYMOUS | MAP_PRIVATE, 0, 0));
#endif
}

const char * MmapWrapperWriteAndReadMemoryAccess()
{
#if defined(TARGET_MAC)
    return reinterpret_cast<const char *> (mmap(0, GetPageSize(), PROT_READ | PROT_WRITE, MAP_ANON | MAP_PRIVATE, -1, 0));
#else
   return reinterpret_cast<const char *> (mmap(0, GetPageSize(), PROT_READ | PROT_WRITE, MAP_ANONYMOUS | MAP_PRIVATE, 0, 0));
#endif
}

#endif


/*
    Expected argv arguments:
    [1] TestType
        1- mmap function is called by the application.
        2- mmap function is called by the tool.
*/
int main(int argc, char * argv[])
{
    if(argc!=2)
    {
#if defined(TARGET_WINDOWS)
       fprintf(stderr, "Invalid number of arguments<%d>, expecting only one\n",argc);
#else
       fprintf(stderr, "Invalid number of arguments %d, expecting only one\n",argc);
#endif
       fflush(stderr);
       exit(RES_INVALID_ARGS);
    }

    switch(atoi(argv[1]))
    {
        case 1:
        {
            const char * ans = MmapWrapperNoMemoryAccess();
            NotifyPinAfterMmap(ans);
            ans = MmapWrapperWriteAndReadMemoryAccess();
            NotifyPinAfterMmap(ans);
            break;
        }
        case 2:
        {
            // do nothing
            break;
        }
        default:
            return RES_INVALID_TEST_TYPE;
    }

    return RES_SUCCESS;
}
