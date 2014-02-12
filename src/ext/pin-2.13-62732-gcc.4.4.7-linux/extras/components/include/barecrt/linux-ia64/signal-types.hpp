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
// <COMPONENT>: barecrt
// <FILE-TYPE>: component public header

#ifndef BARECRT_LINUX_IA64_SIGNAL_TYPES_HPP
#define BARECRT_LINUX_IA64_SIGNAL_TYPES_HPP

#include <stddef.h>
#include "fund.hpp"
#include "barecrt/sigset64.hpp"


namespace BARECRT {


/*!
 * Values for the _flags field in SIGACTION.
 */
enum
{
    SIGACTION_NOCLDSTOP = 0x00000001,
    SIGACTION_SIGINFO   = 0x00000004,
    SIGACTION_RESTORER  = 0x04000000,
    SIGACTION_ONSTACK   = 0x08000000,
    SIGACTION_RESTART   = 0x10000000,
    SIGACTION_NODEFER   = 0x40000000,
    SIGACTION_RESETHAND = 0x80000000
};


/*!
 * Represents the additional signal information passed to a signal handler (siginfo_t).
 */
struct /*<POD>*/ SIGXINFO
{
    FUND::INT32 _signo;
    FUND::INT32 _errno;
    FUND::INT32 _code;
    FUND::INT32 _pad0;

    union
    {
        FUND::UINT32 _pad1[(128 / sizeof(FUND::UINT32)) - 4];    // Total size of SIGXINFO is 128 bytes

        struct
        {
            FUND::UINT32 _pid;
            FUND::UINT32 _uid;
        } _kill;

        struct
        {
            FUND::PTRINT _addr;
        } _fault;
    };

    // The members in the union are laid out differently on other targets.  These accessors
    // maintain source compatibility across all targets.

    PID GetKillPid() const  {return _kill._pid;}    ///< @return The PID of the process that sent the signal.
    void SetKillPid(PID pid) {_kill._pid = pid;}    ///< @param Set the PID field.
    PID GetKillUid() const  {return _kill._uid;}    ///< @return The UID of the process that sent the signal.
    void SetKillUid(UID uid) {_kill._uid = uid;}    ///< @param Set the UID field.

    FUND::PTRINT GetFaultAddr() const {return _fault._addr;}    ///< @return The address of the fault (either PC or EA).
    void SetFaultAddr(FUND::PTRINT addr) {_fault._addr = addr;} ///< @param Set the fault address field.
};


/*!
 * Describes how to handle a signal.
 * NOTE: This is the layout expected by the kernel, which is not necessarily the same as the
 * libc "struct sigaction".
 */
struct /*<POD>*/ SIGACTION
{
    union
    {
        void (*_sigaction)(int, SIGXINFO *, void *);
        void (*_handler)(int);
    };
    FUND::UINT64 _flags;
    SIGSET _mask;
};


/*!
 * Describes an stack to use when handling signals (stack_t).
 */
struct /*<POD>*/ SIGSTACK
{
    void *_sp;
    FUND::INT32 _flags;
    FUND::UINT64 _size;
};

} // namespace
#endif // file guard
