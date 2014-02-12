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
// <ORIGINAL-AUTHOR>: Ady Tal
// <COMPONENT>: barecrt
// <FILE-TYPE>: component public header

#ifndef BARECRT_BSD_INTEL64_SIGNAL_TYPES_HPP
#define BARECRT_BSD_INTEL64_SIGNAL_TYPES_HPP

#include <stddef.h>
#include "fund.hpp"
#include "barecrt/sigset128.hpp"


namespace BARECRT {


/*!
 * Values for the _flags field in SIGACTION.
 */
enum
{
    SIGACTION_ONSTACK   = 0x0001,
    SIGACTION_RESTART   = 0x0002,
    SIGACTION_RESETHAND = 0x0004,
    SIGACTION_NOCLDSTOP = 0x0008,
    SIGACTION_NODEFER   = 0x0010,
    SIGACTION_NOCLDWAIT = 0x0020,
    SIGACTION_SIGINFO   = 0x0040
};


/*!
 * Represents the additional signal information passed to a signal handler (siginfo_t).
 */
struct /*<POD>*/ SIGXINFO
{
    FUND::INT32 _signo;
    FUND::INT32 _errno;
    FUND::INT32 _code;
    FUND::UINT32 _pid;
    FUND::UINT32 _uid;
    FUND::UINT32 _status;
    FUND::PTRINT _addr;

    union 
    {
        FUND::INT32 _val_int;
        FUND::PTRINT _val_ptr;
    };

    FUND::INT64 _band;
    FUND::INT32 _spare[7];

    // The members in the union are laid out differently on other targets.  These accessors
    // maintain source compatibility across all targets.

    PID GetKillPid() const  {return _pid;}    ///< @return The PID of the process that sent the signal.
    void SetKillPid(PID pid) {_pid = pid;}    ///< @param Set the PID field.
    PID GetKillUid() const  {return _uid;}    ///< @return The UID of the process that sent the signal.
    void SetKillUid(UID uid) {_uid = uid;}    ///< @param Set the UID field.

    FUND::PTRINT GetFaultAddr() const {return _addr;}    ///< @return The address of the fault (either PC or EA).
    void SetFaultAddr(FUND::PTRINT addr) {_addr = addr;} ///< @param Set the fault address field.
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
    FUND::UINT32 _flags;
    SIGSET _mask;
};


/*!
 * Describes an stack to use when handling signals (stack_t).
 */
struct /*<POD>*/ SIGSTACK
{
    void *_sp;
    FUND::UINT64 _size;
    FUND::INT32 _flags;
};

} // namespace
#endif // file guard
