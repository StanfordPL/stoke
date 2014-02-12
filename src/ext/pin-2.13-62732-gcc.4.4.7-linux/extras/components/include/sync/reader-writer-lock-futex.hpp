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

#ifndef SYNC_READER_WRITER_LOCK_FUTEX_HPP
#define SYNC_READER_WRITER_LOCK_FUTEX_HPP

#include "atomic.hpp"
#include "sync/config.hpp"
#include "sync/reader-writer-lock.hpp"
#include "sync/semaphore-futex.hpp"
#include "sync/simple-lock-futex.hpp"


namespace SYNC {


/*!
 * This is a SAFEPOD implementation of READER_WRITER_LOCK_FUTEX.  See
 * \ref SYNC_POD for a description of why this is useful.  Unless you need the
 * special SAFEPOD semantics, you probably want to use READER_WRITER_LOCK_FUTEX
 * instead.
 *
 * @tparam OS   Type which provides O/S primitives.  See \ref SYNC_OS.  The
 *               \a OS type must define the FutexWait() and FutexWake() methods.
 */
template<typename OS> class /*<POD>*/ READER_WRITER_LOCK_SAFEPOD_FUTEX
{
public:
    /*!
     * Initialize the lock before its first use.
     *
     * @return  Always returns TRUE.
     */
    bool Initialize()
    {
        _lock.Initialize();
        _count = 0;
        _waiterSemaphore.Initialize();
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
        _lock.Lock();
        ATOMIC::OPS::Increment(&_count, 1);
        _lock.Unlock();
    }

    /*!
     * Acquire the lock for exclusive "write" access.  A "writer" thread has
     * exclusive ownership of the lock, not shared by any other "reader" or
     * "writer" threads.
     */
    void WriteLock()
    {
        _lock.Lock();
        if (ATOMIC::OPS::Increment(&_count, -1) != 0)
        {
            // Wait until the last reader releases the lock.  Note that in
            // the common case, when there is no contention, we avoid both
            // this Wait() and the Clear().
            //
            _waiterSemaphore.Wait();

            // We have exclusive ownership of the lock after being
            // woken up, so it's safe to clear the semaphore now.
            //
            _waiterSemaphore.Clear();
        }
    }

    /*!
     * Release the lock.  Used for both "readers" and "writers".
     */
    void Unlock()
    {
        int prevCount = ATOMIC::OPS::Increment(&_count, -1);
        if (prevCount == 0)
        {
            // If the count goes from 0 => -1, there is a waiting writer and
            // this is the last reader.  Wake up the waiting writer.
            //
            _waiterSemaphore.Set();
        }
        else if (prevCount == -1)
        {
            // If the count goes from -1 => -2, this is a writer.  Reset '_count'
            // and release the lock, which allows new readers or writers to
            // acquire it.
            //
            _count = 0;
            _lock.Unlock();
        }
        else
        {
            // Any other value indicates either: 1) that this is a reader releasing
            // the lock and there are other active readers, or 2) that this is the
            // last reader releasing the lock and there are no waiting writers.
            //
            SYNC_CHECK_ASSERT(prevCount > 0);
        }
    }

    /*!
     * Attempts to acquire the lock as a "reader" thread, but does not
     * block the caller.
     *
     * @return  Returns TRUE if the lock is acquired, FALSE if not.
     */
    bool TryReadLock()
    {
        if (_lock.TryLock())
        {
            ATOMIC::OPS::Increment(&_count, 1);
            _lock.Unlock();
            return true;
        }
        return false;
    }

    /*!
     * Attempts to acquire the lock as an exclusive "writer" thread, but
     * does not block the caller.
     *
     * @return  Returns TRUE if the lock is acquired, FALSE if not.
     */
    bool TryWriteLock()
    {
        if (_lock.TryLock())
        {
            if (ATOMIC::OPS::Load(&_count) == 0)
            {
                // Set '_count' to indicate that there is an active writer.
                // Since we own the lock now, we don't need atomic store
                // here.
                //
                _count = -1;
                return true;
            }
            _lock.Unlock();
        }
        return false;
    }

public:
    // These are declared public only to make READER_WRITER_LOCK_SAFEPOD_FUTEX
    // a POD.  Do not access directly.

    // This lock serves two purposes.  First, it helps protect the two data
    // members below.  Second, writers acquire this lock when they attempt to
    // acquire "write" access to the RW lock.  This ensures that only one
    // writer owns the RW lock at a time.  It also prevents new readers from
    // acquiring the RW lock when there is a waiting writer.
    //
    SIMPLE_LOCK_SAFEPOD_FUTEX<OS> _lock;

    // The value of '_count' depends on the situation:
    //
    // *) No one holds the lock ............... 0
    // *) Active readers & no waiting writer .. The number of active readers.
    // *) Writer waiting on _waiterSemaphore .. One less than the number of active readers.
    // *) Active writer ....................... -1
    //
    // This is marked "volatile" because readers will atomically decrement it
    // without acquiring '_lock'.
    //
    volatile int _count;

    // If a prospective writer needs to wait until active readers release the
    // lock, it waits on this semaphore.  Since writers first try to acquire
    // '_lock', there can be at most one writer waiting on this semaphore.
    // (Any other writers will be blocked on '_lock'.)
    //
    SEMAPHORE_SAFEPOD_FUTEX<OS> _waiterSemaphore;
};


/*!
 * A non-recursive reader / writer lock that uses Linux "futex" to place blocked
 * threads in an efficient wait state.  The algorithm is based on one by Paul
 * Mackerras ("http://www.kernel.org/pub/linux/kernel/people/rusty/futex-2.0.tar.gz").
 * However, the algorithm below has been modified somewhat.
 *
 * This implementation of READER_WRITER_LOCK is intended for Linux hosts because
 * it uses the Linux-style "futex" system call.  However, it may be useful on other
 * hosts too if you can provide the "futex" functionality.
 *
 * @tparam OS   Type which provides O/S primitives.  See \ref SYNC_OS.  The \a OS
 *               type must define the FutexWait() and FutexWake() methods.
 */
template<typename OS> class /*<UTILITY>*/ READER_WRITER_LOCK_FUTEX : public READER_WRITER_LOCK 
{
public:
    /*!
     * The new lock is initially not acquired
     */
    READER_WRITER_LOCK_FUTEX() {_impl.Initialize();}

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
    READER_WRITER_LOCK_SAFEPOD_FUTEX<OS> _impl;
};

} // namespace
#endif // file guard
