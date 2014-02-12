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
// <ORIGINAL-AUTHOR>: Greg Lueck
// <COMPONENT>: fund
// <FILE-TYPE>: component public header

#ifndef FUND_HPP
#define FUND_HPP

#if defined(__GNUC__)
#   include <stdint.h>
#endif
#include "fund/config.h"


/*!
 * The FUND namespace provides a small set of fundamental types that are used
 * by many other components.
 *
 * The compiler may pre-define the following macro values on the command
 * line in order to define the "host" and "target" system.  The "host" system
 * is the system where the code will run.
 *
 * The "target" system is more nebulous and only makes sense for certain
 * applications.  For example, if the application is a compiler, "target"
 * may tell the type of code that the compiler generates code for.  If the
 * application is a cross-compiler, "host" and "target" will be different.
 *
 * These are the macros that the compiler may pre-define:
 *
 *  - FUND_TC_HOSTCPU       One of the values FUND_CPU_IA32, FUND_CPU_INTEL64,
 *                           FUND_CPU_IA64, or FUND_CPU_MIC.
 *  - FUND_TC_HOSTOS        One of the values FUND_OS_LINUX, FUND_OS_WINDOWS,
 *                           FUND_OS_MAC, or FUND_OS_BSD.
 *  - FUND_TC_TARGETCPU     Either FUND_CPU_NONE or one of the other FUND_CPU_
 *                           values listed above.  The value FUND_CPU_NONE
 *                           indicates that there is no concept of "target"
 *                           for this compilation.
 *  - FUND_TC_TARGETOS      Either FUND_OS_NONE or one of the other FUND_OS_
 *                           values listed above.  The value FUND_OS_NONE
 *                           indicates that there is no concept of "target"
 *                           for this compilation.
 *
 * For example, these compiler pre-defines specify code that will be compiled
 * to run on IA32 / Linux.  There is no concept of "target" system.
 *
 *                                                                      \code
 *  -DFUND_TC_HOSTCPU=FUND_CPU_IA32
 *  -DFUND_TC_HOSTOS=FUND_OS_LINUX
 *  -DFUND_TC_TARGETCPU=FUND_CPU_NONE
 *  -DFUND_TC_TARGETOS=FUND_OS_NONE
 *                                                                      \endcode
 *
 */
namespace FUND {

#if defined(_MSC_VER)

// Microsoft Visual C/C++ compiler

typedef unsigned __int8 UINT8;      ///< 8-bit unsigned integer
typedef unsigned __int16 UINT16;    ///< 16-bit unsigned integer
typedef unsigned __int32 UINT32;    ///< 32-bit unsigned integer
typedef unsigned __int64 UINT64;    ///< 64-bit unsigned integer
typedef __int8 INT8;                ///< 8-bit signed integer
typedef __int16 INT16;              ///< 16-bit signed integer
typedef __int32 INT32;              ///< 32-bit signed integer
typedef __int64 INT64;              ///< 64-bit signed integer

#define FUND_EXPORT __declspec(dllexport)   ///< Use this when defining a symbol that should be exported from a DLL.
#define FUND_IMPORT __declspec(dllimport)   ///< Use this when defining a symbol that should be imported from a DLL.

/*!
 * Minimum alignment required by a type (t).
 */
#define FUND_ALIGNMENT_OF(t) __alignof(t)

#elif defined(__GNUC__)

// GNU C/C++ compiler

typedef uint8_t  UINT8;             ///< 8-bit unsigned integer
typedef uint16_t UINT16;            ///< 16-bit unsigned integer
typedef uint32_t UINT32;            ///< 32-bit unsigned integer
typedef uint64_t UINT64;            ///< 64-bit unsigned integer
typedef int8_t  INT8;               ///< 8-bit signed integer
typedef int16_t INT16;              ///< 16-bit signed integer
typedef int32_t INT32;              ///< 32-bit signed integer
typedef int64_t INT64;              ///< 64-bit signed integer

#define FUND_EXPORT     ///< Use this when defining a symbol that should be exported from a DLL.
#define FUND_IMPORT     ///< Use this when defining a symbol that should be imported from a DLL.

/*!
 * Minimum alignment required by a type (t).
 */
#define FUND_ALIGNMENT_OF(t) __alignof__(t)

#endif


#if defined(FUND_HOST_IA32)

/*!
 * Unsigned integer of the same size as a pointer on the host system
 * (the system where the program runs).  Conversions to/from PTRINT and
 * pointers do not lose data.
 */
typedef UINT32 PTRINT;
#define FUND_PTRINT_SIZE 32

#elif defined(FUND_HOST_INTEL64) || defined(FUND_HOST_IA64) || defined(FUND_HOST_MIC)

/*!
 * Unsigned integer of the same size as a pointer on the host system
 * (the system where the program runs).  Conversions to/from PTRINT and
 * pointers do not lose data.
 */
typedef UINT64 PTRINT;
#define FUND_PTRINT_SIZE 64

#endif


#if defined(FUND_TARGET_IA32)

/*!
 * Unsigned integer of the same size as a pointer on the target system.
 * The concept of "target" system makes sense only for programs that analyze or
 * generate code.  Consider a cross-compiler as an example that runs on system
 * X and generates code for system Y.  In this example, PTRINT represents a pointer
 * on system X (the host system) and ADDRINT represents a pointer on system Y (the
 * target system).
 */
typedef UINT32  ADDRINT;
#define FUND_ADDRINT_SIZE 32

#elif defined(FUND_TARGET_INTEL64) || defined(FUND_TARGET_IA64) || defined(FUND_TARGET_MIC)

/*!
 * Unsigned integer of the same size as a pointer on the target system.
 * The concept of "target" system makes sense only for programs that analyze or
 * generate code.  Consider a cross-compiler as an example that runs on system
 * X and generates code for system Y.  In this example, PTRINT represents a pointer
 * on system X (the host system) and ADDRINT represents a pointer on system Y (the
 * target system).
 */
typedef UINT64  ADDRINT;
#define FUND_ADDRINT_SIZE 64

#endif

/*!
 * If a project has the concept of a "target" system and that system is known at
 * compile time, you can compiled with FUND_TARGET_* set and use the ADDRINT type
 * to represent addresses on the target.  However, if the target system is not known
 * until runtime, you can use the ANYADDR type to represent addresses on the target.
 * This type is large enough to hold an address on any supported system.  Theoretically,
 * this type could be widened in the future, so code should avoid assumptions on the
 * current width.
 */
typedef UINT64  ANYADDR;

} // namespace
#endif // file guard
