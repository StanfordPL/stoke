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
 * See "syncasyncapp.c" for a description of this test.
 */

#include <iostream>
#include <stdlib.h>
#include "pin.H"


static void InstrumentImage(IMG, VOID *);
static void AtSegv();
static void AtApplicationEnd(INT32, VOID *);

static int ExecuteCount = 0;


int main(int argc, char * argv[])
{
    PIN_Init(argc, argv);

    PIN_InitSymbols();
    IMG_AddInstrumentFunction(InstrumentImage, 0);
    PIN_AddFiniFunction(AtApplicationEnd, 0);
    PIN_StartProgram();
    return 0;
}


static void InstrumentImage(IMG img, VOID *dummy)
{
#if defined(TARGET_MAC)
    RTN rtn = RTN_FindByName(img, "_MakeSegv");
#else
    RTN rtn = RTN_FindByName(img, "MakeSegv");
#endif
    if (RTN_Valid(rtn))
    {
        RTN_Open(rtn);
        INS first = RTN_InsHead(rtn);
        if (INS_Valid(first))
            INS_InsertCall(first, IPOINT_BEFORE, (AFUNPTR)AtSegv, IARG_END);
        RTN_Close(rtn);
    }
}


static void AtSegv()
{
    // Sanity check to make sure the tool really instruments something.
    //
    ExecuteCount++;

    // Just eat up time here.  Our goal is to delay long enough to ensure that the
    // application's VTALRM signal get delivered.
    //
    unsigned long val = 123456789;
    for (unsigned long i = 1;  i < 100000000;  i++)
        val = val / i + i;

    volatile unsigned long useResult __attribute__ ((unused)) = val;
}


static void AtApplicationEnd(INT32 code, VOID *dummy)
{
    if (ExecuteCount != 1)
    {
        cerr << "Test did not find MakeSegv() (count = " << ExecuteCount << ")\n";
        exit(1);
    }
}
