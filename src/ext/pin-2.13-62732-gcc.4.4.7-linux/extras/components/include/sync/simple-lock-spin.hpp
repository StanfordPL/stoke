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
// <FILE-TYPE>: component private header

#ifndef SYNC_SIMPLE_LOCK_SPIN_HPP
#define SYNC_SIMPLE_LOCK_SPIN_HPP

#include "atomic.hpp"
#include "fund.hpp"
#include "sync/backoff-or-yield.hpp"
#include "sync/simple-lock.hpp"


namespace SYNC {


/*!
 * This is a SAFEPOD implementation of SIMPLE_LOCK_SPIN.  See \ref SYNC_POD
 * for a description of why this is useful.  Unless you need the special
 * SAFEPOD semantics, you probably want to use SIMPLE_LOCK_SPIN instead.
 *
 * @tparam OS                   Type which provides O/S primitives.  See
 *                               \ref SYNC_OS.  The \a OS type must define the
 *                               Yield() method.
 * @tparam BACKOFF_ITERATIONS   The first \a BACKOFF_ITERATIONS spin iterations
 *                               are done without calling Yield().  Each of
 *                               these iterations is an exponential delay, so
 *                               the total maximum delay before calling Yield()
 *                               is 2^BACKOFF_ITERATIONS.
 */
template<typename OS, unsigned BACKOFF_ITERATIONS = 4> class /*<POD>*/ SIMPLE_LOCK_SAFEPOD_SPIN
{
public:
    /*!
     * Initialize the lock before its first use.
     *
     * @return  Always returns TRUE.
     */
    bool Initialize()
    {
        _lock = 0;
        return true;
    }

    /*!
     * It is not necessary to call this method.  It is provided only for symmetry.
     */
    void Destroy() {}

    /*!
     * Set the state of the lock to "not locked", even if the calling thread
     * does not own the lock.
     */
    void Reset()
    {
        _lock = 0;
    }

    /*!
     * Blocks the caller until the lock can be acquired.
     */
    void Lock()
    {
        // The BARRIER_CS_NEXT assures that we read (and modify) _lock before accessing any
        // data that is protected by the lock.
        //
        BACKOFF_OR_YIELD<OS, BACKOFF_ITERATIONS> backoff;
        while (!ATOMIC::OPS::CompareAndDidSwap(&_lock, 0, 1, ATOMIC::BARRIER_CS_NEXT))
            backoff.Delay();
    }

    /*!
     * Releases the lock.
     */
    void Unlock()
    {
        // The BARRIER_ST_PREV assures that other processors see all the changes to
        // protected data before they see that the lock is available.
        //
        ATOMIC::OPS::Store(&_lock, 0, ATOMIC::BARRIER_ST_PREV);
    }

    /*!
     * Attempts to acquire the lock, but does not block the caller.
     *
     * @return  Returns TRUE if the lock is acquired, FALSE if not.
     */
    bool TryLock()
    {
        return ATOMIC::OPS::CompareAndDidSwap(&_lock, 0, 1, ATOMIC::BARRIER_CS_NEXT);
    }

public:
    // This member is public only to make SIMPLE_LOCK_SAFEPOD_SPIN a POD.  Do not
    // access it directly.  Note that '_lock' will be implicitly initialized as 0 when
    // SIMPLE_LOCK_SAFEPOD_SPIN is declared as a static or global variable.
    //
    volatile FUND::INT32 _lock;
};


/*!
 * A simple non-recursive lock that uses active spin loops for blocked threads.
 * This is not very efficient, but it is very portable.
 *
 * @tparam OS                   Type which provides O/S primitives.  See
 *                               \ref SYNC_OS.  The \a OS type must define the
 *                               Yield() method.
 * @tparam BACKOFF_ITERATIONS   The first \a BACKOFF_ITERATIONS spin iterations
 *                               are done without calling Yield().  Each of
 *                               these iterations is an exponential delay, so
 *                               the total maximum delay before calling Yield()
 *                               is 2^BACKOFF_ITERATIONS.
 */
template<typename OS, unsigned BACKOFF_ITERATIONS = 4> class /*<UTILITY>*/ SIMPLE_LOCK_SPIN
    : public SIMPLE_LOCK
{
public:
    /*!
     * The initial sate of the lock is "not locked".
     */
    SIMPLE_LOCK_SPIN() {_impl.Initialize();}

    /*!
     * It is not necessary to call this method.  It is provided only for symmetry.
     *
     * @return  Always returns TRUE.
     */
    bool Initialize() {return _impl.Initialize();}

    /*!
     * It is not necessary to call this method.  It is provided only for symmetry.
     */
    void Destroy() {}

    /*!
     * Set the state of the lock to "not locked", even if the calling thread
     * does not own the lock.
     */
    void Reset() {_impl.Reset();}

    /*!
     * Blocks the caller until the lock can be acquired.
     */
    void Lock() {_impl.Lock();}

    /*!
     * Releases the lock.
     */
    void Unlock() {_impl.Unlock();}

    /*!
     * Attempts to acquire the lock, but does not block the caller.
     *
     * @return  Returns TRUE if the lock is acquired, FALSE if not.
     */
    bool TryLock() {return _impl.TryLock();}

private:
    SIMPLE_LOCK_SAFEPOD_SPIN<OS, BACKOFF_ITERATIONS> _impl;
};

} // namespace
#endif // file guard
