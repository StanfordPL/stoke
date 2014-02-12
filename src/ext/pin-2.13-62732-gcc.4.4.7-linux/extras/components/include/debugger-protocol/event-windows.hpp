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
// <COMPONENT>: debugger-protocol
// <FILE-TYPE>: component public header

#ifndef DEBUGGER_PROTOCOL_EVENT_WINDOWS_HPP
#define DEBUGGER_PROTOCOL_EVENT_WINDOWS_HPP

#include "fund.hpp"


namespace DEBUGGER_PROTOCOL {

/*!
 * In the future, new fields may be added to the end of the EVENT_INFO_WINDOWS32
 * or EVENT_INFO_WINDOWS64 structures.  If this happens, clients can use the
 * \e _version field to retain backward compatibility.
 *
 * When a client writes information to these structures, it should set \e _version
 * to the latest version that it supports.
 *
 * When a client reads these structures, it should use \e _version to tell which
 * fields are valid.  A client should allow that \e _version may be greater than
 * the newest version it knows about, which happens if an older front-end runs
 * with a newer back-end or vice-versa.
 */
enum EVENT_INFO_WINDOWS_VERSION
{
    EVENT_INFO_WINDOWS_VERSION_0    ///< This is the only defined version currently.
};


static const unsigned MAX_EXCEPTION_PARAMETERS = 15;    ///< Maximum number of exception parameters.

/*!
 * This has the same layout as EXCEPTION_RECORD32.  If you are compiling on Windows,
 * you can safely cast to that type.
 */
struct /*<POD>*/ EXCEPTION32
{
    FUND::UINT32 _exceptionCode;
    FUND::UINT32 _exceptionFlags;
    FUND::UINT32 _exceptionRecord;
    FUND::UINT32 _exceptionAddress;
    FUND::UINT32 _numberParameters;
    FUND::UINT32 _exceptionInformation[MAX_EXCEPTION_PARAMETERS];
};

/*!
 * This has the same layout as EXCEPTION_RECORD64.  If you are compiling on Windows,
 * you can safely cast to that type.
 */
struct /*<POD>*/ EXCEPTION64
{
    FUND::UINT32 _exceptionCode;
    FUND::UINT32 _exceptionFlags;
    FUND::UINT64 _exceptionRecord;
    FUND::UINT64 _exceptionAddress;
    FUND::UINT32 _numberParameters;
    FUND::UINT32 _pad;
    FUND::UINT64 _exceptionInformation[MAX_EXCEPTION_PARAMETERS];
};


/*!
 * Information about an exception received on a 32-bit Windows target.
 */
struct /*<POD>*/ EVENT_INFO_WINDOWS32
{
    EVENT_INFO_WINDOWS_VERSION _version;    ///< Tells which fields in this structure are valid.
    bool _firstChance;                      ///< TRUE if this is a first-chance exception.
    EXCEPTION32 _exception;                 ///< Windows exception record.
};

/*!
 * Information about an exception received on a 64-bit Windows target.
 */
struct /*<POD>*/ EVENT_INFO_WINDOWS64
{
    EVENT_INFO_WINDOWS_VERSION _version;    ///< Tells which fields in this structure are valid.
    bool _firstChance;                      ///< TRUE if this is a first-chance exception.
    EXCEPTION64 _exception;                 ///< Windows exception record.
};

} // namespace
#endif // file guard
