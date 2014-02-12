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
// Test that probe placed on function close (from libc.so) does not overwrite bytes of the function close_nocancel
#include "pin.H"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
using namespace std;


typedef int (* func_ptr_t)(int);


static AFUNPTR close_orig;


static int close_replacement(int fd)
{
	printf("close_replacement called\n");

	return ((func_ptr_t)close_orig)(fd);
}
    
/*
 * Instrumentation routines
 */

VOID ImageLoad(IMG img, VOID *v)

{
    const char *name = IMG_Name(img).c_str();
    if (!strstr(name, "libc.so"))
    {
        return;
    }
    printf ("image: %s\n", name); 
    
    RTN close_routine = RTN_FindByName(img, "close");
    if (!RTN_Valid(close_routine))
    {
        close_routine = RTN_FindByName(img, "_close");
    }
    RTN close_nocancel_routine = RTN_FindByName(img, "close_nocancel");
    if (!RTN_Valid(close_nocancel_routine))
    {
        close_nocancel_routine = RTN_FindByName(img, "_close_nocancel");
    }
    if (!RTN_Valid(close_nocancel_routine))
    {
        close_nocancel_routine = RTN_FindByName(img, "__close_nocancel");
    }
            

    if (RTN_Valid(close_routine) && RTN_Valid(close_nocancel_routine))
    {
        printf ("  found function close          at %p\n", reinterpret_cast<void *>(RTN_Address(close_routine)));
        printf ("  found function close_nocancel at %p\n", reinterpret_cast<void *>(RTN_Address(close_nocancel_routine)));
        printf ("  placing probe on function close\n");
        unsigned int bytes4Before;
        unsigned int *ptr = reinterpret_cast<unsigned int *>(RTN_Address(close_nocancel_routine));
        bytes4Before = *ptr;
		close_orig = RTN_ReplaceProbed(close_routine, (AFUNPTR)(close_replacement));
        unsigned int bytes4After;
        bytes4After = *ptr;
        if (bytes4After !=  bytes4Before)
        {
            printf ("***Error bytes in function close_noncancel have been overwritten by probe placed on function close\n");
            fflush (stdout);
            exit (1);
        }
    }
}




/* ===================================================================== */
/* Main                                                                  */
/* ===================================================================== */

int main(int argc, char * argv[])
{
    // Initialize pin & symbol manager
    PIN_Init(argc, argv);
    PIN_InitSymbols();

    // Register ImageLoad 
    IMG_AddInstrumentFunction(ImageLoad, 0);
        
    // Start the program, never returns
    PIN_StartProgramProbed();
    
    return 0;
}
/* ===================================================================== */
    
