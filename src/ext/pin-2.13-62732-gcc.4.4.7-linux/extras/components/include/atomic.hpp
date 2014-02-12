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
// <COMPONENT>: atomic
// <FILE-TYPE>: component public header

#ifndef ATOMIC_HPP
#define ATOMIC_HPP

/*! @mainpage ATOMIC library
 *
 * The ATOMIC library provides a variety of non-blocking atomic utility routines, such as thread safe queues
 * and associative maps.  These utilities use hardware primitives such as compare-and-swap to maintain
 * atomicity, not locks, which makes them safe even when used in asynchronous interrupt handlers.
 *
 * All utilities have a C++ template interface, somewhat reminiscent of the STL.  As a result, they should
 * be easy to customize for use with your own data structures.  The ATOMIC library is currently supported
 * on both Linux and Windows, on IA-32, Intel(R) 64, and Itanium(R) processors.
 *
 * Queues:
 *  - @ref ATOMIC::LIFO_CTR             "LIFO_CTR - Last-in-first-out queue"
 *  - @ref ATOMIC::LIFO_PTR             "LIFO_PTR - Last-in-first-out queue"
 *  - @ref ATOMIC::FIXED_LIFO           "FIXED_LIFO - Last-in-first-out queue with pre-allocated elements"
 *
 * Associative maps and sets:
 *  - @ref ATOMIC::FIXED_MULTIMAP       "FIXED_MULTIMAP - Associative map with pre-allocated elements"
 *  - @ref ATOMIC::FIXED_MULTISET       "FIXED_MULTISET - Unordered set of data with pre-allocated elements"
 *
 * Fundamental operations, utilities:
 *  - @ref ATOMIC::OPS                  "OPS - Fundamental atomic operations"
 *  - @ref ATOMIC::EXPONENTIAL_BACKOFF  "EXPONENTIAL_BACKOFF - Helper object for exponential delays"
 *  - @ref ATOMIC::IDSET                "IDSET - Maintains a set of unique IDs"
 *  - @ref ATOMIC::NULLSTATS            "NULLSTATS - Model for a statistics-gathering object"
 *
 * Configuration:
 *  - @ref CONFIG
 */

/*! @brief The ATOMIC library. */
namespace ATOMIC {}

#include "atomic/ops.hpp"
#include "atomic/lifo-ctr.hpp"
#include "atomic/lifo-ptr.hpp"
#include "atomic/fixed-lifo.hpp"
#include "atomic/fixed-multimap.hpp"
#include "atomic/fixed-multiset.hpp"
#include "atomic/idset.hpp"
#include "atomic/exponential-backoff.hpp"

#endif // file guard
