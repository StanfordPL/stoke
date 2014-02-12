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
/*! @file
 *  Tool that tests the RTN_CreateAt function.
 * RTN_CreateAt() may be used in Probe mode and in JIT mode for 
 * ahead-of-time (aoti) instrumentation
 *
 * We test the both Probe and JIT mode. We create a routine with  
 * RTN_CreateAt and then (1) replace it and (2) insert a call before 
 * the routine
 */

#include <iostream>
#include <fstream>
#include <string>
#include <cstdlib>
#include "pin.H"

using namespace std;

KNOB<BOOL> RunInProbeMode(KNOB_MODE_WRITEONCE, "pintool", "probe_mode", "0", "Run Pin in probe mode");

void MyReplacement()
{
    cout << "The newly created routine was replaced successfully" << endl;
}

void MyInsertedCall()
{
    cout << "The call was inserted successfully" << endl;
}


/* ===================================================================== */

VOID ImageLoad(IMG img, VOID * v)
{
    BOOL found = FALSE;
    for (SEC sec = IMG_SecHead(img); SEC_Valid(sec); sec = SEC_Next(sec))
    {
        if (SEC_Name(sec) == ".fTable")
        {
            // .fTable section holds 2 addresses of 2 routines
            // The both routines exist, but the symbols should not
            // be in symbol table
            ADDRINT *secAddr = reinterpret_cast <ADDRINT *> (SEC_Address(sec));
            ADDRINT proc1Addr = secAddr[0];
            ADDRINT proc2Addr = secAddr[1];
            
            // 1. Replace Proc1
            RTN rtn = RTN_FindByAddress(proc1Addr);
            if (RTN_Address(rtn) != proc1Addr)
            {
                rtn = RTN_CreateAt(proc1Addr, "Proc1NewRoutine");
                if (!RTN_Valid(rtn))
                {
                    cout << "Can't create a routine " << endl;
                    exit(-1);
                }
                // The routine was created successfully
                
                PROTO proto = PROTO_Allocate(PIN_PARG(int), CALLINGSTD_DEFAULT, "MyReplacement", PIN_PARG_END());  
                if (RunInProbeMode)
                {
                    if (RTN_IsSafeForProbedReplacement(rtn))
                    {
                        RTN_ReplaceSignatureProbed(rtn, AFUNPTR(MyReplacement), IARG_PROTOTYPE, proto, IARG_END);
                    }
                }
                else
                {
                    RTN_ReplaceSignature(rtn, AFUNPTR(MyReplacement), IARG_PROTOTYPE, proto, IARG_END);
                }
            }
            else
            {
                cout << "Proc1: Existing routine has been found at the given address, 0x" << 
                        hex << proc1Addr << ". The new routine will not be created" << endl;
                exit(-1);
            }
            
            // 2. Insert a call before Proc2
            
            rtn = RTN_FindByAddress(proc2Addr);
            if (RTN_Address(rtn) != proc2Addr)
            {
                rtn = RTN_CreateAt(proc2Addr, "Proc2NewRoutine");
                if (!RTN_Valid(rtn))
                {
                    cout << "Can't create a routine " << endl;
                    exit(-1);
                }
                // The routine was created successfully
                
                PROTO proto = PROTO_Allocate(PIN_PARG(int), CALLINGSTD_DEFAULT, "MyInsertedCall", PIN_PARG_END());  
                if (RunInProbeMode)
                {
                    if (RTN_IsSafeForProbedInsertion(rtn))
                    {
                        RTN_InsertCallProbed(rtn, IPOINT_BEFORE, AFUNPTR(MyInsertedCall), IARG_PROTOTYPE, proto, IARG_END);
                    }
                }
                else
                {
                    RTN_Open(rtn);
                    RTN_InsertCall(rtn, IPOINT_BEFORE, AFUNPTR(MyInsertedCall), IARG_PROTOTYPE, proto, IARG_END);
                    RTN_Close(rtn);
                }
            }
            else
            {
                cout << "Proc2: Existing routine has been found at the given address, 0x" << 
                        hex << proc2Addr << ". The new routine will not be created" << endl;
                exit(-1);
            }

            found = TRUE;
            break;
        }
    }
    // Ensure that the new routine can be found inside image
    
    if (found)
    {
        if (!RTN_Valid(RTN_FindByName(img, "Proc1NewRoutine")))
        {
            cout << "The newly created routine is not correctly inserted into the image." << endl;
            exit(-1);
        }
    }
}


int main(INT32 argc, CHAR **argv)
{
    PIN_Init(argc, argv);

    IMG_AddInstrumentFunction(ImageLoad, 0);

    // Never returns
    if (RunInProbeMode)
    {
        cout << "Testing the Probe mode." << endl;
        PIN_StartProgramProbed();
    }
    else
    {
        cout << "Testing the JIT mode." << endl;
        PIN_StartProgram();
    }

    return 0;
}
