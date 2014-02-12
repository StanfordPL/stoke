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

#ifndef UTIL_RANGE_HPP
#define UTIL_RANGE_HPP

#include "fund.hpp"
#include "util/round.hpp"


namespace UTIL {

/*!
 * Utility that holds and manipulates an address range.
 */
template<typename ADDRTYPE> class /*<UTILITY>*/ RANGE
{
public:
    RANGE() : _base(0), _size(0) {}     ///< Create an empty address range.

    /*!
     * Create an address range.
     *
     *  @param[in] base     Start of the range.
     *  @param[in] size     Size (bytes) of the range.
     */
    RANGE(ADDRTYPE base, size_t size) : _base(base), _size(size) {}

    /*!
     * Create an address range.
     *
     *  @param[in] base     Start of the range.
     *  @param[in] size     Size (bytes) of the range.
     */
    RANGE(void *base, size_t size) : _base(reinterpret_cast<FUND::PTRINT>(base)), _size(size) {}

    /*!
     * Assigns a new value to the range.
     *
     *  @param[in] base     Start of the range.
     *  @param[in] size     Size (bytes) of the range.
     */
    void Assign(ADDRTYPE base, size_t size)
    {
        _base = base;
        _size = size;
    }

    /*!
     * Assigns a new value to the range.
     *
     *  @param[in] base     Start of the range.
     *  @param[in] size     Size (bytes) of the range.
     */
    void Assign(void *base, size_t size)
    {
        _base = reinterpret_cast<FUND::PTRINT>(base);
        _size = size;
    }

    ADDRTYPE GetBase() const    { return _base; }           ///< @return Start of the range.
    size_t GetSize() const      { return _size; }           ///< @return Size of the range.
    ADDRTYPE GetEnd() const     { return _base + _size; }   ///< @return Address 1 byte beyond range end.
    void Clear()                { _base = 0;  _size = 0; }  ///< Makes the range empty.

    /*!
     * Aligns the starting and ending addresses of the range.  Afterwards, the
     * original range is contained by the new one, and the start and end are aligned.
     *
     *  @param[in] alignment    Desired alignement (bytes).
     */
    void AlignEndpoints(size_t alignment)
    {
        ADDRTYPE end = RoundUp(GetEnd(), alignment);
        _base = RoundDown(_base, alignment);
        _size = end - _base;
    }

    /*!
     * Tells if the range contains an address.
     *
     *  @param[in] addr     Address to test.
     *
     * @return  TRUE if range contains the address.
     */
    bool Contains(ADDRTYPE addr) const
    {
        return ((addr - _base) < _size);
    }

    /*!
     * Tells if the range contains all addresses in another range.
     *
     *  @param[in] range    Range to test.
     *
     * @return  TRUE if range contains \a range.
     */
    bool Contains(const RANGE &range) const
    {
        return (Contains(range.m_base) && !range.Contains(GetEnd()));
    }

private:
    ADDRTYPE _base;
    size_t _size;
};

typedef RANGE<FUND::ADDRINT> ARANGE;    ///< A range of target addresses.
typedef RANGE<FUND::ANYADDR> ANYRANGE;  ///< A range of ANYADDR's.
typedef RANGE<FUND::PTRINT> PRANGE;     ///< A range of host addresses.

} // namespace
#endif // file guard
