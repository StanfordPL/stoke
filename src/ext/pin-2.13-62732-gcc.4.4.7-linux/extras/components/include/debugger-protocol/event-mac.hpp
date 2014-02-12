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
// <ORIGINAL-AUTHOR>: Benjamin Kemper
// <COMPONENT>: debugger-protocol
// <FILE-TYPE>: component public header

#ifndef DEBUGGER_PROTOCOL_EVENT_MAC_HPP
#define DEBUGGER_PROTOCOL_EVENT_MAC_HPP

#include "debugger-protocol.hpp"
#include "debugger-protocol/event-linux.hpp"
#include "fund.hpp"


namespace DEBUGGER_PROTOCOL {

/*!
 * The Mac signal numbers.  These are the same values defined in the system <signal.h> header.
 */
enum MAC_SIGNAL
{
    MAC_SIGNAL_HUP = 1,
    MAC_SIGNAL_INT = 2,
    MAC_SIGNAL_QUIT = 3,
    MAC_SIGNAL_ILL = 4,
    MAC_SIGNAL_TRAP = 5,
    MAC_SIGNAL_ABRT = 6,
    MAC_SIGNAL_EMT = 7,
    MAC_SIGNAL_FPE = 8,
    MAC_SIGNAL_KILL = 9,
    MAC_SIGNAL_BUS = 10,
    MAC_SIGNAL_SEGV = 11,
    MAC_SIGNAL_SYS = 12,
    MAC_SIGNAL_PIPE = 13,
    MAC_SIGNAL_ALRM = 14,
    MAC_SIGNAL_TERM = 15,
    MAC_SIGNAL_URG = 16,
    MAC_SIGNAL_STOP = 17,
    MAC_SIGNAL_TSTP = 18,
    MAC_SIGNAL_CONT = 19,
    MAC_SIGNAL_CHLD = 20,
    MAC_SIGNAL_TTIN = 21,
    MAC_SIGNAL_TTOU = 22,
    MAC_SIGNAL_IO = 23,
    MAC_SIGNAL_XCPU = 24,
    MAC_SIGNAL_XFSZ = 25,
    MAC_SIGNAL_VTALRM = 26,
    MAC_SIGNAL_PROF = 27,
    MAC_SIGNAL_WINCH = 28,
    MAC_SIGNAL_INFO = 29,
    MAC_SIGNAL_USR1 = 30,
    MAC_SIGNAL_USR2 = 31
};


#if defined(DEBUGGER_PROTOCOL_BUILD)    // Library clients should NOT define this.

/*!
 * When GDB connects to a Mac process, it expects that these signals are initially not
 * intercepted.  If a back-end connects to a debugger of type FRONTEND_TYPE_GDB, the
 * back-end should arrange for these signals to be handled internally by the process,
 * without notifying GDB.  Note that these are only an initial default setting.  GDB may
 * explicitly ask to intercept these signals later via IEVENT_INTERCEPTION.
 */
DEBUGGER_PROTOCOL_API EVENT DefaultMacSignalsNotInterceptedByGdb[] =
{
    MAC_SIGNAL_ALRM,
    MAC_SIGNAL_URG,
    MAC_SIGNAL_CHLD,
    MAC_SIGNAL_VTALRM,
    MAC_SIGNAL_PROF,
    MAC_SIGNAL_WINCH
};

/*!
 * Number of entries in DefaultMacSignalsNotInterceptedByGdb.
 */
DEBUGGER_PROTOCOL_API unsigned DefaultMacSignalsNotInterceptedByGdbCount =
    sizeof(DefaultMacSignalsNotInterceptedByGdb) / sizeof(DefaultMacSignalsNotInterceptedByGdb[0]);

#else

/*!
 * Signals not initially intercepted by GDB.
 */
DEBUGGER_PROTOCOL_API extern EVENT DefaultMacSignalsNotInterceptedByGdb[];

/*!
 * Number entries in DefaultMacSignalsNotInterceptedByGdb.
 */
DEBUGGER_PROTOCOL_API extern unsigned DefaultMacSignalsNotInterceptedByGdbCount;

#endif


/*!
 * In the future, new fields may be added to the end of the EVENT_INFO_MAC32
 * or EVENT_INFO_MAC64 structures.  If this happens, clients can use the
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
enum EVENT_INFO_MAC_VERSION
{
    EVENT_INFO_MAC_VERSION_0      ///< This is the only defined version currently.
};

/*!
 * Information about a signal received on a 32-bit Mac target.
 */
struct /*<POD>*/ EVENT_INFO_MAC32
{
    EVENT_INFO_MAC_VERSION _version;  ///< Tells which fields in this structure are valid.
    SIGINFO32 _siginfo;               ///< Signal information.
};

/*!
 * Information about a signal received on a 64-bit Mac target.
 */
struct /*<POD>*/ EVENT_INFO_MAC64
{
    EVENT_INFO_MAC_VERSION _version;  ///< Tells which fields in this structure are valid.
    SIGINFO64 _siginfo;                 ///< Signal information.
};

} // namespace
#endif // file guard
