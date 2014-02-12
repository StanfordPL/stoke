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

#ifndef UTIL_SCOPED_PTR_HPP
#define UTIL_SCOPED_PTR_HPP

#include <assert.h>


namespace UTIL {


/*!
 * A simple smart pointer, inspired by boost::scoped_ptr.  Pointers managed by
 * SCOPED_PTR cannot be shared, and there is no reference counting overhead.  A
 * scoped pointer is simply deleted at the end of the enclosing scope.  Since
 * these pointers can't be shared, SCOPED_PTR disallows assignment from one
 * SCOPED_PTR to another.
 */
template<typename T> class /*<UTILITY>*/ SCOPED_PTR
{
public:
    /*!
     * Create a smart pointer wrapper for \a p.
     *
     *  @param[in] p     A pointer from "new", or NULL.
     */
    explicit SCOPED_PTR(T *p = 0) : _ptr(p) {}

    /*!
     * The destructor automatically calls delete on the pointer.
     */
    ~SCOPED_PTR()
    {
        delete _ptr;    // Note, delete of NULL is defined to do nothing.
    }

    /*!
     * Deletes the underlying pointer, then assigns a new pointer.
     *
     *  @param[in] p    A pointer from "new", or NULL.
     */
    void Reset(T *p = 0)
    {
        delete _ptr;
        _ptr = p;
    }

    /*!
     * @return A reference to the underlying pointer, which must not be NULL.
     */
    T & operator*() const
    {
        assert(_ptr != 0);
        return *_ptr;
    }

    /*!
     * @return The underlying pointer, which must not be NULL.
     */
    T * operator->() const
    {
        assert(_ptr != 0);
        return _ptr;
    }

    /*!
     * @return The underlying pointer.
     */
    T * Get() const
    {
        return _ptr;
    }

    /*!
     * Exchange the contents of two smart pointers.
     *
     *  @param[in] other    The other pointer that is exchanged.
     */
    void Swap(SCOPED_PTR &other)
    {
        T *t = other._ptr;
        other._ptr = _ptr;
        _ptr = t;
    }

    /*!
     * Conversion to bool.
     *
     * @return  TRUE if the underlying pointer is not NULL.
     */
    operator bool () const
    {
        return (_ptr != 0);
    }

    /*!
     * @return  TRUE if the underlying pointer is NULL.
     */
    bool operator! () const
    {
        return (_ptr == 0);
    }

private:
    T *_ptr;

    SCOPED_PTR(SCOPED_PTR const &);
    SCOPED_PTR & operator=(SCOPED_PTR const &);
};

} // namespace
#endif // file guard
