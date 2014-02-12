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

#ifndef UTIL_ROUND_HPP
#define UTIL_ROUND_HPP

#include "fund.hpp"


namespace UTIL {

/*!
 * Rounds an integer value down.
 *
 *  @param[in] val      Integral value.
 *  @param[in] align    The \a val is rounded down to this alignment (need not be a power of 2).
 *
 * @return  The rounded value.
 */
template<typename T> T RoundDown(T val, size_t align)
{
    size_t mod = val % align;
    val -= mod;
    return val;
}

/*!
 * Rounds an integer value up.
 *
 *  @param[in] val      Integral value.
 *  @param[in] align    The \a val is rounded up to this alignment (need not be a power of 2).
 *
 * @return  The rounded value.
 */
template<typename T> T RoundUp(T val, size_t align)
{
    size_t mod = val % align;
    if (mod)
        val += (align - mod);
    return val;
}

/*!
 * Rounds a pointer down.
 *
 *  @param[in] ptr      A pointer.
 *  @param[in] align    The \a ptr is rounded down to this alignment (need not be a power of 2).
 *
 * @return  The rounded pointer value.
 */
template<typename T> T *RoundDown(T *ptr, size_t align)
{
    FUND::PTRINT val = reinterpret_cast<FUND::PTRINT>(ptr);
    size_t mod = val % align;
    val -= mod;
    return reinterpret_cast<T*>(val);
}

/*!
 * Rounds a pointer up.
 *
 *  @param[in] ptr      A pointer.
 *  @param[in] align    The \a ptr is rounded up to this alignment (need not be a power of 2).
 *
 * @return  The rounded pointer value.
 */
template<typename T> T *RoundUp(T *ptr, size_t align)
{
    FUND::PTRINT val = reinterpret_cast<FUND::PTRINT>(ptr);
    size_t mod = val % align;
    if (mod)
        val += (align - mod);
    return reinterpret_cast<T*>(val);
}

/*!
 * Tells difference between two pointers.
 *
 *  @param[in] ptr1     Usually the pointer to higher memory.
 *  @param[in] ptr2     Usually the pointer to lower memory.
 *
 * @return  The difference in bytes from \a ptr2 to \a ptr1.
 */
inline size_t PtrDiff(const void* ptr1, const void* ptr2)
{
    return static_cast<const FUND::INT8 *>(ptr1) - static_cast<const FUND::INT8 *>(ptr2);
}

/*!
 * Compute a pointer that is an offset from a base pointer.
 *
 *  @param[in] ptr      The base pointer.
 *  @param[in] offset   Offset in bytes.
 *
 * @return  A new pointer that is \a offset bytes from \a ptr.
 */
inline void *PtrAtOffset(void *ptr, size_t offset)
{
    return static_cast<FUND::INT8 *>(ptr) + offset;
}

/*!
 * Compute a pointer that is an offset from a base pointer.
 *
 *  @param[in] ptr      The base pointer.
 *  @param[in] offset   Offset in bytes.
 *
 * @return  A new pointer that is \a offset bytes from \a ptr.
 */
inline const void *PtrAtOffset(const void* ptr, size_t offset)
{
    return static_cast<const FUND::INT8 *>(ptr) + offset;
}


} // namespace
#endif // file guard
