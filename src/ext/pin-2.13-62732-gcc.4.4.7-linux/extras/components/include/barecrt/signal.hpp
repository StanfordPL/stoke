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

#ifndef BARECRT_SIGNAL_HPP
#define BARECRT_SIGNAL_HPP

#include "fund.hpp"
#include "barecrt/types.hpp"

#if defined(FUND_HOST_IA32_LINUX)
#   include "barecrt/linux-ia32/signal-types.hpp"
#elif defined(FUND_HOST_INTEL64_LINUX) || defined(FUND_HOST_MIC_LINUX)
#   include "barecrt/linux-intel64/signal-types.hpp"
#elif defined(FUND_HOST_IA64_LINUX)
#   include "barecrt/linux-ia64/signal-types.hpp"
#elif defined(FUND_HOST_IA32_MAC)
#   include "barecrt/mac-ia32/signal-types.hpp"
#   include "barecrt/signal-mac.hpp"
#elif defined(FUND_HOST_INTEL64_MAC)
#   include "barecrt/mac-intel64/signal-types.hpp"
#   include "barecrt/signal-mac.hpp"
#elif defined(FUND_HOST_INTEL64_BSD)
#   include "barecrt/bsd-intel64/signal-types.hpp"
#else
#   error "Must define O/S and architecture"
#endif


namespace BARECRT {

/*!
 * Get the caller's process ID.
 *
 *  @param[out] pid     Receives the ID.
 *
 * @return  0 on success, else a kernel error number.
 */
ECODE GetPid(PID *pid);


/*!
 * Send a signal to a process.
 *
 *  @param[in] pid      Process that receives the signal.
 *  @param[in] signal   The signal number.
 *
 * @return  0 on success, else a kernel error number.
 */
ECODE Kill(PID pid, int signal);

/*!
 * Send a signal to a thread (Linux specific).
 *
 *  @param[in] Tid      Thread that receives the signal.
 *  @param[in] signal   The signal number.
 *
 * @return  0 on success, else a kernel error number.
 */
ECODE Tkill(PID tid, int signal);

/*!
 * @return  The largest valid signal number.
 */
int MaxSignalNumber();


/*!
 * Set up a signal handler.
 *
 *  @param[in] signal       The signal to handle.
 *  @param[in] newAction    If not NULL, describes the new signal handler.
 *  @param[out] oldAction   If not NULL, receives the previous signal handler.
 *
 * @return  0 on success, else a kernel error number.
 */
ECODE SigAction(int signal, const SIGACTION *newAction, SIGACTION *oldAction);


/*!
 * Change the thread's signal mask.
 *
 *  @param[in] how          Code telling how to change the mask.
 *  @param[in] newMask      Set of signals for the new mask.
 *  @param[out] oldMask     If not NULL, receives the previous signall mask.
 *
 * @return  0 on success, else a kernel error number.
 */
ECODE SigProcMask(int how, const SIGSET *newMask, SIGSET *oldMask);


/*!
 * Install an alternate stack for handling signals on this thread.
 *
 *  @param[in] newStack     Describes new stack for handling signals.
 *  @param[out] oldStack    If not NULL, receives the previous signal handling
 *                           stack.
 *
 * @return  0 on success, else a kernel error number.
 */
ECODE SigAltStack(const SIGSTACK *newStack, SIGSTACK *oldStack);


/*!
 * Suspend the calling thread until a signal is handled.
 *
 *  @param[in] mask     The new signal mask to install while the
 *                       thread is suspended.
 *
 * @return  On success, returns EINVAL after the signal's handler returns.
 */
ECODE SigSuspend(const SIGSET *mask);


} // namespace
#endif // file guard
