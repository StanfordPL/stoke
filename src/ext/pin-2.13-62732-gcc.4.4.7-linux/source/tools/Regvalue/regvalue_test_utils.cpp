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
#include <vector>
#include "regvalue_test_utils.h"
#include "regvalues.h"

using std::map;
using std::vector;

// In this file, we refer to the Active Register Set (ARS) as the set of registers being tested in a specific test run.
// The set is a subset of the TestReg enum (defined in the RegisterDB class below). It is defined by the knobs:
// KnobTestSt, KnobTestPartial and KnobTestSIMD.


/////////////////////
// TYPE DEFINITIONS
/////////////////////

class RegisterDB
{
public:
    // API FUNCTIONS

    static inline RegisterDB* Instance();
    inline const vector<REG>& GetTestRegs() const;
    inline const REGSET& GetTestRegset() const;
    void PrintStoredRegisters(ostream& ost) const;
    inline UINT8* GetRegval(REG reg);
    inline const UINT8* GetAppRegisterValue(REG reg) const;
    inline const UINT8* GetToolRegisterValue(REG reg) const;

private:
    // TYPE DEFINITIONS

    // Registers to check:
    //
    // This is an enumeration of the complete set of test registers. The tested subset is defined by the knobs:
    // KnobTestSt, KnobTestPartial and KnobTestSIMD.
    // To obtain the tested subset, use the GetTestRegs() and/or GetTestRegset() functions.
    enum TestReg {
        GPRREG = 0,
    #if defined(TARGET_IA32E) || defined(TARGET_MIC)
        GPR32REG,
    #endif
        GPR16REG,
        GPRLREG,
        GPRHREG,
        STREG,
    #ifdef TARGET_MIC
        ZMMREG,
        KREG,
    #else
        XMMREG,
        YMMREG,
    #endif // not TARGET_MIC
        TESTREGSIZE
    };

private:
    // DATA FIELDS

    static RegisterDB* _theInstance;

    vector<REG> _testRegs;  // A vector of all the ARS REGs.
    REGSET _testRegset;     // A REGSET of all the ARS REGs.
    int _numOfTestRegs;     // The number of registers in the ARS.

    // REG -> TestReg mapping. Contains only the registers in the ARS.
    map<REG, TestReg> _regToTestReg;

    // REG -> Value saved by the tool. Contains only the registers in the ARS.
    //
    // Usage:
    // The application register values will be stored in the _regvalMap map by the tools.
    // They will be stored and printed before and after the application changes them.
    // In addition, after the application changes the registers, the values will be
    // compared to the expected values, obtained using the _GetAppRegisterValue() function.
    map<REG, UINT8*> _regvalMap;

private:
    inline RegisterDB();

    // DISABLED FUNCTIONS
    inline RegisterDB(const RegisterDB& src) { assert(false); } // disable copy constructor
    inline void operator=(const RegisterDB& src) { assert(false); } // disable assignment operator

    // MAPPING FUNCTIONS
    inline REG _GetRegFromTestReg(TestReg testReg) const;
    inline const UINT8* _GetAppRegisterValue(REG reg) const;
    inline const UINT8* _GetToolRegisterValue(REG reg) const;

    // UTILITY FUNCTIONS
    inline void Verify(REG reg) const;
    inline void PrintRegval(REG reg, ostream& ost) const;
    void DefineActiveRegister(TestReg testReg);
    void InitializeDB();
};

RegisterDB* RegisterDB::_theInstance = NULL;

RegisterDB* RegisterDB::Instance()
{
    if (_theInstance == NULL)
    {
        _theInstance = new RegisterDB;
    }
    return _theInstance;
}

const vector<REG>& RegisterDB::GetTestRegs() const
{
    return _testRegs;
}

const REGSET& RegisterDB::GetTestRegset() const
{
    return _testRegset;
}

void RegisterDB::PrintStoredRegisters(ostream& ost) const
{
    for (int r = 0; r < _numOfTestRegs; ++r)
    {
        PrintRegval(_testRegs[r], ost);
    }
}

UINT8* RegisterDB::GetRegval(REG reg)
{
    Verify(reg);
    return _regvalMap[reg];
}

const UINT8* RegisterDB::GetAppRegisterValue(REG reg) const
{
    Verify(reg);
    return _GetAppRegisterValue(reg);
}

const UINT8* RegisterDB::GetToolRegisterValue(REG reg) const
{
    Verify(reg);
    return _GetToolRegisterValue(reg);
}

RegisterDB::RegisterDB() : _numOfTestRegs(0)
{
    InitializeDB();
}

REG RegisterDB::_GetRegFromTestReg(TestReg testReg) const
{
    // TestReg -> REG mapping. Contains all the registers in the TestReg enum.
    static REG const testRegToReg[TESTREGSIZE] =
    {
        REG_GBX,
#if defined(TARGET_IA32E) || defined(TARGET_MIC)
        REG_EBX,
#endif
        REG_BX,
        REG_BL,
        REG_BH,
        REG_ST2,
#ifdef TARGET_MIC
        REG_ZMM5,
        REG_K3
#else
        REG_XMM0,
        REG_YMM1
#endif // not TARGET_MIC
    };
    return testRegToReg[testReg];
}

const UINT8* RegisterDB::_GetAppRegisterValue(REG reg) const
{
    // TestReg -> Expected application register value (defined in regvalues.h).
    // Contains all the registers in the TestReg enum.
    static const unsigned char* const appRegisterValues[TESTREGSIZE] =
    {
        gprval,
#if defined(TARGET_IA32E) || defined(TARGET_MIC)
        gpr32val,
#endif
        gpr16val, gprlval, gprhval, stval,
#ifdef TARGET_MIC
        zmmval, kval
#else
        xmmval, ymmval
#endif // not TARGET_MIC
    };
    return reinterpret_cast<const UINT8*>(appRegisterValues[_regToTestReg.find(reg)->second]);
}

const UINT8* RegisterDB::_GetToolRegisterValue(REG reg) const
{
    // TestReg -> Value loaded by the tool (defined in regvalues.h).
    // Contains all the registers in the TestReg enum.
    static const unsigned char* const toolRegisterValues[TESTREGSIZE] =
    {
        tgprval,
#if defined(TARGET_IA32E) || defined(TARGET_MIC)
        tgpr32val,
#endif
        tgpr16val, tgprlval, tgprhval, tstval,
#ifdef TARGET_MIC
        tzmmval, tkval
#else
    txmmval, tymmval
#endif // not TARGET_MIC
    };
    return reinterpret_cast<const UINT8*>(toolRegisterValues[_regToTestReg.find(reg)->second]);
}

void RegisterDB::Verify(REG reg) const
{
    assert(_testRegset.Contains(reg));
}

void RegisterDB::PrintRegval(REG reg, ostream& ost) const
{
    ost << REG_StringShort(reg) << " = " << Val2Str(_regvalMap.find(reg)->second, REG_Size(reg)) << endl << flush;
}

void RegisterDB::DefineActiveRegister(TestReg testReg)
{
    REG reg = _GetRegFromTestReg(testReg);
    _testRegs.push_back(reg);
    _regToTestReg[reg] = testReg;
    REGSET_Insert(_testRegset, reg);

    // This singleton will reside in memory as long as the tool is running. So we don't bother with freeing the
    // memory since the OS will do it when the process terminates.
    _regvalMap[reg] = new UINT8[REG_Size(reg)];
}

void RegisterDB::InitializeDB()
{
    REGSET_Clear(_testRegset);
    DefineActiveRegister(GPRREG); // Always tested
    if (KnobTestPartial.Value())
    {
#if defined(TARGET_IA32E) || defined(TARGET_MIC)
        DefineActiveRegister(GPR32REG);
#endif
        DefineActiveRegister(GPR16REG);
        DefineActiveRegister(GPRLREG);
        DefineActiveRegister(GPRHREG);
    }
    if (KnobTestSt.Value())
    {
        DefineActiveRegister(STREG);
    }
    if (KnobTestSIMD.Value())
    {
#ifdef TARGET_MIC
        DefineActiveRegister(ZMMREG);
        DefineActiveRegister(KREG);
#else
        DefineActiveRegister(XMMREG);
        if (hasAvxSupport)
        {
            DefineActiveRegister(YMMREG);
        }
#endif
    }
    _numOfTestRegs = _testRegs.size();
}


/////////////////////
// GLOBAL VARIABLES
/////////////////////

// A knob for specifying whether x87 fpstate registers should be tested.
KNOB<bool> KnobTestSt(KNOB_MODE_WRITEONCE, "pintool", "test_st", "1",
                      "specify whether x87 fpstate registers should be tested");

// A knob for specifying whether partial registers should be tested.
KNOB<bool> KnobTestPartial(KNOB_MODE_WRITEONCE, "pintool", "test_partial", "1",
                           "specify whether partial registers should be tested");

// A knob for specifying whether the SIMD registers should be tested.
KNOB<bool> KnobTestSIMD(KNOB_MODE_WRITEONCE, "pintool", "test_simd", "1",
                           "specify whether the SIMD registers should be tested");


/////////////////////
// API FUNCTIONS IMPLEMENTATION
/////////////////////

const vector<REG>& GetTestRegs()
{
    return RegisterDB::Instance()->GetTestRegs();
}

const REGSET& GetTestRegset()
{
    return RegisterDB::Instance()->GetTestRegset();
}

void PrintStoredRegisters(ostream& ost)
{
    RegisterDB::Instance()->PrintStoredRegisters(ost);
}

void AssignNewPinRegisterValue(PIN_REGISTER* pinreg, const UINT64* newval, UINT qwords)
{
    static UINT maxQwords = sizeof(PIN_REGISTER) / sizeof(UINT64);
    assert(qwords <= maxQwords);
    for (UINT i = 0; i < qwords; ++i)
    {
        pinreg->qword[i] = newval[i];
    }
}

UINT8* GetRegval(REG reg)
{
    return RegisterDB::Instance()->GetRegval(reg);
}

const UINT8* GetAppRegisterValue(REG reg)
{
    return RegisterDB::Instance()->GetAppRegisterValue(reg);
}

const UINT8* GetToolRegisterValue(REG reg)
{
    return RegisterDB::Instance()->GetToolRegisterValue(reg);
}

bool CheckAllExpectedValues(ostream& ost)
{
    bool success = true;
    const vector<REG>& regs = GetTestRegs();
    int numOfRegs = regs.size();
    for (int r = 0; r < numOfRegs; ++r)
    {
        REG reg = regs[r];
        success &= CompareValues(GetRegval(reg), GetAppRegisterValue(reg), REG_Size(reg), ost);
    }
    return success;
}
