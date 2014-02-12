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
// <COMPONENT>: sync
// <FILE-TYPE>: component public header

#ifndef SYNC_OS_BARECRT_LINUX_HPP
#define SYNC_OS_BARECRT_LINUX_HPP

#include "sync/os-barecrt-time.hpp"
#include "barecrt.hpp"


namespace SYNC {

/*!
 * This is an implementation of the "OS" template parameter, which provides
 * O/S primitives via the "barecrt" library.  See \ref SYNC_OS for more details
 * on this template type.  This version of the "OS" template parameter should
 * only be used on Linux hosts because it uses the "futex" functionality, which
 * is specific to Linux.
 */
struct /*<UTILITY>*/ OS_BARECRT_LINUX
{
    typedef OS_BARECRT_TIME TIME_T;   //< A time duration.

    /*!
     * Yield the processor.
     */
    static void Yield()
    {
        BARECRT::Yield();
    }

    /*!
     * Get the current wall-clock time since some arbitrary reference point.
     *
     *  @param[out] timeval     Receives the current time.
     */
    static void GetTime(TIME_T *timeval)
    {
        BARECRT::GetTime(&timeval->_time);
    }

    /*!
     * Block the calling thread if the value of \a futex is \a val or until
     * a timeout expires.
     *
     *  @param[in] futex    Pointer to "futex" variable.
     *  @param[in] val      The call only blocks if \a futex has this value.
     *  @param[in] timeout  The timeout value in milliseconds.
     *  @param[in] timeout  If not NULL, the timeout duration.  If NULL, there
     *                       is no timeout.
     */
    static void FutexWait(int *futex, int val, const TIME_T *timeout)
    {
        BARECRT::FutexWait(futex, val, &timeout->_time);
    }

    /*!
     * Wake threads that are waiting on a futex variable.
     *
     *  @param[in] futex            Pointer to the "futex" variable.
     *  @param[in] numberToWake     The maximum number of threads to wake up.
     */
    static void FutexWake(int *futex, int numberToWake)
    {
        BARECRT::FutexWake(futex, numberToWake, 0);
    }
};

} // namespace
#endif // file guard
