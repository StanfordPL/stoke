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

#ifndef SYNC_SIMPLE_LOCK_HPP
#define SYNC_SIMPLE_LOCK_HPP


namespace SYNC {

/*!
 * Model for a simple non-recursive lock.
 *
 * There are several concrete implementations of SIMPLE_LOCK which all share
 * this interface.  In order to use a SIMPLE_LOCK, you must create an object
 * with one of those concrete impementations (e.g. SIMPLE_LOCK_SPIN).  Some
 * concrete implementations of SIMPLE_LOCK (e.g. POD and SAFEPOD) do not derive
 * from this base class.  See \ref SYNC_POD for a description.
 */
class /*<UTILITY>*/ SIMPLE_LOCK
{
public:
    /*!
     * Initialize the lock before its first use.  This method is provided
     * for implementations of SIMPLE_LOCK that could fail during initialization.
     * Implementations which cannot fail during initialization are fully
     * initialized by their constructor, but they still provide a dummy version
     * of Initialize().
     *
     * @return  TRUE on success.
     */
    virtual bool Initialize() = 0;

    /*!
     * It is usually not necessary to call this method because the destructor
     * will destroy the lock.  Calling Destroy() will cause the lock to be
     * uninitialized, but you may call Initialize() to re-initialize the object
     * later.  The Destroy() method is provided mostly to retain symmetry with
     * the POD and SAFEPOD implementations of SIMPLE_LOCK.
     */
    virtual void Destroy() = 0;

    /*!
     * Set the state of the lock to "not locked", even if the calling thread
     * does not own the lock.  This method may only be called on a lock that is
     * already initialized.
     */
    virtual void Reset() = 0;

    /*!
     * Blocks the caller until the lock can be acquired.
     */
    virtual void Lock() = 0;

    /*!
     * Releases the lock.
     */
    virtual void Unlock() = 0;

    /*!
     * Attempts to acquire the lock, but does not block the caller.
     *
     * @return  Returns TRUE if the lock is acquired, FALSE if not.
     */
    virtual bool TryLock() = 0;

    virtual ~SIMPLE_LOCK() {}
};

} // namespace
#endif // file guard
