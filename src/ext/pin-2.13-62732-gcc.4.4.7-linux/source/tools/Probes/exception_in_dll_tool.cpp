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
#include <stdlib.h>

#include "pin.H"

#ifndef TARGET_LINUX
namespace WND
{
#include <windows.h>
}
#endif

typedef void (* foo_t)();

static void foo1_rep(foo_t orig_foo1)
{
	printf("foo1 rep called\n");

	orig_foo1();

}

static void ExcInDll_rep(foo_t orig_func)
{
    printf("ExcInDll rep called\n");

    orig_func();

}

static VOID foo2_before()
{
    printf("foo2 - before called\n");
}

static VOID foo2_after()
{
    printf("foo2 after called\n");

}


static VOID on_module_loading(IMG img, VOID *data)
{
    if (IMG_IsMainExecutable(img))
	{
		RTN routine = RTN_FindByName(img, "foo1");

		if (RTN_Valid(routine) && RTN_IsSafeForProbedReplacement(routine))
		{
            PROTO foo1_proto = PROTO_Allocate( PIN_PARG(void), CALLINGSTD_DEFAULT,
                                             "foo1", PIN_PARG_END() );
            AFUNPTR foo1_ptr = RTN_ReplaceSignatureProbed(routine, (AFUNPTR)foo1_rep,
                IARG_PROTOTYPE, foo1_proto,
                IARG_ORIG_FUNCPTR,
                IARG_END);
            ASSERTX(foo1_ptr != 0);
		}
        
        routine = RTN_FindByName(img, "foo2");
        if (RTN_Valid(routine) && RTN_IsSafeForProbedInsertion(routine))
        {
            PROTO foo2_proto = PROTO_Allocate( PIN_PARG(void), CALLINGSTD_DEFAULT,
                                              "foo2",
                                              PIN_PARG_END() );

            RTN_InsertCallProbed(routine, IPOINT_BEFORE, AFUNPTR( foo2_before ),
                                 IARG_PROTOTYPE, foo2_proto,
                                 IARG_END);

            RTN_InsertCallProbed(routine, IPOINT_AFTER, AFUNPTR( foo2_after ),
                                 IARG_PROTOTYPE, foo2_proto,
                                 IARG_END);
        }
        

	}
    
    else
    {
        RTN routine = RTN_FindByName(img, "ExcInDll");

        if (RTN_Valid(routine) && RTN_IsSafeForProbedReplacement(routine))
        {
            PROTO ExcInDll_proto = PROTO_Allocate( PIN_PARG(void), CALLINGSTD_DEFAULT,
                                              "ExcInDll", PIN_PARG_END() );
            AFUNPTR ExcInDll_ptr = RTN_ReplaceSignatureProbed(routine, (AFUNPTR)ExcInDll_rep,
                    IARG_PROTOTYPE, ExcInDll_proto,
                    IARG_ORIG_FUNCPTR,
                    IARG_END);
            ASSERTX(ExcInDll_ptr != 0);
        }
    }
    
}

int main(int argc, char** argv)
{
    PIN_InitSymbols();

    if (!PIN_Init(argc, argv))
    {
        IMG_AddInstrumentFunction(on_module_loading,  0);        

        PIN_StartProgramProbed();
    }

    exit(1);
}
