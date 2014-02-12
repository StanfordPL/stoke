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

#ifndef SYNC_SIMPLE_LOCK_FUTEX_HPP
#define SYNC_SIMPLE_LOCK_FUTEX_HPP

#include "atomic.hpp"
#include "sync/simple-lock.hpp"


namespace SYNC {


/*!
 * This is a SAFEPOD implementation of SIMPLE_LOCK_FUTEX.  See \ref SYNC_POD
 * for a description of why this is useful.  Unless you need the special
 * SAFEPOD semantics, you probably want to use SIMPLE_LOCK_FUTEX instead.
 *
 * @tparam OS               Type which provides O/S primitives.  See
 *                           \ref SYNC_OS.  The \a OS type must define the
 *                           FutexWait() and FutexWake() methods.
 * @tparam SPIN_ITERATIONS  If the lock is contended, we spin this many times
 *                           before attempting to block.  Each of these
 *                           iterations has an exponentially increasing delay.
 */
template<typename OS, unsigned SPIN_ITERATIONS = 4> class /*<POD>*/ SIMPLE_LOCK_SAFEPOD_FUTEX
{
public:
    /*!
     * Initialize the lock before its first use.
     *
     * @return  Always returns TRUE.
     */
    bool Initialize()
    {
        _state = STATE_UNLOCKED;
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
        _state = STATE_UNLOCKED;
    }

    /*!
     * Blocks the caller until the lock can be acquired.
     */
    void Lock()
    {
        // Try to get the lock.  This succeeds if there is no contention.  The BARRIER_CS_NEXT
        // assures that we read (and modify) _state before accessing any data that is protected
        // by the lock.
        //
        int s = ATOMIC::OPS::CompareAndSwap<int>(&_state, STATE_UNLOCKED,
            STATE_LOCKED_NO_WAITERS, ATOMIC::BARRIER_CS_NEXT);
        if (s == STATE_UNLOCKED)
            return;

        // If the lock is contended, possibly spin a few times before deciding to block.
        // This is controled by the SPIN_ITERATIONS template parameter.
        //
        ATOMIC::EXPONENTIAL_BACKOFF<> backoff(0);
        for (unsigned i = 0;  i < SPIN_ITERATIONS;  i++)
        {
            backoff.Delay();
            s = ATOMIC::OPS::CompareAndSwap<int>(&_state, STATE_UNLOCKED,
                STATE_LOCKED_NO_WAITERS, ATOMIC::BARRIER_CS_NEXT);
            if (s == STATE_UNLOCKED)
                return;
        }

        // Prepare to block by setting the state to MAYBE_WAITERS.
        //
        if (s != STATE_LOCKED_MAYBE_WAITERS)
            s = ATOMIC::OPS::Swap(&_state, STATE_LOCKED_MAYBE_WAITERS, ATOMIC::BARRIER_SWAP_NEXT);

        // Wait on the futex until someone sets it to UNLOCKED.
        //
        while (s != STATE_UNLOCKED)
        {
            OS::FutexWait(const_cast<int *>(&_state), STATE_LOCKED_MAYBE_WAITERS, 0);
            s = ATOMIC::OPS::Swap(&_state, STATE_LOCKED_MAYBE_WAITERS, ATOMIC::BARRIER_SWAP_NEXT);
        }
    }


    /*!
     * Releases the lock.
     */
    void Unlock()
    {
        // Decrementing _state will set it to either UNLOCKED or LOCKED_NO_WAITERS.  If we
        // set it to UNLOCKED, we're done and there's no need to wake anyone up.  The
        // BARRIER_CS_PREV assures that other processors see all the changes to
        // protected data before they see that the lock is available.
        //
        if (ATOMIC::OPS::Increment<int>(&_state, -1, ATOMIC::BARRIER_CS_PREV) != STATE_LOCKED_NO_WAITERS)
        {
            // We get here if there may be waiters on the lock.  Set the _state to UNLOCKED
            // and wake up one waiter.
            //
            ATOMIC::OPS::Store(&_state, STATE_UNLOCKED);
            OS::FutexWake(const_cast<int *>(&_state), 1);
        }
    }


    /*!
     * Attempts to acquire the lock, but does not block the caller.
     *
     * @return  Returns TRUE if the lock is acquired, FALSE if not.
     */
    bool TryLock()
    {
        int s = ATOMIC::OPS::CompareAndSwap<int>(&_state, STATE_UNLOCKED,
            STATE_LOCKED_NO_WAITERS, ATOMIC::BARRIER_CS_NEXT);
        return (s == STATE_UNLOCKED);
    }

public:
    // This member is public only to make SIMPLE_LOCK_SAFEPOD_FUTEX a POD.
    // Do not access it directly.  Note that '_state' will be implicitly
    // initialized as 0 (STATE_UNLOCKED) when SIMPLE_LOCK_SAFEPOD_FUTEX is
    // declared as a static or global variable.
    //
    volatile int _state;

    // Possible lock states.  Note that the order of the values is important because we
    // sometimes changes states via atomic-decrement.
    //
    static const int STATE_UNLOCKED = 0;
    static const int STATE_LOCKED_NO_WAITERS = 1;
    static const int STATE_LOCKED_MAYBE_WAITERS = 2;
};


/*!
 * A simple non-recursive lock that uses Linux "futexes" to place blocked
 * threads in an efficient wait state.  The algorithm follows the design
 * described in "Futexes Are Tricky" by Ulrich Drepper.
 *
 * This implementation of SIMPLE_LOCK is intended for Linux hosts because it
 * uses Linux-style "futex" system calls.  However, it may be useful on other
 * hosts too if you can provide the "futex" functionality.
 *
 * @tparam OS               Type which provides O/S primitives.  See
 *                           \ref SYNC_OS.  The \a OS type must define the
 *                           FutexWait() and FutexWake() methods.
 * @tparam SPIN_ITERATIONS  If the lock is contended, we spin this many times
 *                           before attempting to block.  Each of these
 *                           iterations has an exponentially increasing delay.
 */
template<typename OS, unsigned SPIN_ITERATIONS = 4> class /*<UTILITY>*/ SIMPLE_LOCK_FUTEX
    : public SIMPLE_LOCK
{
public:
    /*!
     * The initial sate of the lock is "not locked".
     */
    SIMPLE_LOCK_FUTEX() {_impl.Initialize();}

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
    SIMPLE_LOCK_SAFEPOD_FUTEX<OS, SPIN_ITERATIONS> _impl;
};

} // namespace
#endif // file guard
