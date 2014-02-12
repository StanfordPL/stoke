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
// <FILE-TYPE>: component private header

#ifndef ATOMIC_PRIVATE_OPS_COMMON_IMPL_HPP
#define ATOMIC_PRIVATE_OPS_COMMON_IMPL_HPP

#include "fund.hpp"
#include "atomic/exponential-backoff.hpp"
#include "atomic/ops-enum.hpp"


namespace ATOMIC {

/*
 * Generic implementations of some operations using compare-and-swap.  These implementations
 * are used on architectures that have compare-and-swap, but do not have an instruction that
 * directly implements the operation in question.  Clients should not use this class directly,
 * but should use OPS instead.
 */
namespace OPS_IMPL
{
    template<unsigned size> static inline void CompareAndSwap(volatile void *location, const void *oldVal,
        void *newVal, BARRIER_CS ignored);

    template<unsigned size> static inline void Load(volatile const void *location, void *val, BARRIER_LD ignored);


    // ---------- Swap ----------

    template<typename T> inline void SwapByCompareAndSwap(volatile void *location, void *oldVal,
        const void *newVal, BARRIER_SWAP barrier)
    {
        T oldv;
        T newv;
        T val = *static_cast<const T *>(newVal);

        BARRIER_CS myBarrier =
            (barrier == BARRIER_SWAP_NONE) ? BARRIER_CS_NONE :
            (barrier == BARRIER_SWAP_PREV) ? BARRIER_CS_PREV :
            BARRIER_CS_NEXT;

        EXPONENTIAL_BACKOFF<> backoff;
        do
        {
            backoff.Delay();
            Load<sizeof(T)>(location, static_cast<void *>(&oldv), BARRIER_LD_NONE);
            newv = val;
            CompareAndSwap<sizeof(T)>(location, static_cast<const void *>(&oldv), static_cast<void *>(&newv), myBarrier);
        }
        while (newv != oldv);

        *static_cast<T *>(oldVal) = oldv;
    }


    // ---------- Increment ----------

    template<typename T> static inline void IncrementByCompareAndSwap(volatile void *location,
        const void *inc, void *oldVal, BARRIER_CS barrier)
    {
        T oldv;
        T newv;
        T increment = *static_cast<const T *>(inc);

        EXPONENTIAL_BACKOFF<> backoff;
        do
        {
            backoff.Delay();
            Load<sizeof(T)>(location, static_cast<void *>(&oldv), BARRIER_LD_NONE);
            newv = oldv + increment;
            CompareAndSwap<sizeof(T)>(location, static_cast<const void *>(&oldv), static_cast<void *>(&newv), barrier);
        }
        while (newv != oldv);

        *static_cast<T *>(oldVal) = oldv;
    }
}


} // namespace
#endif // file guard
