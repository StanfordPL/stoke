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
 * This tool is meant to be run on the "resetsegv.c" application.  It tests
 * that PIN_SafeCopy() works even if the application sets up a SEGV handler
 * with SA_RESETHAND.
 */

#include <iostream>
#include <cstdlib>
#include "pin.H"

static VOID OnImage(IMG, VOID *);
static VOID DoSafeCopy();
static void OnExit(INT32, VOID *);


int main(int argc, char * argv[])
{
    PIN_Init(argc, argv);
    PIN_InitSymbols();

    IMG_AddInstrumentFunction(OnImage, 0);
    PIN_AddFiniFunction(OnExit, 0);

    PIN_StartProgram();
    return 0;
}

static VOID OnImage(IMG img, VOID *)
{
#if defined(TARGET_MAC)
    RTN rtn = RTN_FindByName(img, "_MakeSegv");
#else
    RTN rtn = RTN_FindByName(img, "MakeSegv");
#endif
    if (RTN_Valid(rtn))
    {
        RTN_Open(rtn);
        RTN_InsertCall(rtn, IPOINT_BEFORE, AFUNPTR(DoSafeCopy), IARG_END);
        RTN_Close(rtn);
    }
}

static VOID DoSafeCopy()
{
    // Before the bug was fixed in Pin, the first SafeCopy() would work, but would
    // reset the internal SEGV handler (because of SA_RESETHAND).  This caused the
    // second SafeCopy() to fail.  That's why we call SafeCopy() twice.
    //
    int word;
    size_t sz = PIN_SafeCopy(&word, 0, sizeof(word));
    if (sz != 0)
    {
        std::cerr << "SafeCopy should fail (1)\n";
        std::exit(1);
    }
    sz = PIN_SafeCopy(&word, 0, sizeof(word));
    if (sz != 0)
    {
        std::cerr << "SafeCopy should fail (2)\n";
        std::exit(1);
    }
    std::exit(0);
}

static VOID OnExit(INT32, VOID *)
{
    std::cerr << "Did not attempt SafeCopy\n";
    std::exit(1);
}
