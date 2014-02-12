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

#ifndef SYNC_SEMAPHORE_HPP
#define SYNC_SEMAPHORE_HPP


namespace SYNC {

/*!
 * Model for a binary semaphore.  A binary semaphore can have exactly two
 * states: set or clear.  One or more threads may wait on a semaphore until
 * some other thread changes the state to "set".
 *
 * There are several concrete implementations of SEMAPHORE which all share
 * this interface.  In order to use a SEMAPHORE, you must create an object
 * with one of those concrete impementations (e.g. SEMAPHORE_SPIN).  Some
 * concrete implementations of SEMAPHORE (e.g. POD and SAFEPOD) do not derive
 * from this base class.  See \ref SYNC_POD for a description.
 */
class /*<UTILITY>*/ SEMAPHORE
{
public:
    /*!
     * Initialize the semaphore before its first use.  This method is provided
     * for implementations of SEMAPHORE that could fail during initialization.
     * Implementations which cannot fail during initialization are fully
     * initialized by their constructor, but they still provide a dummy version
     * of Initialize().
     *
     * @return  TRUE on success.
     */
    virtual bool Initialize() = 0;

    /*!
     * It is usually not necessary to call this method because the destructor
     * will destroy the semaphore.  Calling Destroy() will cause the semaphore
     * to be uninitialized, but you may call Initialize() to re-initialize the
     * object later.  The Destroy() method is provided mostly to retain symmetry
     * with the POD and SAFEPOD implementations of SEMAPHORE.
     */
    virtual void Destroy() = 0;

    /*!
     * Change the semaphore to "set" state and tell any waiters in Wait() or
     * TimedWait() to resume.  Those threads are guaranteed to return from
     * Wait() or TimedWait() only if the semaphore is still "set" when they
     * actually do resume running.
     */
    virtual void Set() = 0;

    /*!
     * Change the semaphore to "clear" state.
     */
    virtual void Clear() = 0;

    /*!
     * Check whether the semaphore's state is "set".  This method always returns
     * immediately.
     *
     * @return  TRUE if the state is "set".
     */
    virtual bool IsSet() = 0;

    /*!
     * Block the calling thread until the semaphore's state is "set".  This
     * method returns immediately if the state is already "set".
     */
    virtual void Wait() = 0;

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
    virtual bool TimedWait(unsigned timeout) = 0;

    virtual ~SEMAPHORE() {}
};

} // namespace
#endif // file guard
