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
/* ===================================================================== */
/*! @file
 * Insert probe to routine that causes exception in probed bytes.
 */

#include <stdio.h>
#include <string>

#include "pin.H"

namespace WND
{
#include <windows.h>
}

typedef VOID (WINAPI * rtl_leave_critical_section_call_t)(__inout WND::LPCRITICAL_SECTION lpCriticalSection);

void (*g_RtlLeaveCriticalSection_ptr)(void);

__declspec(noinline) int GenerateStackOverflow()
{
    volatile int arr[0x10000000];
    arr[9] = 10;
    return arr[9];
}

VOID WINAPI RtlLeaveCriticalSection_ver0(__inout WND::LPCRITICAL_SECTION lpCriticalSection)
{
    if (lpCriticalSection == NULL)
    {
        int* ptr = reinterpret_cast<int*>(0x0);
        __try
        {
            // this will cause an exception
            *ptr = 17;
        }
        __except(EXCEPTION_EXECUTE_HANDLER)
        {
            printf("Exception in RtlLeaveCriticalSection replacement routine\n");
        }

        __try
        {
            volatile int i  = GenerateStackOverflow();
        }
        __except(EXCEPTION_EXECUTE_HANDLER)
        {
            if(_resetstkoflw())
            {
                printf("Stack-Overflow in RtlLeaveCriticalSection replacement routine\n");
            }
        }
    }

    return (*(rtl_leave_critical_section_call_t)g_RtlLeaveCriticalSection_ptr)(lpCriticalSection);
}

static const char* extract_mod_name_with_ext(const char* full)
{
    const char *slash = NULL;
    char *module_name = NULL;

    slash = strrchr(full, '\\');

    if (slash)
    {
        module_name = _strlwr(_strdup(++slash));
    }
    else
    {
        module_name = _strlwr(_strdup(full));
    }

    return module_name;
}

static VOID instrument_module(IMG img, VOID *data)
{
    const char *module_name = extract_mod_name_with_ext(IMG_Name(img).c_str());

    if (strcmp(module_name, "ntdll.dll") == 0)
    {
        RTN routine = RTN_FindByName(img, "RtlLeaveCriticalSection");

        if (RTN_Valid(routine))
        {
            g_RtlLeaveCriticalSection_ptr = RTN_ReplaceProbed(routine, (AFUNPTR)(RtlLeaveCriticalSection_ver0));
        }

        free((void *)(module_name));
    }
}

static VOID on_module_loading(IMG img, VOID *data)
{
    unsigned long origAttrs = 0;

    if (IMG_Valid(img))
    {
        if (!IMG_IsMainExecutable(img))
        {
            instrument_module(img, data);
        }
    }
}

int main(int argc, char** argv)
{
    PIN_InitSymbolsAlt(EXPORT_SYMBOLS);

    if (!PIN_Init(argc, argv))
    {
        IMG_AddInstrumentFunction(on_module_loading,  0);

        PIN_StartProbedProgram();
    }

    exit(1);
}
