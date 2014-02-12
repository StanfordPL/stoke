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
/*
  This tool validates proper propagation of exception from function being instrumented
  with RTN_InsertCallProbed(routine, IPOINT_AFTER, ...)
  and proper delivery of IARG_RETURN_IP value to IPOINT_AFTER analysis routine.
*/

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


static VOID foo_before(int a0, int a1, int a2, int a3, int a4, int a5, int a6)
{
    printf("result=%d\n", a0 + a1 + a2 + a3 + a4 + a5 + a6);
}

static VOID foo_after(ADDRINT returnIp)
{
	printf("foo after called\n");

    // May not be executed if exception occurs in previous statement
    printf("Caller IP = %s\n", hexstr(returnIp).c_str());
}

#ifdef TARGET_LINUX
#define CALL_TYPE CALLINGSTD_DEFAULT
#else
#if defined(TARGET_IA32E)
#define CALL_TYPE CALLINGSTD_DEFAULT
#else
#define CALL_TYPE CALLINGSTD_REGPARMS
#endif
#endif

static VOID on_module_loading(IMG img, VOID *data)
{
    if (IMG_IsMainExecutable(img))
	{
		RTN routine = RTN_FindByName(img, "foo");
		if (!RTN_Valid(routine))
		{
            routine = RTN_FindByName(img, "@foo@28");
        }

		if (RTN_Valid(routine))
		{
            PROTO foo_proto = PROTO_Allocate( PIN_PARG(int), CALL_TYPE,
                                              "foo",
                                              PIN_PARG(int), PIN_PARG(int),
                                              PIN_PARG(int), PIN_PARG(int),
                                              PIN_PARG(int), PIN_PARG(int),
                                              PIN_PARG(int), PIN_PARG_END() );

            RTN_InsertCallProbed(routine, IPOINT_BEFORE, AFUNPTR( foo_before ),
                IARG_PROTOTYPE, foo_proto,
                IARG_FUNCARG_ENTRYPOINT_VALUE, 6,
                IARG_FUNCARG_ENTRYPOINT_VALUE, 5,
                IARG_FUNCARG_ENTRYPOINT_VALUE, 4,
                IARG_FUNCARG_ENTRYPOINT_VALUE, 3,
                IARG_FUNCARG_ENTRYPOINT_VALUE, 2,
                IARG_FUNCARG_ENTRYPOINT_VALUE, 1,
                IARG_FUNCARG_ENTRYPOINT_VALUE, 0,
                IARG_END);

            RTN_InsertCallProbed(routine, IPOINT_AFTER, AFUNPTR( foo_after ),
                IARG_PROTOTYPE, foo_proto,
                IARG_RETURN_IP,
                IARG_END);
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
