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

#ifndef DEBUGGER_PROTOCOL_REGS_GDB_LINUX_IA32_HPP
#define DEBUGGER_PROTOCOL_REGS_GDB_LINUX_IA32_HPP

#include "debugger-protocol.hpp"


namespace DEBUGGER_PROTOCOL {

#if defined(DEBUGGER_PROTOCOL_BUILD)    // Library clients should NOT define this.

/*!
 * This is the register set GDB uses on IA32 Linux.
 */
DEBUGGER_PROTOCOL_API REG_DESCRIPTION RegsGdbLinuxIA32[] =
{
    {32, REG_INVALID, false},   // REG_GDB_LINUX_IA32_EAX
    {32, REG_INVALID, false},   // REG_GDB_LINUX_IA32_ECX
    {32, REG_INVALID, false},   // REG_GDB_LINUX_IA32_EDX
    {32, REG_INVALID, false},   // REG_GDB_LINUX_IA32_EBX
    {32, REG_INVALID, true},    // REG_GDB_LINUX_IA32_ESP
    {32, REG_INVALID, true},    // REG_GDB_LINUX_IA32_EBP
    {32, REG_INVALID, false},   // REG_GDB_LINUX_IA32_ESI
    {32, REG_INVALID, false},   // REG_GDB_LINUX_IA32_EDI
    {32, REG_PC, true},         // REG_GDB_LINUX_IA32_PC
    {32, REG_INVALID, false},   // REG_GDB_LINUX_IA32_EFLAGS
    {32, REG_INVALID, false},   // REG_GDB_LINUX_IA32_CS
    {32, REG_INVALID, false},   // REG_GDB_LINUX_IA32_SS
    {32, REG_INVALID, false},   // REG_GDB_LINUX_IA32_DS
    {32, REG_INVALID, false},   // REG_GDB_LINUX_IA32_ES
    {32, REG_INVALID, false},   // REG_GDB_LINUX_IA32_FS
    {32, REG_INVALID, false},   // REG_GDB_LINUX_IA32_GS
    {80, REG_INVALID, false},   // REG_GDB_LINUX_IA32_ST0
    {80, REG_INVALID, false},   // REG_GDB_LINUX_IA32_ST1
    {80, REG_INVALID, false},   // REG_GDB_LINUX_IA32_ST2
    {80, REG_INVALID, false},   // REG_GDB_LINUX_IA32_ST3
    {80, REG_INVALID, false},   // REG_GDB_LINUX_IA32_ST4
    {80, REG_INVALID, false},   // REG_GDB_LINUX_IA32_ST5
    {80, REG_INVALID, false},   // REG_GDB_LINUX_IA32_ST6
    {80, REG_INVALID, false},   // REG_GDB_LINUX_IA32_ST7
    {32, REG_INVALID, false},   // REG_GDB_LINUX_IA32_FCTRL
    {32, REG_INVALID, false},   // REG_GDB_LINUX_IA32_FSTAT
    {32, REG_INVALID, false},   // REG_GDB_LINUX_IA32_FTAG_FULL
    {32, REG_INVALID, false},   // REG_GDB_LINUX_IA32_FISEG
    {32, REG_INVALID, false},   // REG_GDB_LINUX_IA32_FIOFF
    {32, REG_INVALID, false},   // REG_GDB_LINUX_IA32_FOSEG
    {32, REG_INVALID, false},   // REG_GDB_LINUX_IA32_FOOFF
    {32, REG_INVALID, false},   // REG_GDB_LINUX_IA32_FOP
    {128, REG_INVALID, false},  // REG_GDB_LINUX_IA32_XMM0
    {128, REG_INVALID, false},  // REG_GDB_LINUX_IA32_XMM1
    {128, REG_INVALID, false},  // REG_GDB_LINUX_IA32_XMM2
    {128, REG_INVALID, false},  // REG_GDB_LINUX_IA32_XMM3
    {128, REG_INVALID, false},  // REG_GDB_LINUX_IA32_XMM4
    {128, REG_INVALID, false},  // REG_GDB_LINUX_IA32_XMM5
    {128, REG_INVALID, false},  // REG_GDB_LINUX_IA32_XMM6
    {128, REG_INVALID, false},  // REG_GDB_LINUX_IA32_XMM7
    {32, REG_INVALID, false},   // REG_GDB_LINUX_IA32_MXCSR
    {32, REG_INVALID, false}    // REG_GDB_LINUX_IA32_ORIG_EAX
};

/*!
 * Number of entries in RegsGdbLinuxIA32.
 */
DEBUGGER_PROTOCOL_API unsigned RegsGdbLinuxIA32Count = sizeof(RegsGdbLinuxIA32) / sizeof(RegsGdbLinuxIA32[0]);

#else

DEBUGGER_PROTOCOL_API extern REG_DESCRIPTION RegsGdbLinuxIA32[];   ///< GDB's IA32 register set on Linux.
DEBUGGER_PROTOCOL_API extern unsigned RegsGdbLinuxIA32Count;       ///< Number of entries in RegsGdbLinuxIA32.

#endif /*DEBUGGER_PROTOCOL_BUILD*/


/*!
 * Convenient identifiers for the registers in this set.
 */
enum REG_GDB_LINUX_IA32
{
    REG_GDB_LINUX_IA32_FIRST = REG_END,
    REG_GDB_LINUX_IA32_EAX = REG_GDB_LINUX_IA32_FIRST,
    REG_GDB_LINUX_IA32_ECX,
    REG_GDB_LINUX_IA32_EDX,
    REG_GDB_LINUX_IA32_EBX,
    REG_GDB_LINUX_IA32_ESP,
    REG_GDB_LINUX_IA32_EBP,
    REG_GDB_LINUX_IA32_ESI,
    REG_GDB_LINUX_IA32_EDI,
    REG_GDB_LINUX_IA32_PC,
    REG_GDB_LINUX_IA32_EFLAGS,
    REG_GDB_LINUX_IA32_CS,
    REG_GDB_LINUX_IA32_SS,
    REG_GDB_LINUX_IA32_DS,
    REG_GDB_LINUX_IA32_ES,
    REG_GDB_LINUX_IA32_FS,
    REG_GDB_LINUX_IA32_GS,
    REG_GDB_LINUX_IA32_ST0,
    REG_GDB_LINUX_IA32_ST1,
    REG_GDB_LINUX_IA32_ST2,
    REG_GDB_LINUX_IA32_ST3,
    REG_GDB_LINUX_IA32_ST4,
    REG_GDB_LINUX_IA32_ST5,
    REG_GDB_LINUX_IA32_ST6,
    REG_GDB_LINUX_IA32_ST7,
    REG_GDB_LINUX_IA32_FCTRL,
    REG_GDB_LINUX_IA32_FSTAT,
    REG_GDB_LINUX_IA32_FTAG_FULL,   // 16-bit "full" encoding
    REG_GDB_LINUX_IA32_FISEG,
    REG_GDB_LINUX_IA32_FIOFF,
    REG_GDB_LINUX_IA32_FOSEG,
    REG_GDB_LINUX_IA32_FOOFF,
    REG_GDB_LINUX_IA32_FOP,
    REG_GDB_LINUX_IA32_XMM0,
    REG_GDB_LINUX_IA32_XMM1,
    REG_GDB_LINUX_IA32_XMM2,
    REG_GDB_LINUX_IA32_XMM3,
    REG_GDB_LINUX_IA32_XMM4,
    REG_GDB_LINUX_IA32_XMM5,
    REG_GDB_LINUX_IA32_XMM6,
    REG_GDB_LINUX_IA32_XMM7,
    REG_GDB_LINUX_IA32_MXCSR,
    REG_GDB_LINUX_IA32_ORIG_EAX,
    REG_GDB_LINUX_IA32_LAST = REG_GDB_LINUX_IA32_ORIG_EAX
};

} // namespace
#endif // file guard
