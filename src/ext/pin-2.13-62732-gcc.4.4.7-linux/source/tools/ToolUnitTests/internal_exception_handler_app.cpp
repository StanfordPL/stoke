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
 * This application verifies that pin tool can correctly emulate exceptions on behalf of the application
 */

#include <string>
#include <iostream>
#include <fpieee.h>
#include <excpt.h>
#include <float.h>

#if defined(TARGET_WINDOWS)
#include "windows.h"
#define EXPORT_CSYM extern "C" __declspec( dllexport )
#else
#error Unsupported OS
#endif

using namespace std;


//==========================================================================
// Printing utilities
//==========================================================================
string UnitTestName("internal_exception_handler_app");
string FunctionTestName;

static void StartFunctionTest(const string & functionTestName)
{
    if (FunctionTestName != "")
    {
        cout << UnitTestName << "[" << FunctionTestName  << "] Success" << endl << flush;
    }
    FunctionTestName = functionTestName;
}

static void ExitUnitTest()
{
    if (FunctionTestName != "")
    {
        cout << UnitTestName << "[" << FunctionTestName  << "] Success" << endl << flush;
    }
    cout << UnitTestName << " : Completed successfully" << endl << flush;
    exit(0);
}

static void Abort(const string & msg)
{
    cout << UnitTestName << "[" << FunctionTestName  << "] Failure: " << msg << endl << flush;
    exit(1);
}

//==========================================================================
// Exception handling utilities
//==========================================================================

/*!
 * Exception filter for the ExecuteSafe function: copy the exception record 
 * to the specified structure.
 * @param[in] exceptPtr        pointers to the exception context and the exception 
 *                             record prepared by the system
 * @param[in] pExceptRecord    pointer to the structure that receives the 
 *                             exception record
 * @return the exception disposition
 */
static int SafeExceptionFilter(LPEXCEPTION_POINTERS exceptPtr)
{
    return EXCEPTION_EXECUTE_HANDLER;
}

static int SafeExceptionFilterFloating( _FPIEEE_RECORD * pieee )
{
    return EXCEPTION_EXECUTE_HANDLER;
}

/*!
 * Execute the specified function and return to the caller even if the function raises 
 * an exception.
 * @param[in] pExceptRecord    pointer to the structure that receives the 
 *                             exception record if the function raises an exception
 * @return TRUE, if the function raised an exception
 */
template <typename FUNC>
    bool ExecuteSafe(FUNC fp, DWORD * pExceptCode)
{
    __try
    {
        fp();
        return false;
    }
    __except (*pExceptCode = GetExceptionCode(),
              SafeExceptionFilter(GetExceptionInformation()))
    {
        return true;
    }
}

#pragma float_control (except,on)
template <typename FUNC>
    bool ExecuteSafeFloating(FUNC fp, DWORD * pExceptCode)
{
    unsigned int currentControl;
    errno_t err = _controlfp_s(&currentControl, ~_EM_ZERODIVIDE, _MCW_EM);
    __try
    {
        fp();
        return false;
    }
    __except ( *pExceptCode = GetExceptionCode(),
               SafeExceptionFilter(GetExceptionInformation())
               /*_fpieee_flt( GetExceptionCode(), GetExceptionInformation(), SafeExceptionFilterFloating )*/ )
    {
        return true;
    }
}

/*!
* The tool replaces this function and raises the EXCEPTION_INT_DIVIDE_BY_ZERO system exception. 
*/
EXPORT_CSYM void RaiseIntDivideByZeroException()
{
    volatile int zero = 0;
    volatile int i = 1 / zero;
}

/*!
* The tool replaces this function and raises the EXCEPTION_FLT_DIVIDE_BY_ZERO system exception. 
*/
EXPORT_CSYM void RaiseFltDivideByZeroException()
{
    volatile float zero = 0.0;
    volatile float i = 1.0 / zero;
}

EXPORT_CSYM void End()
{
    return;
}

/*!
 * The tool replace this function and raises the specified system exception. 
 */
EXPORT_CSYM void RaiseSystemException(unsigned int sysExceptCode)
{
    RaiseException(sysExceptCode, 0, 0, NULL);
}

/*!
 * Check to see if the specified exception record represents an exception with the 
 * specified exception code.
 */
static bool CheckExceptionCode(DWORD exceptCode, DWORD expectedExceptCode)
{
    if (exceptCode != expectedExceptCode) 
    {
        cout << "Unexpected exception code " << 
            hex << exceptCode << ". Should be " << 
            hex << expectedExceptCode << endl; 
        return false;
    }
    return true;
}

/*!
 * Convert a pointer to <SRC> type into a pointer to <DST> type.
 * Allows any combination of data/function types.
 */
#if defined(TARGET_IA32) || defined(TARGET_IA32E)
template <typename DST, typename SRC> DST * CastPtr(SRC * src)
{
    union CAST
    {
        DST * dstPtr;
        SRC * srcPtr;
    } cast;
    cast.srcPtr = src;
    return cast.dstPtr;
}
#else
#error Unsupported architechture
#endif

typedef void FUNC_NOARGS(); 

/*!
 * The main procedure of the application.
 */
int main(int argc, char *argv[])
{
    DWORD exceptCode;
    bool exceptionCaught;

    // Raise int divide by zero exception in the tool
    StartFunctionTest("Raise int divide by zero in the tool");
    exceptionCaught = ExecuteSafe(RaiseIntDivideByZeroException, &exceptCode);
    if (!exceptionCaught) {Abort("Unhandled exception");}
    if (!CheckExceptionCode(exceptCode, EXCEPTION_INT_DIVIDE_BY_ZERO)) 
    {
        Abort("Incorrect exception information");
    }

    // Raise flt divide by zero exception in the tool
    StartFunctionTest("Raise FP divide by zero in the tool");
    exceptionCaught = ExecuteSafeFloating(RaiseFltDivideByZeroException, &exceptCode);
    if (!exceptionCaught) {Abort("Unhandled exception");}
    if (!CheckExceptionCode(exceptCode, EXCEPTION_FLT_DIVIDE_BY_ZERO)) 
    {
        Abort("Incorrect exception information");
    }

    ExitUnitTest();
}