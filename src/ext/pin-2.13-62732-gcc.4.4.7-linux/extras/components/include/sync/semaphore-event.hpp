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

#ifndef SYNC_SEMAPHORE_EVENT_HPP
#define SYNC_SEMAPHORE_EVENT_HPP

#include "atomic.hpp"
#include "sync/semaphore.hpp"


namespace SYNC {


/*!
 * This is a POD implementation of SEMAPHORE_EVENT.  See \ref SYNC_POD
 * for a description of why this is useful.  Unless you need the special
 * POD semantics, you probably want to use SEMAPHORE_EVENT instead.
 *
 * @tparam OS   Type which provides O/S primitives.  See \ref SYNC_OS.  The
 *               \a OS type must define the EVENT_T type, and the
 *               EventCreate(), EventDelete(), EventSet(), EventClear(),
 *               EventWait(), and EventTimedWait() methods.
 */
template<typename OS> class /*<POD>*/ SEMAPHORE_POD_EVENT
{
public:
    /*!
     * Initialize the semaphore before its first use.
     *
     * @return  TRUE on success.
     */
    bool Initialize()
    {
        if (!OS::EventCreate(&_event))
        {
            _state = STATE_INVALID;
            return false;
        }
        _state = STATE_CLEAR;
        return true;
    }

    /*!
     * Destroy and deallocate resources for the semaphore.
     */
    void Destroy()
    {
        if (_state != STATE_INVALID)
            OS::EventDelete(_event);
    }

    /*!
     * Change the semaphore to "set" state and tell any waiters in Wait() or
     * TimedWait() to resume.  Those threads are guaranteed to return from
     * Wait() or TimedWait() only if the semaphore is still "set" when they
     * actually do resume running.
     */
    void Set()
    {
        ATOMIC::OPS::Store(&_state, STATE_SET);
        OS::EventSet(_event);
    }

    /*!
     * Change the semaphore to "clear" state.
     */
    void Clear()
    {
        ATOMIC::OPS::Store(&_state, STATE_CLEAR);
        OS::EventClear(_event);
    }

    /*!
     * Check whether the semaphore's state is "set".  This method always returns
     * immediately.
     *
     * @return  TRUE if the state is "set".
     */
    bool IsSet()
    {
        return (ATOMIC::OPS::Load(&_state) == STATE_SET);
    }

    /*!
     * Block the calling thread until the semaphore's state is "set".  This
     * method returns immediately if the state is already "set".
     */
    void Wait()
    {
        if (ATOMIC::OPS::Load(&_state) == STATE_CLEAR)
            OS::EventWait(_event);
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
        if (ATOMIC::OPS::Load(&_state) == STATE_SET)
            return true;
        return OS::EventTimedWait(_event, timeout);
    }

public:
    // These are declared public only to make SEMAPHORE_POD_EVENT a POD.  Do
    // not access them directly.

    enum STATE
    {
        STATE_INVALID,
        STATE_SET,
        STATE_CLEAR
    };

    volatile STATE _state;
    typename OS::EVENT_T _event;
};


/*!
 * A binary semaphore that is based on a Windows-style "event".
 *
 * This implementation of SEMAPHORE is intended for Windows hosts, but it may
 * be useful on other hosts too if you can provide the "event" functionality.
 *
 * @tparam OS   Type which provides O/S primitives.  See \ref SYNC_OS.  The
 *               \a OS type must define the EVENT_T type, and the
 *               EventCreate(), EventDelete(), EventSet(), EventClear(),
 *               EventWait(), and EventTimedWait() methods.
 */
template<typename OS> class /*<UTILITY>*/ SEMAPHORE_EVENT : public SEMAPHORE 
{
public:
    /*!
     * You must call Initialize() to complete initialization of the
     * semaphore.
     */
    SEMAPHORE_EVENT()
    {
        _impl._state = SEMAPHORE_POD_EVENT<OS>::STATE_INVALID;
    }

    ~SEMAPHORE_EVENT() {_impl.Destroy();}

    /*!
     * Initialize the event before its first use.
     *
     * @return  TRUE on success.
     */
    bool Initialize() {return _impl.Initialize();}

    /*!
     * It is not necessary to call this method.  It is provided only for symmetry.
     */
    void Destroy() {_impl.Destroy();}

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
    SEMAPHORE_POD_EVENT<OS> _impl;
};

} // namespace
#endif // file guard
