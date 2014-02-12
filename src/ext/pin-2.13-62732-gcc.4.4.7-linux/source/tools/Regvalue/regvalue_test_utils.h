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
#ifndef REGVALUE_TEST_UTILS_H
#define REGVALUE_TEST_UTILS_H


/////////////////////
// INCLUDES
/////////////////////

#include "pin.H"
#include "../Utils/regvalue_utils.h"


/////////////////////
// GLOBAL VARIABLES
/////////////////////

// A knob for specifying whether x87 fpstate registers should be tested.
extern KNOB<bool> KnobTestSt;

// A knob for specifying whether partial registers should be tested.
extern KNOB<bool> KnobTestPartial;

// A knob for specifying whether the SIMD registers should be tested.
extern KNOB<bool> KnobTestSIMD;


/////////////////////
// FUNCTION DECLARATIONS
/////////////////////

///// Register Operations

// Get a vector with all the tested registers.
const vector<REG>& GetTestRegs();

// Get a REGSET with all the tested registers.
const REGSET& GetTestRegset();

// Print all the tested registers.
void PrintStoredRegisters(ostream& ost);

// Assign a PIN_REGISTER with a new value.
void AssignNewPinRegisterValue(PIN_REGISTER* pinreg, const UINT64* newval, UINT qwords);

///// Value Queries

// Each tested register is stored in this utilities library. This function retrieves a pointer to it.
UINT8* GetRegval(REG reg);

// Get the expected value for a tested register. This is the value that the application assigns in the
// ChangeRegs function. These values are defined in regvalues.h.
const UINT8* GetAppRegisterValue(REG Reg);

// Get the tool assigned value for a tested register. These values are defined in regvalues.h.
const UINT8* GetToolRegisterValue(REG reg);

///// Test Logic

// Compare the stored values of all the tested registers (see the GetTestRegs() function above) with the expected
// application values defined in regvalues.h.
bool CheckAllExpectedValues(ostream& ost);

#endif // REGVALUE_TEST_UTILS_H
