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
//
// This tool replaces three routines that have different types
// of ip-relative instructions to ensure that Pin handles this
// properly.
//

#include "pin.H"
#include <iostream>
using namespace std;

/* ===================================================================== */
/* Global Variables */
/* ===================================================================== */

static void (*pf_iprel_imm)();
static void (*pf_iprel_reg)(int);
static int (*pf_reg_iprel)();


/* ===================================================================== */
/* Replacement Functions */
/* ===================================================================== */

void IprelImmProbe()
{
    if (pf_iprel_imm)
    {
        (pf_iprel_imm)();
    }
}


void IprelRegProbe( int b )
{
    if (pf_iprel_reg)
    {
        (pf_iprel_reg)( b );
    }
}


int RegIprelProbe()
{
    int a=0;

    if (pf_reg_iprel)
    {
        a = (pf_reg_iprel)();
    }
    return a;
}

/* ===================================================================== */

// Called every time a new image is loaded
// Look for routines that we want to probe

VOID ImageLoad(IMG img, VOID *v)
{
    RTN iprelImmRtn = RTN_FindByName(img, "iprel_imm");
    if (RTN_Valid(iprelImmRtn))
    {
        pf_iprel_imm = (void (*)()) RTN_ReplaceProbed(iprelImmRtn,
                                                      AFUNPTR(IprelImmProbe));
        cerr << "Inserted probe for iprel_imm:" << IMG_Name(img) << endl;
    }
    
    RTN iprelRegRtn = RTN_FindByName(img, "iprel_reg");
    if (RTN_Valid(iprelRegRtn))
    {
        pf_iprel_reg = (void (*)(int)) RTN_ReplaceProbed(iprelRegRtn,
                                                         AFUNPTR(IprelRegProbe));
        cerr << "Inserted probe for iprel_reg:" << IMG_Name(img) << endl;
    }

    RTN regIprelRtn = RTN_FindByName(img, "reg_iprel");
    if (RTN_Valid(regIprelRtn))
    {
        pf_reg_iprel = (int (*)()) RTN_ReplaceProbed(regIprelRtn,
                                                     AFUNPTR(RegIprelProbe));
        cerr << "Inserted probe for reg_iprel:" << IMG_Name(img) << endl;
    }
}

/* ===================================================================== */

int main(int argc, CHAR *argv[])
{
    PIN_InitSymbols();

    PIN_Init(argc,argv);

    IMG_AddInstrumentFunction(ImageLoad, 0);
    
    PIN_StartProgramProbed();
    
    return 0;
}

/* ===================================================================== */
/* eof */
/* ===================================================================== */
