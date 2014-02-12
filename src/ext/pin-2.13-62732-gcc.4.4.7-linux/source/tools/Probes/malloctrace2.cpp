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
/*
  @ORIGINAL_AUTHOR: Robert Cohn, Elena Demikhovsky
*/

/* ===================================================================== */
/*! @file
 The test shows how wrappers may be implemented in DLL loaded in runtime.
 The dopen() is being called from application space. But it can't be called 
 before libc is initialized.
 In this example I call dlopen before main().
 */

#include "pin.H"
#include <iostream>
#include <fstream>
#include <dlfcn.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>


using namespace std;


/* ===================================================================== */
/* Commandline Switches */
/* ===================================================================== */

KNOB<string> KnobOutputFile(KNOB_MODE_WRITEONCE, "pintool",
    "o", "malloctrace2.outfile", "specify trace file name");

/* ===================================================================== */

INT32 Usage()
{
    cerr <<
        "This pin tool inserts a user-written version of malloc() and free() into the application.\n"
        "\n";
    cerr << KNOB_BASE::StringKnobSummary();
    cerr << endl;
    return -1;
}


/* ===================================================================== */
/* Definitions for Probe mode */
/* ===================================================================== */

typedef typeof(malloc) * MallocType;
typedef typeof(free) * FreeType;
typedef typeof(dlopen) * DlopenType;
typedef typeof(dlsym) * DlsymType;

MallocType MallocWrapper = 0;
MallocType origMalloc = 0;

FreeType FreeWrapper = 0;
FreeType origFree = 0;

void * MallocTraceHandle = 0;

DlopenType AppDlopen = 0;
DlsymType AppDlsym = 0;

typedef VOID (*SET_ORIG_FPTR)(MallocType mallocPtr, FreeType freePtr);

/* ===================================================================== */
/* Probe mode tool */
/* ===================================================================== */

VOID *MallocWrapperInTool(size_t size)
{
    if (MallocWrapper)
    {
        return (*MallocWrapper)(size);
    }
    else
    {
        ASSERTX(origMalloc != 0);
        return (*origMalloc)(size);
    }
}

VOID FreeWrapperInTool(void *p)
{
    if (FreeWrapper)
    {
        (*FreeWrapper)(p);
    }
    else
    {
        ASSERTX(origFree != 0);
        (*origFree)(p);
    }
}

/* I'm calling dlopen before main.
 * Some malloc-free may be lost, of course.
 * But the earliest point you can call dlopen is after init of libc
 */
VOID MainRtnCallback()
{
    cout << "In main callback" << endl;
    // inject libmallocwrappers.so into application by executing application dlopen

    MallocTraceHandle = AppDlopen("libmallocwrappers.so", RTLD_LAZY);
    ASSERTX(MallocTraceHandle);

    // Get function pointers for the wrappers
    MallocWrapper = MallocType(AppDlsym(MallocTraceHandle, "mallocWrapper"));
    FreeWrapper = FreeType(AppDlsym(MallocTraceHandle, "freeWrapper"));
    ASSERTX(MallocWrapper && FreeWrapper);

    // Send original function pointers to libmallocwrappers.so
    SET_ORIG_FPTR setOriginalFptr = (SET_ORIG_FPTR) AppDlsym(MallocTraceHandle, "SetOriginalFptr");
    ASSERTX(setOriginalFptr != 0);
    (*setOriginalFptr)(origMalloc, origFree);
}

VOID ImageLoad(IMG img, VOID *v)
{
    if (strstr(IMG_Name(img).c_str(), "libdl.so"))
    {
        // Get the function pointer for the application dlopen:
        // dlopen@@GLIBC_2.1 is the official, versioned name.
        // 
        // The exact suffix must match the ABI of the libdl header files
        // this source code gets compiled against. Makefile/configure
        // trickery would be needed to figure this suffix out, so it
        // is simply hard-coded here.
        //
        // To keep the resulting binaries compatible with future libdl.so
        // versions, this code also checks for backwards compatibility
        // versions of the calls as they would be provided in such a
        // future version.
        
#if defined(TARGET_IA32E)
# define DLOPEN_VERSION "GLIBC_2.2.5"
# define DLSYM_VERSION "GLIBC_2.2.5"
#elif defined(TARGET_IA32)
# define DLOPEN_VERSION "GLIBC_2.1"
# define DLSYM_VERSION "GLIBC_2.0"
#else
# error symbol versions unknown for this target
#endif
            
        RTN dlopenRtn = RTN_FindByName(img, "dlopen@@" DLOPEN_VERSION);
        if (!RTN_Valid(dlopenRtn)) 
        {
            dlopenRtn = RTN_FindByName(img, "dlopen@" DLOPEN_VERSION);
        }

        if (!RTN_Valid(dlopenRtn)) 
        {
            // fallback for the cases in which symbols do not have a version
            dlopenRtn = RTN_FindByName(img, "dlopen");
        }
        
        ASSERTX(RTN_Valid(dlopenRtn));
        AppDlopen = DlopenType(RTN_Funptr(dlopenRtn));
        
        // Get the function pointer for the application dlsym
        RTN dlsymRtn = RTN_FindByName(img, "dlsym@@" DLSYM_VERSION);
        if (!RTN_Valid(dlsymRtn)) {
            dlsymRtn = RTN_FindByName(img, "dlsym@" DLSYM_VERSION);
        }
        if (!RTN_Valid(dlsymRtn)) {
            // fallback for the cases in which symbols do not have a version
            dlsymRtn = RTN_FindByName(img, "dlsym");
        }
        
        ASSERTX(RTN_Valid(dlsymRtn));
        AppDlsym = DlsymType(RTN_Funptr(dlsymRtn));

        
    }

    if (strstr(IMG_Name(img).c_str(), "libc.so"))
    {
        // Replace malloc and free in application libc with wrappers in libmallocwrappers.so
        RTN mallocRtn = RTN_FindByName(img, "malloc");
        ASSERTX(RTN_Valid(mallocRtn));

        if ( ! RTN_IsSafeForProbedReplacement( mallocRtn ) )
        {
            cout << "Cannot replace malloc in " << IMG_Name(img) << endl;
            exit(1);
        }
        RTN freeRtn = RTN_FindByName(img, "free");
        ASSERTX(RTN_Valid(freeRtn));

        if ( ! RTN_IsSafeForProbedReplacement( freeRtn ) )
        {
            cout << "Cannot replace free in " << IMG_Name(img) << endl;
            exit(1);
        }
        
        origMalloc = (MallocType)RTN_ReplaceProbed(mallocRtn, AFUNPTR(MallocWrapperInTool));
        
        origFree = (FreeType)RTN_ReplaceProbed(freeRtn, AFUNPTR(FreeWrapperInTool));

    }
    
    /* I call dopen before main. If this point is too late for you,
    catch init() of libc and call dlopen after init() is done
    */
    if (IMG_IsMainExecutable(img))
    {
        RTN mainRtn = RTN_FindByName(img, "_main");
        if (!RTN_Valid(mainRtn))
            mainRtn = RTN_FindByName(img, "main");

        if (!RTN_Valid(mainRtn))
        {
            cout << "Can't find the main routine in " << IMG_Name(img) << endl;
            exit(1);
        }
        RTN_InsertCallProbed(mainRtn, IPOINT_BEFORE, AFUNPTR(MainRtnCallback), IARG_END);
    }
}

                    

/* ===================================================================== */
/* main */
/* ===================================================================== */

int main(int argc, CHAR *argv[])
{
    PIN_InitSymbols();
    
    if( PIN_Init(argc,argv) )
    {
        return Usage();
    }
    
    IMG_AddInstrumentFunction(ImageLoad, 0);
        
    PIN_StartProgramProbed();
    
    return 0;
}

/* ===================================================================== */
/* eof */
/* ===================================================================== */
