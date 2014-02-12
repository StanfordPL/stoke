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

#ifndef UTIL_NUMBERBITS_HPP
#define UTIL_NUMBERBITS_HPP

#include "fund.hpp"


namespace UTIL {


/*! @brief  Compute the number of bits required to hold a constant integer value.
 *
 * This can be used to compute the number of bits required to hold an integer (up to a
 * 32-bit integer).  Usage is like this:
 *
 *                                                                                  \code
 * int nbits = NUMBER_BITS<54>::count;  // number of bits required to hold "54"
 *                                                                                  \endcode
 *
 * Note, the value computed is a compile-time constant, so it can be used wherever
 * a constant is allowed:
 *                                                                                  \code
 * struct FOO
 * {
 *    int a : NUMBER_BITS<54>::count;   // define a bit field large enough to hold "54"
 * };
 *                                                                                  \endcode
 */
template<FUND::UINT32 num> struct /*<UTILITY>*/ NUMBER_BITS
{
    static const FUND::UINT32 count = 
        ((num ? 1 : 0) +
        ((num>>1) ? 1 : 0) +
        ((num>>2) ? 1 : 0) +
        ((num>>3) ? 1 : 0) +
        ((num>>4) ? 1 : 0) +
        ((num>>5) ? 1 : 0) +
        ((num>>6) ? 1 : 0) +
        ((num>>7) ? 1 : 0) +
        ((num>>8) ? 1 : 0) +
        ((num>>9) ? 1 : 0) +
        ((num>>10) ? 1 : 0) +
        ((num>>11) ? 1 : 0) +
        ((num>>12) ? 1 : 0) +
        ((num>>13) ? 1 : 0) +
        ((num>>14) ? 1 : 0) +
        ((num>>15) ? 1 : 0) +
        ((num>>16) ? 1 : 0) +
        ((num>>17) ? 1 : 0) +
        ((num>>18) ? 1 : 0) +
        ((num>>19) ? 1 : 0) +
        ((num>>20) ? 1 : 0) +
        ((num>>21) ? 1 : 0) +
        ((num>>22) ? 1 : 0) +
        ((num>>23) ? 1 : 0) +
        ((num>>24) ? 1 : 0) +
        ((num>>25) ? 1 : 0) +
        ((num>>26) ? 1 : 0) +
        ((num>>27) ? 1 : 0) +
        ((num>>28) ? 1 : 0) +
        ((num>>29) ? 1 : 0) +
        ((num>>30) ? 1 : 0) +
        ((num>>31) ? 1 : 0));
};

} // namespace
#endif // file guard
