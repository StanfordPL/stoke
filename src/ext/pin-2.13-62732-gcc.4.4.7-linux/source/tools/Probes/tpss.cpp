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
#include <string>

#include "pin.H"

namespace WND
{
#include <windows.h>
}

typedef WND::HMODULE(WINAPI*tpss_load_library_w_call_t)(WND::LPCWSTR lpLibFileName);

void (*g_LoadLibraryW_ptr)(void);

WND::HMODULE WINAPI tpss_LoadLibraryW_ver0(WND::LPCWSTR lpLibFileName)
{
    return (*(tpss_load_library_w_call_t)g_LoadLibraryW_ptr)(lpLibFileName);
}

static const char* tpss_extract_mod_name_with_ext(const char* full)
{
    const char *slash = NULL;
    char *module_name = NULL;

    if (full)
    {
        slash = strrchr(full, '\\');

        module_name = _strlwr(_strdup(++slash));
    }

    return module_name;
}

static VOID tpss_instrument_module(IMG img, VOID *data)
{
	SYM sym;
	std::string::size_type pos;

    const char *module_name = tpss_extract_mod_name_with_ext(IMG_Name(img).c_str());

    if (strcmp(module_name, "kernel32.dll") == 0)
	{
	    for (sym = IMG_RegsymHead(img); SYM_Valid(sym) == TRUE; sym = SYM_Next(sym))
        {
            /* in case of availablity of symbols for system libraries PIN can provide
             * decorated names so we need to undecorate it first */

            std::string uname(SYM_Name(sym).c_str());

            pos = uname.find("@");

            if (pos != std::string::npos)
            {
                uname = uname.substr(0, pos);

                if (uname[0] == '_')
                {
                    uname = uname.substr(1, std::string::npos);
                }
            }

			if (strcmp("LoadLibraryW", uname.c_str()) == 0) 
			{
                  RTN routine = RTN_FindByName(img, "LoadLibraryW");
		          if (RTN_Valid(routine))
	     	      {
                       g_LoadLibraryW_ptr = RTN_ReplaceProbed(routine, (AFUNPTR)(tpss_LoadLibraryW_ver0));
			      }
			}
		}

        free((void *)(module_name));
    }
}

void (*g_tpss_entry_point)(void);

static VOID tpss_mainStartup(void)
{
	WND::LoadLibraryW(L"dbghelp.dll");

        g_tpss_entry_point();
}

static VOID tpss_on_module_loading(IMG img, VOID *data)
{
    unsigned long origAttrs = 0;

    if (IMG_Valid(img))
    {
        if (IMG_IsMainExecutable(img))
        {
            g_tpss_entry_point =
                           (void(*)())RTN_ReplaceProbed(
                                         RTN_FindByAddress(IMG_Entry(img)),
                                         (AFUNPTR)tpss_mainStartup);
        }
        else
        {
           tpss_instrument_module(img, data);
        }
    }
}

int main(int argc, char** argv)
{
    PIN_InitSymbols();

    if (!PIN_Init(argc, argv))
    {
        IMG_AddInstrumentFunction(tpss_on_module_loading,  0);

        PIN_StartProbedProgram();
    }

    exit(1);
}
