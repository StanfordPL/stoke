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

#ifndef SYNC_READER_WRITER_LOCK_HPP
#define SYNC_READER_WRITER_LOCK_HPP


namespace SYNC {

/*!
 * Model for a non-recursive reader / writer lock.  All implementations of
 * READER_WRITER lock derive from this base class.
 */
class /*<UTILITY>*/ READER_WRITER_LOCK
{
public:
    READER_WRITER_LOCK() {}    ///< The new lock is initially not acquired.

    /*!
     * Initialize the lock before its first use.  This method is provided
     * for implementations of READER_WRITER_LOCK that could fail during
     * initialization.  Implementations which cannot fail during initialization
     * provide a dummy version of Initialize(), and calling the method is
     * optional for those implementations.
     *
     * @return  TRUE on success.
     */
    virtual bool Initialize() = 0;

    /*!
     * Set the state of the lock to "not locked", even if the calling thread
     * does not own the lock.
     */
    virtual void Reset() = 0;

    /*!
     * Acquire the lock for "read" access.  Multiple "reader" threads may
     * simultaneously acquire the lock.
     */
    virtual void ReadLock() = 0;

    /*!
     * Acquire the lock for exclusive "write" access.  A "writer" thread has
     * exclusive ownership of the lock, not shared by any other "reader" or
     * "writer" threads.
     */
    virtual void WriteLock() = 0;

    /*!
     * Release the lock.  Used for both "readers" and "writers".
     */
    virtual void Unlock() = 0;

    /*!
     * Attempts to acquire the lock as a "reader" thread, but does not
     * block the caller.
     *
     * @return  Returns TRUE if the lock is acquired, FALSE if not.
     */
    virtual bool TryReadLock() = 0;

    /*!
     * Attempts to acquire the lock as an exclusive "writer" thread, but
     * does not block the caller.
     *
     * @return  Returns TRUE if the lock is acquired, FALSE if not.
     */
    virtual bool TryWriteLock() = 0;

    virtual ~READER_WRITER_LOCK() {}
};

} // namespace
#endif // file guard
