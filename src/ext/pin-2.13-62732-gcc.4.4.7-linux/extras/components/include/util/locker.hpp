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
// <COMPONENT>: util
// <FILE-TYPE>: component public header

#ifndef UTIL_LOCKER_HPP
#define UTIL_LOCKER_HPP

namespace UTIL {

/*!
 * A simple utility that manages a mutex lock.  The lock is automatically acquired on
 * entry to the scope and released on exit.
 *
 *  @param LOCK     Any type that supports Lock() and Unlock() methods with the usual semantics.
 */
template<class LOCK> class /*<UTILITY>*/ LOCKER
{
public:
    /*!
     *  @param[in] lock     The lock to acquire.
     *  @param[in] acquire  If TRUE, the constructor acquires the lock.
     */
    LOCKER(LOCK *lock, bool acquire = true) : _lock(lock), _isLocked(acquire)
    {
        if (acquire)
            _lock->Lock();
    }

    /*!
     * The destructor releases the lock unless it was manually released via Unlock().
     */
    ~LOCKER()
    {
        if (_isLocked)
            _lock->Unlock();
    }

    /*!
     * Manually release the lock.
     */
    void Unlock()
    {
        _lock->Unlock();
        _isLocked = false;
    }

    /*!
     * Manually acquire the lock.  This only makes sense if the lock was manually released
     * via Unlock().  No error checking is done to prevent self-deadlock.
     */
    void Lock()
    {
        _lock->Lock();
        _isLocked = true;
    }

    /*!
     * Indicate that the lock has been acquired or released outside of this wrapper.
     *
     *  @param[in] isLocked     TRUE if the lock has been acquired.
     */
    void SetLocked(bool isLocked)
    {
        _isLocked = isLocked;
    }

private:
    LOCK *_lock;
    bool _isLocked;
};


/*!
 * A simple utility that manages a Microsoft CRITICAL_SECTION.  The critical section
 * is automatically acquired on entry to the scope and released on exit.
 *
 *  @param CSTYPE   Usually this is the Microsoft CRITICAL_SECTION type, but you can
 *                   use any type that works with functions named EnterCriticalSection()
 *                   and LeaveCriticalSection().
 */
template <typename CSTYPE> class /*<UTILITY>*/ SCOPED_CRITICAL_SECTION
{
public:
    /*!
     *  @param[in] cs       The critical section to acquire.
     *  @param[in] acquire  If TRUE, the constructor acquires the critical section.
     */
    SCOPED_CRITICAL_SECTION(CSTYPE *cs, bool acquire = true) : _cs(cs), _isLocked(acquire)
    {
        if (acquire)
            EnterCriticalSection(cs);
    }

    /*!
     * The destructor releases the critical section unless it was manually released via Unlock().
     */
    ~SCOPED_CRITICAL_SECTION()
    {
        if (_isLocked)
            LeaveCriticalSection(_cs);
    }

    /*!
     * Manually release the critical section.
     */
    void Unlock()
    {
        LeaveCriticalSection(_cs);
        _isLocked = false;
    }

    /*!
     * Manually acquire the critical section.  This only makes sense if the critical section
     * was manually released via Unlock().  No error checking is done to prevent self-deadlock.
     */
    void Lock()
    {
        EnterCriticalSection(_cs);
        _isLocked = true;
    }

    /*!
     * Indicate that the critical section has been acquired or released outside of this wrapper.
     *
     *  @param[in] isLocked     TRUE if the critical section has been acquired.
     */
    void SetLocked(bool isLocked)
    {
        _isLocked = isLocked;
    }

private:
    CSTYPE *_cs;
    bool _isLocked;
};

} // namespace
#endif // file guard
