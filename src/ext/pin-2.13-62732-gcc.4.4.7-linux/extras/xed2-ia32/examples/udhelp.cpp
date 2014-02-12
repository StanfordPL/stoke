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
#include "udhelp.H"
#include <stdio.h>
extern "C" {
#include "xed-interface.h"
#include "xed-examples-util.h" // xed_strdup
}
#include <process.h>
#include <windows.h>
#include <io.h>
#include <cstring>
#include <cstdio>
#include <cassert>

#if defined(XED_USING_DEBUG_HELP)
BOOL CALLBACK dbg_help_client_t::enum_modules(
    LPSTR   ModuleName, 
    DWORD64 BaseOfDll,  
    PVOID   UserContext )
{
    dbg_help_client_t* pthis = (dbg_help_client_t*)UserContext;
    //printf("MODULE %08llx %s\n", BaseOfDll, ModuleName);
    pthis->gBaseOfDll = BaseOfDll;
    pthis->gModule=ModuleName;
    return TRUE;
}




BOOL CALLBACK dbg_help_client_t::enum_sym( 
    PSYMBOL_INFO pSymInfo,   
    ULONG SymbolSize,      
    PVOID UserContext)
{
    dbg_help_client_t* pthis = (dbg_help_client_t*)UserContext;

    //printf("SYMBOL %08llx  %s\n", pSymInfo->Address,  pSymInfo->Name);
    pthis->sym_tab.gtab.smap[static_cast<xed_uint64_t>(pSymInfo->Address)] = 
                  xed_strdup(pSymInfo->Name);
    return TRUE;
    (void)SymbolSize; //pacify compiler warning about unused param
}


dbg_help_client_t::dbg_help_client_t() {
    initialized=false;
}


char* find_base_path(char* driver_name) {
    char* x;
    char* path = xed_strdup(driver_name);
    x = strrchr(path,'\\');
    if (x) {
        *x = 0;
    }
    else {
        x = strrchr(path,'/');
        if (x) {
            *x = 0;
        }
        else { 
            /* FIXME */
        }
    }
    return path;
}

static char* append3(const char* s1, const char* s2, const char* s3) {
    xed_uint_t  n = 1;
    char* p = 0;
    if (s1)    n += xed_strlen(s1);
    if (s2)    n += xed_strlen(s2);
    if (s3)    n += xed_strlen(s3);
    p = (char*) malloc(sizeof(char)*n);
    if (s1) n=xed_strncpy(p,s1,n);
    if (s2) n=xed_strncat(p,s2,n);
    if (s3) n=xed_strncat(p,s3,n);
    return p;
}




typedef union {
  short a[2];
  int   i;
} union16_t;

void get_dll_version(char* file_name, short u[4]) {
    VS_FIXEDFILEINFO* vsf;
    DWORD verlen, error, handle;
    UINT len;
    BOOL ret;
    char* ver;

    verlen = GetFileVersionInfoSize(file_name,&handle);
    if (verlen == 0)  {
        error = GetLastError();
        printf("GetFileVersionInfoSize: error code was %d (0x%x)\n", 
               error, error);
        exit(1);
    }

    ver = new char[verlen];
    ret = GetFileVersionInfo(file_name,handle,verlen,ver);
    if (!ret)  {
        error = GetLastError();
        printf("GetFileVersionInfo: error code was %d (0x%x)\n", error, error);
        exit(1);
    }
   
    // get a pointer to a location in ver stored in vsf
    ret = VerQueryValue(ver,"\\",(LPVOID*)&vsf,&len);
    if (!ret)  {
        error = GetLastError();
        printf("VerQueryValue: error code was %d (0x%x)\n", error, error);
        exit(1);
    }
    assert(len == sizeof(VS_FIXEDFILEINFO));

    union16_t upper,lower;
    upper.i = vsf->dwFileVersionMS;
    lower.i = vsf->dwFileVersionLS;
    u[0] = upper.a[1];
    u[1] = upper.a[0];
    u[2] = lower.a[1];
    u[3] = lower.a[0];

    delete[] ver;
}


 
int validate_version(char* fn) 
{
   int i;
   short u[4];

   // minimum required version
   short r[4] = { 6, 9, 3, 113};

   get_dll_version(fn,u);
   printf("# dbghelp.dll version %d.%d.%d.%d\n", 
          u[0], u[1],u[2],u[3]);

   for(i=0;i<4;i++) {
      if (u[i] > r[i]) 
         break;
      else if (u[i] < r[i]) 
         return 1;
   }
   return 0;
}


int dbg_help_client_t::init(char* path) {
    DWORD64 dwBaseAddr=0;

    int chars;
    char exe_path[MAX_PATH];
    chars = GetModuleFileName(NULL, exe_path, MAX_PATH);
    if (chars == 0) { 
        fprintf(stderr,"Could not find base path for XED executable\n");
        fflush(stderr);
        exit(1);
    }
    //fprintf(stderr,"EXE PATH %s\n", exe_path);
    char* dir = find_base_path(exe_path);
    //fprintf(stderr,"DIR      %s\n", dir);

    char* dbghelp = append3(dir,"\\","dbghelp.dll");
    //fprintf(stderr,"DBGHLP   %s\n", dbghelp);

    if (_access_s(dbghelp,4) != 0) {
        //fprintf(stderr,
        //    "WARNING: Could not find dbghelp.dll in xed.exe directory\n");
        //fflush(stderr);
        return 0;
    }    
    //fprintf(stderr,"FOUND DBGHELP\n");

    if (validate_version(dbghelp)) {
        fprintf(stderr,
            "WARNING: dbghelp.dll version is too old\n");
        fflush(stderr);
        return 0;
    }


    //FIXME: Add a version check for the dll ( ImagehlpApiVersion is NOT
    //the right thing)
        
    SymSetOptions(SYMOPT_UNDNAME | SYMOPT_DEFERRED_LOADS);
    hProcess = GetCurrentProcess();
    
    if (SymInitialize(hProcess, NULL, FALSE))     {
        // nothing
    }
    else    {
        error = GetLastError();
        fprintf(stderr,"SymInitialize returned error : %d 0x%x\n",
                error, error);
        fflush(stderr);
        return 0;
    }


    actual_base = SymLoadModuleEx(hProcess, NULL, path, NULL, 
                                  dwBaseAddr, 0, NULL, 0);
    if (actual_base) {
        // nothing
    }
    else    {
        error = GetLastError();
        fprintf(stderr,"SymLoadModuleEx returned error : %d 0x%x\n", 
                error, error);
        fflush(stderr);
        return 0;
    }


    if (SymEnumerateModules64(hProcess, 
                        (PSYM_ENUMMODULES_CALLBACK64)enum_modules, this)) {
        // nothing
    }
    else    {
        error = GetLastError();
        fprintf(stderr,"SymEnumerateModules64 returned error : %d 0x%x\n",
               error, error);
        fflush(stderr);
        return 0;
    }

    if (SymEnumSymbols(hProcess, actual_base, 0, enum_sym, this))    {
        // nothing
    }
    else    {
        error = GetLastError();
        fprintf(stderr,"SymEnumSymbols failed: %d 0x%x\n", error, error);
        fflush(stderr);
        return 0;
    }

    make_symbol_vector(&sym_tab);
    initialized = true;
    return 1;
}

bool dbg_help_client_t::get_symbol(DWORD64 address, char* symbol_name, 
                                   int sym_name_buflen, DWORD64* offset) 
{
    DWORD64  displacement;
    ULONG64 n = (sizeof(SYMBOL_INFO) +
                 sym_name_buflen*sizeof(TCHAR) +
                 sizeof(ULONG64) - 1) / sizeof(ULONG64);
    ULONG64* buffer = new ULONG64[n];
    PSYMBOL_INFO pSymbol = (PSYMBOL_INFO)buffer;
            
    pSymbol->SizeOfStruct = sizeof(SYMBOL_INFO);
    pSymbol->MaxNameLen = sym_name_buflen;
    
    if (SymFromAddr(hProcess, address, &displacement, pSymbol))    {
        if (offset)
            *offset = displacement;
        if (offset  || displacement == 0) {
            //printf("Name is [%s]\n", pSymbol->Name);
            xed_strncpy(symbol_name, pSymbol->Name, sym_name_buflen);
            // force a null. WINDOWS doesn't have strlcpy()
            symbol_name[sym_name_buflen-1] = 0; 
            delete [] buffer;
            return 0;
        }
        else {
            /* not at the beginning of a symbol and no offset was supplied */
            /* printf("Ignoring. Not at the beginning of a symbol [%s]\n",
             * pSymbol->Name); */
            delete [] buffer;
            return 1;
        }
    }
    else    {
        error = GetLastError();
        printf("SymFromAddr returned error : %d 0x%x for address %llx\n", 
               error, error, address);
        delete [] buffer;
        return 1;
    }
}

bool dbg_help_client_t::cleanup() {
    if (SymCleanup(hProcess))    {
        return 0;
    }
    else    {
        error = GetLastError();
        printf("SymCleanup returned error : %d 0x%x\n", error,error);
        return 1;
    }
}
#endif
