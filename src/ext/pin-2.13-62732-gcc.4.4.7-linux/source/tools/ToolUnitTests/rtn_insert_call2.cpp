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
// This tool test RTN_InsHead RTN_InsHeadOnly and RTN_InsertCall (before)


#include <stdio.h>
#include <stdlib.h>
#include "pin.H"

ADDRINT curRtnAddr = 0;
int numAtRtn = 0;
int numBeforeInsHeadOnly = 0;
int numAfterInsHeadOnly = 0;
int numBeforeInsHead = 0;
int numAfterInsHead = 0;
int numRtnsInstrumented = 0;

VOID AtRtn(ADDRINT rtnAddr)
{
    if (curRtnAddr != 0)
    {
        printf ("**** expected rtnAddr to be 0\n");
        exit(-1);
    }
    curRtnAddr = rtnAddr;
    numAtRtn++;
}


VOID BeforeInsHeadOnly(ADDRINT insAddr)
{
    if (curRtnAddr == 0)
    {
        printf ("**** BeforeInsHeadOnly expected curRtnAddr to be non-0\n");
        exit(-1);
    }
    if (curRtnAddr != insAddr)
    {
        printf ("**** BeforeInsHeadOnly got unexpected insAddr\n");
        exit(-1);
    }
    numBeforeInsHeadOnly++;
}

VOID AfterInsHeadOnly(ADDRINT insAddr)
{
    if (curRtnAddr == 0)
    {
        printf ("**** AfterInsHeadOnly expected curRtnAddr to be non-0\n");
        exit(-1);
    }
    if (curRtnAddr != insAddr)
    {
        printf ("**** AfterInsHeadOnly got unexpected insAddr\n");
        exit(-1);
    }
    numAfterInsHeadOnly++;
    curRtnAddr = 0;
}


VOID BeforeInsHead(ADDRINT insAddr)
{
    if (curRtnAddr == 0)
    {
        printf ("**** BeforeInsHead expected curRtnAddr to be non-0\n");
        exit(-1);
    }
    if (curRtnAddr != insAddr)
    {
        printf ("**** BeforeInsHead got unexpected insAddr\n");
        exit(-1);
    }
    numBeforeInsHead++;
}

VOID AfterInsHead(ADDRINT insAddr)
{
    if (curRtnAddr == 0)
    {
        printf ("**** AfterInsHead expected curRtnAddr to be non-0\n");
        exit(-1);
    }
    if (curRtnAddr != insAddr)
    {
        printf ("**** AfterInsHead got unexpected insAddr\n");
        exit(-1);
    }
    numAfterInsHead++;
}



VOID Image(IMG img, void *v)
{
    for (SEC sec = IMG_SecHead(img); SEC_Valid(sec); sec = SEC_Next(sec))
    {
        for (RTN rtn = SEC_RtnHead(sec); RTN_Valid(rtn); rtn = RTN_Next(rtn))
        {
            RTN_Open(rtn);
            INS ins = RTN_InsHead(rtn);
            if (INS_Invalid() == ins)
            {   // no instruction found - assert that RTN_InsHeadOnly(rtn) also doesn't find any INS 
                ASSERTX (INS_Invalid() == RTN_InsHeadOnly(rtn));
                RTN_Close(rtn);
                continue;
            }
            
            if (INS_HasFallThrough(ins))
            {
                fflush (stdout);
                ADDRINT insAddress = INS_Address(ins);
                numRtnsInstrumented++;
                RTN_InsertCall( rtn, IPOINT_BEFORE,  AFUNPTR(AtRtn),            IARG_ADDRINT, RTN_Address(rtn), IARG_END);
                
                INS_InsertCall (ins, IPOINT_BEFORE, AFUNPTR(BeforeInsHead), IARG_ADDRINT, INS_Address(ins), IARG_END);
                INS_InsertCall (ins, IPOINT_AFTER,  AFUNPTR(AfterInsHead),  IARG_ADDRINT, INS_Address(ins), IARG_END);
                ins = RTN_InsHeadOnly(rtn);
                ASSERTX(INS_Invalid() != ins);
                ASSERTX(INS_Address(ins)==insAddress);
                INS_InsertCall (ins, IPOINT_BEFORE, AFUNPTR(BeforeInsHeadOnly),      IARG_ADDRINT, insAddress,      IARG_END);
                INS_InsertCall (ins, IPOINT_AFTER,  AFUNPTR(AfterInsHeadOnly),       IARG_ADDRINT, insAddress,      IARG_END);
            }
            RTN_Close(rtn);
        }
    }
}


VOID Fini (INT32 code, VOID *v)
{
    if (numRtnsInstrumented == 0)
    {
        printf ("***** expected numRtnsInstrumented to be > 0\n");
        exit(-1);
    }
    if (numAtRtn == 0)
    {
        printf ("***** expected numAtRtn to be > 0\n");
        exit(-1);
    }
    if (numAtRtn != numBeforeInsHeadOnly)
    {
        printf ("***** expected numAtRtn == numBeforeInsHeadOnly\n");
        exit(-1);
    }
    if (numAtRtn != numAfterInsHeadOnly)
    {
        printf ("***** expected numAtRtn == numAfterInsHeadOnly\n");
        exit(-1);
    }
    if (numAtRtn != numBeforeInsHead)
    {
        printf ("***** expected numAtRtn == numBeforeInsHead\n");
        exit(-1);
    }
    if (numAtRtn != numAfterInsHead)
    {
        printf ("***** expected numAtRtn == numAfterInsHead\n");
        exit(-1);
    }
}


int main(int argc, char **argv)
{
    PIN_Init(argc, argv);
    PIN_InitSymbols();

    IMG_AddInstrumentFunction(Image, 0);
    PIN_AddFiniFunction(Fini, 0);

    PIN_StartProgram();
    return 0;
}
