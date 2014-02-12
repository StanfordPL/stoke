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
// <ORIGINAL-AUTHOR>: Alex Skaletsky
// <COMPONENT>: sync
// <FILE-TYPE>: component private header

#ifndef SYNC_READER_WRITER_LOCK_SPIN_HPP
#define SYNC_READER_WRITER_LOCK_SPIN_HPP

#include "atomic.hpp"
#include "fund.hpp"
#include "sync/config.hpp"
#include "sync/reader-writer-lock.hpp"


namespace SYNC {


/*!
 * This is a SAFEPOD implementation of READER_WRITER_LOCK_SPIN.  See
 * \ref SYNC_POD for a description of why this is useful.  Unless you need the
 * special SAFEPOD semantics, you probably want to use READER_WRITER_LOCK_SPIN
 * instead.
 *
 * @tparam OS   Type which provides O/S primitives.  See \ref SYNC_OS.  The \a OS
 *               type must define the Yield() method.
 */
template<typename OS> class /*<POD>*/ READER_WRITER_LOCK_SAFEPOD_SPIN
{
public:
    /*!
     * Initialize the lock before its first use.
     *
     * @return  Always returns TRUE.
     */
    bool Initialize()
    {
        const_cast<STATE &>(_state).Reset();
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
        Initialize();
    }

    /*!
     * Acquire the lock for "read" access.  Multiple "reader" threads may
     * simultaneously acquire the lock.
     */
    void ReadLock()
    {
        if (TryReadLock())
            return;

        ATOMIC::EXPONENTIAL_BACKOFF<> backoff;
        STATE_PAIR statePair;
        while (TRUE) 
        {
            backoff.Delay();
            LoadCurrentState(&statePair);
            if (!statePair.ProposeReadState())
            {
                OS::Yield();
                backoff.Reset(); //Reset backoff delay after Yield
                continue;
            }
            if (SetLockState(&statePair))
                return;
        }
    }

    /*!
     * Acquire the lock for exclusive "write" access.  A "writer" thread has
     * exclusive ownership of the lock, not shared by any other "reader" or
     * "writer" threads.
     */
    void WriteLock()
    {
        if (TryWriteLock())
            return;

        ATOMIC::EXPONENTIAL_BACKOFF<> backoff;
        STATE_PAIR statePair;
        bool isWaiting = FALSE; //TRUE, if this writer is on the waiting list
        while (TRUE) 
        {
            backoff.Delay();
            LoadCurrentState(&statePair);
            if (!isWaiting)
            {
                // Try to acquire the lock right away - without waiting list
                //
                if (!statePair.ProposeWriteState())
                {
                    // Lock is busy, try to put this writer on the waiting list
                    //
                    statePair.ProposeWaitState();
                    isWaiting = SetState(&statePair);
                    continue;
                }
            }
            else if (!statePair.ProposeWriteAfterWaitState())
            {
                // Lock is still busy - leave this writer on the waiting list and Yield
                //
                OS::Yield();
                backoff.Reset(); //Reset backoff delay after Yield
                continue;
            } 
            if (SetLockState(&statePair))
                return;
        }
    }

    /*!
     * Release the lock.  Used for both "readers" and "writers".
     */
    void Unlock()
    {
        ATOMIC::EXPONENTIAL_BACKOFF<> backoff;
        STATE_PAIR statePair;
        do 
        {
            backoff.Delay();
            LoadCurrentState(&statePair);
            statePair.ProposeUnlockState();
        }
        while (!SetUnlockState(&statePair));
    }

    /*!
     * Attempts to acquire the lock as a "reader" thread, but does not
     * block the caller.
     *
     * @return  Returns TRUE if the lock is acquired, FALSE if not.
     */
    bool TryReadLock()
    {
        STATE_PAIR statePair;
        LoadCurrentState(&statePair);
        if (!statePair.ProposeReadState())
            return false;
        return SetLockState(&statePair);
    }

    /*!
     * Attempts to acquire the lock as an exclusive "writer" thread, but
     * does not block the caller.
     *
     * @return  Returns TRUE if the lock is acquired, FALSE if not.
     */
    bool TryWriteLock()
    {
        STATE_PAIR statePair;
        LoadCurrentState(&statePair);
        if (!statePair.ProposeWriteState())
            return false;
        return SetLockState(&statePair);
    }

public:
    // Everything below should be treated as private.  It is only declared
    // public to make READER_WRITER_LOCK_SAFEPOD_SPIN a POD.

    // The entire lock state is contained in this one word.  Notice that
    // when '_state' is binary zero, the lock is not acquired.  Therefore,
    // the lock is implicitly initialized when an object is declared as
    // a global or static variable.
    //
    union STATE
    {
        bool IsEmpty() const            {return (_word == 0);}
        void Reset()                    {_word = 0;}
        FUND::UINT16 & ActiveReaders()  {return _s._activeReaders;}
        FUND::UINT16 & WaitingWriters() {return _s._waitingWriters;}

        struct 
        {
            // Number of readers holding the lock or WRITE_LOCKVAL if the lock is held by 
            // a writer.
            //
            FUND::UINT16   _activeReaders;

            // Number of writers in the waiting list to acquire the lock.
            //
            FUND::UINT16   _waitingWriters;
        } _s;
        FUND::UINT32 _word;
    };
    volatile STATE _state;

    // Value of _activeReaders when lock is held by a writer.
    //
    static const FUND::UINT16 WRITE_LOCKVAL = 0xffff;


    // Pair of lock states.
    //
    struct STATE_PAIR
    {
        STATE _current;     // Current state of the lock.
        STATE _next;        // Desired next state of the lock.

        // Set new state to what it would be when the lock is acquired for read access.
        // Return FALSE if read access can not be acquired in the current state.
        //
        bool ProposeReadState()
        {
            // Do not allow new readers when:
            //  - There is an active writer.
            //  - The active reader count is already "WRITE_LOCKVAL-1", which is the maximum.
            //  - There is a waiting writer, because we want to avoid writer starvation.
            //
            // However, when the lock is not currently acquired by either a reader or a
            // writer, give prospective readers and writers equal preference.
            //
            if ((_current.ActiveReaders() >= (WRITE_LOCKVAL-1)) ||
                ((_current.WaitingWriters() != 0) && (_current.ActiveReaders() != 0)))
            {
                return false;
            }
            _next.ActiveReaders() = _current.ActiveReaders() + 1;
            _next.WaitingWriters() = _current.WaitingWriters();
            return true;
        }

        // Set new state to what it would be when the lock is acquired for write access
        // by a writer that is not on the waiting list.
        // Return FALSE if write access can not be acquired in the current state.
        //
        bool ProposeWriteState()
        {
            if (!_current.IsEmpty())
                return false;
            _next.ActiveReaders() = WRITE_LOCKVAL;
            _next.WaitingWriters() = _current.WaitingWriters();
            return true;
        }

        // Set new state to what it would be when one more writer is added to the waiting 
        // list of the current state.
        //
        void ProposeWaitState()
        {
            _next.ActiveReaders() = _current.ActiveReaders();
            _next.WaitingWriters() = _current.WaitingWriters() + 1;
            SYNC_CHECK_ASSERT(_next.WaitingWriters() != 0);
        }

        // Set new state to what it would be when the lock is acquired for write access
        // by a writer from the waiting list.
        // Return FALSE if write access can not be acquired in the current state.
        //
        bool ProposeWriteAfterWaitState()
        {
            SYNC_CHECK_ASSERT(_current.WaitingWriters() != 0);
            if (_current.ActiveReaders() != 0)
                return false;
            _next.ActiveReaders() = WRITE_LOCKVAL;
            _next.WaitingWriters() = _current.WaitingWriters() - 1;
            return true;
        }

        // Set new state to what it would be when the lock is released.
        //
        void ProposeUnlockState()
        {
            if (_current.ActiveReaders() == WRITE_LOCKVAL)
            {
                _next.ActiveReaders() = 0; //Release write lock
            }
            else
            {
                SYNC_CHECK_ASSERT(_current.ActiveReaders() != 0);
                _next.ActiveReaders() = _current.ActiveReaders() - 1; // Release read lock
            }
            _next.WaitingWriters() = _current.WaitingWriters();
        }
    };


    /*!
     * Read the current state of the lock.
     *
     *  @param[out] statePair   Receives the current lock state in '_current'.
     */
    void LoadCurrentState(STATE_PAIR *statePair)
    {
        statePair->_current._word = ATOMIC::OPS::Load(&(_state._word));
    }

    /*!
     * Attempt to write new state with "lock acquire" semantics.
     *
     *  @param[in] statePair    The new state that is written.
     *
     * @return  TRUE if the new state is successfully written.
     */
    bool SetLockState(STATE_PAIR *statePair)
    {
        return ATOMIC::OPS::CompareAndDidSwap(&(_state._word), statePair->_current._word, 
            statePair->_next._word, ATOMIC::BARRIER_CS_NEXT);
    }

    /*!
     * Attempt to write new state with "lock release" semantics.
     *
     *  @param[in] statePair    The new state that is written.
     *
     * @return  TRUE if the new state is successfully written.
     */
    bool SetUnlockState(STATE_PAIR *statePair)
    {
        return ATOMIC::OPS::CompareAndDidSwap(&(_state._word), statePair->_current._word, 
            statePair->_next._word, ATOMIC::BARRIER_CS_PREV);
    }

    /*!
     * Attempt to write new state with neither acquire nor release semantics.
     *
     *  @param[in] statePair    The new state that is written.
     *
     * @return  TRUE if the new state is successfully written.
     */
    bool SetState(STATE_PAIR *statePair)
    {
        return ATOMIC::OPS::CompareAndDidSwap(&(_state._word), statePair->_current._word, 
            statePair->_next._word);
    }
};


/*!
 * A reader-writer lock that uses active spin loops for blocked threads.  This is not
 * very efficient, but it is very portable.
 *
 * @tparam OS   Type which provides O/S primitives.  See \ref SYNC_OS.  The \a OS
 *               type must define the Yield() method.
 */
template<typename OS> class /*<UTILITY>*/ READER_WRITER_LOCK_SPIN : public READER_WRITER_LOCK 
{
public:
    /*!
     * The new lock is initially not acquired
     */
    READER_WRITER_LOCK_SPIN() {_impl.Initialize();}

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
     * Acquire the lock for "read" access.  Multiple "reader" threads may
     * simultaneously acquire the lock.
     */
    void ReadLock() {_impl.ReadLock();}

    /*!
     * Acquire the lock for exclusive "write" access.  A "writer" thread has
     * exclusive ownership of the lock, not shared by any other "reader" or
     * "writer" threads.
     */
    void WriteLock() {_impl.WriteLock();}

    /*!
     * Release the lock.  Used for both "readers" and "writers".
     */
    void Unlock() {_impl.Unlock();}

    /*!
     * Attempts to acquire the lock as a "reader" thread, but does not
     * block the caller.
     *
     * @return  Returns TRUE if the lock is acquired, FALSE if not.
     */
    bool TryReadLock() {return _impl.TryReadLock();}

    /*!
     * Attempts to acquire the lock as an exclusive "writer" thread, but
     * does not block the caller.
     *
     * @return  Returns TRUE if the lock is acquired, FALSE if not.
     */
    bool TryWriteLock() {return _impl.TryWriteLock();}

private:
    READER_WRITER_LOCK_SAFEPOD_SPIN<OS> _impl;
};

} // namespace
#endif // file guard
