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
#include <cassert>
#include <map>
#include "register_modification_utils.h"
#include "context_utils.h"

using std::map;


/////////////////////
// GLOBAL VARIABLES
/////////////////////

// The regvalue_app application stores the register values after the ChangeRegs routine completes.
// The tool can then inspect these values to check whether value replacement was successful.
// This map holds pointers to these stored values.
static map<REG, void*> applicationStoredValues;


/////////////////////
// UTILITY FUNCTIONS
/////////////////////

bool CheckModifiedValues(ostream& ost)
{
    bool success = true;
    const vector<REG>& regs = GetTestRegs();
    int numOfRegs = regs.size();
    for (int r = 0; r < numOfRegs; ++r)
    {
        REG reg = regs[r];
        success &= CompareValues(applicationStoredValues[reg], GetToolRegisterValue(reg), REG_Size(reg), ost);
    }
    return success;
}


/////////////////////
// API FUNCTIONS IMPLEMENTATION
/////////////////////

void CheckToolModifiedValues(CONTEXT * ctxt, void* /* ostream* */ ostptr)
{
    ostream& ost = *((ostream*)ostptr);
    ost << "Context values after being changed" << endl << flush;
    StoreContext(ctxt);
    PrintStoredRegisters(ost);
    if (!CheckModifiedValues(ost))
    {
        ost << "ERROR: values mismatch" << endl << flush;
        PIN_ExitApplication(1); // never returns
    }
}

void ToolSaveAppPointers(void * gprptr, void * stptr, void * fpptr1, void * fpptr2, void* /* ostream* */ ostptr)
{
    const vector<REG>& regs = GetTestRegs();
    int numberOfTestRegs = regs.size();
    for (int r = 0; r < numberOfTestRegs; ++r)
    {
        if (REG_is_gr(regs[r]))
        {
            applicationStoredValues[regs[r]] = gprptr;
        }
        else if (REG_is_st(regs[r]))
        {
            applicationStoredValues[regs[r]] = stptr;
        }
#ifdef TARGET_MIC
        else if (REG_is_zmm(regs[r]))
        {
            applicationStoredValues[regs[r]] = fpptr1;
        }
        else if (REG_is_k_mask(regs[r]))
        {
            applicationStoredValues[regs[r]] = fpptr2;
        }
#endif
        else if (REG_is_xmm(regs[r]))
        {
            applicationStoredValues[regs[r]] = fpptr1;
        }
        else if (REG_is_ymm(regs[r]))
        {
            applicationStoredValues[regs[r]] = fpptr2;
        }
        else
        {
            *((ostream*)ostptr) << "Test configuration includes an invalid register: "
                                << REG_StringShort(regs[r]) << endl;
            PIN_ExitApplication(100);
        }
    }
}
