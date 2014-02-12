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

#ifndef BARECRT_FUTEX_HPP
#define BARECRT_FUTEX_HPP

#include "barecrt/time.hpp"


namespace BARECRT {

/*!
 * Block the calling thread if the value of \a futex is \a val or until a
 * timeout expires.  The thread can be unblocked when a signal is received
 * or when FutexWake() is called.
 *
 *  @param[in] futex    Pointer to "futex" variable.
 *  @param[in] val      The call only blocks if \a futex has this value.
 *  @param[in] timeout  If not NULL, the timeout.  If NULL, there is no
 *                       timeout.
 *
 * @return  One of the following values:
 *           - 0 if woken by FutexWake().
 *           - EWOULDBLOCK if \a futex does not have the value \a val.
 *           - ETIMEOUT if \a timeout expires.
 *           - EINTR if a signal is received or for other spurious wakeups.
 *           - EACCESS if \a futex is not readable.
 */
ECODE FutexWait(int *futex, int val, const TIMEVAL *timeout);

/*!
 * Wake threads that are waiting on a futex variable.
 *
 *  @param[in] futex            Pointer to the "futex" variable.
 *  @param[in] numberToWake     The maximum number of threads to wake up.
 *  @param[out] numberWoken     If not NULL, receives the number of woken threads.
 *
 * @return  0 on success, else a kernel error number.
 */
ECODE FutexWake(int *futex, int numberToWake, int *numberWoken);

} // namespace
#endif // file guard
