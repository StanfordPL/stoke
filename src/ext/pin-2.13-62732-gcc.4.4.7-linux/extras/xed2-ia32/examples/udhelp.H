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
#if !defined(_UDHELP_H_)
#define _UDHELP_H_

#if defined(_MSC_VER)  && defined(XED_DBGHELP)
// only try to use dbghelp on MSVS8 (2005) or later versions.
# if _MSC_VER >= 1400
#  define XED_USING_DEBUG_HELP
# endif
#endif

#if defined(XED_USING_DEBUG_HELP)
#include <windows.h>
#include <dbghelp.h>
#include "xed-symbol-table.H"

class dbg_help_client_t {

    DWORD  error;
    HANDLE hProcess;
    DWORD  processId;

    DWORD64 gBaseOfDll;
    DWORD64 actual_base;
    char* gModule;

    bool initialized;

    static BOOL CALLBACK enum_modules(
        LPSTR   ModuleName, 
        DWORD64 BaseOfDll,  
        PVOID   UserContext );
    
    static BOOL CALLBACK dbg_help_client_t::enum_sym( 
        PSYMBOL_INFO pSymInfo,   
        ULONG SymbolSize,      
        PVOID UserContext);

    public:

    xed_symbol_table_t sym_tab; // EXPOSED

    dbg_help_client_t();

    // returns 1 on success and 0 on failure. sets "initialized" to true on
    // success
    int init(char* path); 
    bool valid() const  { return initialized; }

    // if offset is nonzero, it will return best-fit symbols. If offset=0
    // then only exact symbols are returned.
    bool get_symbol(DWORD64 address, char* symbol_name, 
                    int sym_name_buflen, DWORD64* offset=0);
    bool cleanup();
};
#endif
#endif
