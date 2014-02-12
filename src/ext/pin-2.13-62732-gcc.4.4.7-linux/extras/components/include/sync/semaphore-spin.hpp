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

#ifndef SYNC_SEMAPHORE_SPIN_HPP
#define SYNC_SEMAPHORE_SPIN_HPP

#include "atomic.hpp"
#include "sync/semaphore.hpp"


namespace SYNC {


/*!
 * This is a SAFEPOD implementation of SEMAPHORE_SPIN.  See \ref SYNC_POD
 * for a description of why this is useful.  Unless you need the special
 * SAFEPOD semantics, you probably want to use SEMAPHORE_SPIN instead.
 *
 * @tparam OS   Type which provides O/S primitives.  See \ref SYNC_OS.  The
 *               \a OS type must define the Yield() method.  If you you use
 *               the TimedWait() method, \a OS must also define TIME_T and
 *               GetTime().
 */
template<typename OS> class /*<POD>*/ SEMAPHORE_SAFEPOD_SPIN
{
public:
    /*!
     * Initialize the semaphore before its first use.
     *
     * @return  Always returns TRUE.
     */
    bool Initialize()
    {
        _state = false;
        return true;
    }

    /*!
     * It is not necessary to call this method.  It is provided only for symmetry.
     */
    void Destroy() {}

    /*!
     * Change the semaphore to "set" state and tell any waiters in Wait() or
     * TimedWait() to resume.  Those threads are guaranteed to return from
     * Wait() or TimedWait() only if the semaphore is still "set" when they
     * actually do resume running.
     */
    void Set()
    {
        // The BARRIER_ST_PREV ensures that any values written before
        // this call will be visible to other threads before the write
        // to '_state' is visible.
        //
        ATOMIC::OPS::Store(&_state, true, ATOMIC::BARRIER_ST_PREV);
    }

    /*!
     * Change the semaphore to "clear" state.
     */
    void Clear()
    {
        ATOMIC::OPS::Store(&_state, false);
    }

    /*!
     * Check whether the semaphore's state is "set".  This method always returns
     * immediately.
     *
     * @return  TRUE if the state is "set".
     */
    bool IsSet()
    {
        return _state;
    }

    /*!
     * Block the calling thread until the semaphore's state is "set".  This
     * method returns immediately if the state is already "set".
     */
    void Wait()
    {
        // The BARRIER_LD_NEXT ensures that any values written by another
        // thread prior to calling Set() will be visible to this thread
        // when it returns from Wait().
        //
        while (ATOMIC::OPS::Load(&_state, ATOMIC::BARRIER_LD_NEXT) == false)
            OS::Yield();
    }

    /*!
     * Block the calling thread until the semaphore's state is "set" or until
     * a timeout expires.  This method returns immediately if the state is
     * already "set".
     *
     *  @param[in] timeout  Maximum number of milliseconds to wait.
     *
     * @return  TRUE if the semaphore is in "set" state.  FALSE if this method
     *           returns instead due to the timeout.
     */
    bool TimedWait(unsigned timeout)
    {
        // Quick check to see if the state is already "set".  This avoids the
        // call to GetTime() below.
        //
        if (ATOMIC::OPS::Load(&_state, ATOMIC::BARRIER_LD_NEXT) == true)
            return true;

        // Get the timeout as an absolute timestamp in the future.
        //
        typename OS::TIME_T now;
        OS::GetTime(&now);
        typename OS::TIME_T endTime = now;
        endTime.AddMilliseconds(timeout);

        while (ATOMIC::OPS::Load(&_state, ATOMIC::BARRIER_LD_NEXT) == false)
        {
            OS::GetTime(&now);
            if (!(now < endTime))
                return false;
            OS::Yield();
        }

        return true;
    }

public:
    // This member is public only to make SEMAPHORE_SAFEPOD_SPIN a POD.  Do not
    // access it directly.  Note that '_state' will be implicitly initialized as
    // false when SEMAPHORE_SAFEPOD_SPIN is declared as a static or
    // global variable.
    //
    volatile bool _state;
};


/*!
 * A binary semaphore that uses active spin loops for blocked threads.  This
 * is not very efficient, but it is very portable.
 *
 * @tparam OS   Type which provides O/S primitives.  See \ref SYNC_OS.  The
 *               \a OS type must define the Yield() method.  If you you use
 *               the TimedWait() method, \a OS must also define TIME_T and
 *               GetTime().
 */
template<typename OS> class /*<UTILITY>*/ SEMAPHORE_SPIN : public SEMAPHORE 
{
public:
    /*!
     * The initial state of the semaphore is "clear".
     */
    SEMAPHORE_SPIN() {_impl.Initialize();}

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
     * Change the semaphore to "set" state and tell any waiters in Wait() or
     * TimedWait() to resume.  Those threads are guaranteed to return from
     * Wait() or TimedWait() only if the semaphore is still "set" when they
     * actually do resume running.
     */
    void Set() {_impl.Set();}

    /*!
     * Change the semaphore to "clear" state.
     */
    void Clear() {_impl.Clear();}

    /*!
     * Check whether the semaphore's state is "set".  This method always returns
     * immediately.
     *
     * @return  TRUE if the state is "set".
     */
    bool IsSet() {return _impl.IsSet();}

    /*!
     * Block the calling thread until the semaphore's state is "set".  This
     * method returns immediately if the state is already "set".
     */
    void Wait() {_impl.Wait();}

    /*!
     * Block the calling thread until the semaphore's state is "set" or until
     * a timeout expires.  This method returns immediately if the state is
     * already "set".
     *
     *  @param[in] timeout  Maximum number of milliseconds to wait.
     *
     * @return  TRUE if the semaphore is in "set" state.  FALSE if this method
     *           returns instead due to the timeout.
     */
    bool TimedWait(unsigned timeout) {return _impl.TimedWait(timeout);}

private:
    SEMAPHORE_SAFEPOD_SPIN<OS> _impl;
};

} // namespace
#endif // file guard
