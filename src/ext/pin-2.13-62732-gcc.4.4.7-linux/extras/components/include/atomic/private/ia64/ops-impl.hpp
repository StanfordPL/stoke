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

#ifndef ATOMIC_PRIVATE_IA64_OPS_IMPL_HPP
#define ATOMIC_PRIVATE_IA64_OPS_IMPL_HPP

#include "fund.hpp"
#include "atomic/ops-enum.hpp"
#include "atomic/private/ops-common-impl.hpp"
#include "atomic/private/ia64/ops-impl-ia64-asm.hpp"


namespace ATOMIC {

/*
 * Low-level implementation of fundemental atomic operations for the Itanium(R) architecture.
 * Clients should not use this class directly, but should use OPS instead.
 */
namespace OPS_IMPL
{
    // ---------- Compare-And-Swap ----------

    template<unsigned size> static inline void CompareAndSwap(volatile void *location, const void *oldVal,
        void *newVal, BARRIER_CS barrier);

    template<> inline void CompareAndSwap<1>(volatile void *location, const void *oldVal, void *newVal,
        BARRIER_CS barrier)
    {
        if (barrier == BARRIER_CS_PREV)
            ATOMIC_CompareAndSwap8Rel(location, oldVal, newVal);
        else
            ATOMIC_CompareAndSwap8Acq(location, oldVal, newVal);
    }

    template<> inline void CompareAndSwap<2>(volatile void *location, const void *oldVal, void *newVal,
        BARRIER_CS barrier)
    {
        if (barrier == BARRIER_CS_PREV)
            ATOMIC_CompareAndSwap16Rel(location, oldVal, newVal);
        else
            ATOMIC_CompareAndSwap16Acq(location, oldVal, newVal);
    }

    template<> inline void CompareAndSwap<4>(volatile void *location, const void *oldVal, void *newVal,
        BARRIER_CS barrier)
    {
        if (barrier == BARRIER_CS_PREV)
            ATOMIC_CompareAndSwap32Rel(location, oldVal, newVal);
        else
            ATOMIC_CompareAndSwap32Acq(location, oldVal, newVal);
    }

    template<> inline void CompareAndSwap<8>(volatile void *location, const void *oldVal, void *newVal,
        BARRIER_CS barrier)
    {
        if (barrier == BARRIER_CS_PREV)
            ATOMIC_CompareAndSwap64Rel(location, oldVal, newVal);
        else
            ATOMIC_CompareAndSwap64Acq(location, oldVal, newVal);
    }


    // ---------- Swap ----------

    template<unsigned size> static inline void Swap(volatile void *location, void *oldVal,
        const void *newVal, BARRIER_SWAP barrier);

    template<> inline void Swap<1>(volatile void *location, void *oldVal, const void *newVal,
        BARRIER_SWAP barrier)
    {
        if (barrier != BARRIER_SWAP_PREV)
        {
            ATOMIC_Swap8Acq(location, oldVal, newVal);
        }
        else
        {
            // There is no XCHG instruction with "release" semantics, so use compare-and-swap instead.
            //
            SwapByCompareAndSwap<FUND::UINT8>(location, oldVal, newVal, barrier);
        }
    }

    template<> inline void Swap<2>(volatile void *location, void *oldVal, const void *newVal,
        BARRIER_SWAP barrier)
    {
        if (barrier != BARRIER_SWAP_PREV)
        {
            ATOMIC_Swap16Acq(location, oldVal, newVal);
        }
        else
        {
            // There is no XCHG instruction with "release" semantics, so use compare-and-swap instead.
            //
            SwapByCompareAndSwap<FUND::UINT16>(location, oldVal, newVal, barrier);
        }
    }

    template<> inline void Swap<4>(volatile void *location, void *oldVal, const void *newVal,
        BARRIER_SWAP barrier)
    {
        if (barrier != BARRIER_SWAP_PREV)
        {
            ATOMIC_Swap32Acq(location, oldVal, newVal);
        }
        else
        {
            // There is no XCHG instruction with "release" semantics, so use compare-and-swap instead.
            //
            SwapByCompareAndSwap<FUND::UINT32>(location, oldVal, newVal, barrier);
        }
    }

    template<> inline void Swap<8>(volatile void *location, void *oldVal, const void *newVal,
        BARRIER_SWAP barrier)
    {
        if (barrier != BARRIER_SWAP_PREV)
        {
            ATOMIC_Swap64Acq(location, oldVal, newVal);
        }
        else
        {
            // There is no XCHG instruction with "release" semantics, so use compare-and-swap instead.
            //
            SwapByCompareAndSwap<FUND::UINT64>(location, oldVal, newVal, barrier);
        }
    }


    // ---------- Store ----------

    template<unsigned size> static inline void Store(volatile void *location, const void *val, BARRIER_ST barrier);

    template<> inline void Store<1>(volatile void *location, const void *val, BARRIER_ST barrier)
    {
        if (barrier == BARRIER_ST_PREV)
            ATOMIC_Store8Rel(location, val);
        else
            *static_cast<volatile FUND::UINT8*>(location) = *static_cast<const FUND::UINT8*>(val);
    }

    template<> inline void Store<2>(volatile void *location, const void *val, BARRIER_ST barrier)
    {
        if (barrier == BARRIER_ST_PREV)
            ATOMIC_Store16Rel(location, val);
        else
            *static_cast<volatile FUND::UINT16*>(location) = *static_cast<const FUND::UINT16*>(val);
    }

    template<> inline void Store<4>(volatile void *location, const void *val, BARRIER_ST barrier)
    {
        if (barrier == BARRIER_ST_PREV)
            ATOMIC_Store32Rel(location, val);
        else
            *static_cast<volatile FUND::UINT32*>(location) = *static_cast<const FUND::UINT32*>(val);
    }

    template<> inline void Store<8>(volatile void *location, const void *val, BARRIER_ST barrier)
    {
        if (barrier == BARRIER_ST_PREV)
            ATOMIC_Store64Rel(location, val);
        else
            *static_cast<volatile FUND::UINT64*>(location) = *static_cast<const FUND::UINT64*>(val);
    }


    // ---------- Load ----------

    template<unsigned size> static inline void Load(volatile const void *location, void *val, BARRIER_LD barrier);

    template<> inline void Load<1>(volatile const void *location, void *val, BARRIER_LD barrier)
    {
        if (barrier == BARRIER_LD_NEXT)
            ATOMIC_Load8Acq(location, val);
        else
            *static_cast<FUND::UINT8*>(val) = *static_cast<volatile const FUND::UINT8*>(location);
    }

    template<> inline void Load<2>(volatile const void *location, void *val, BARRIER_LD barrier)
    {
        if (barrier == BARRIER_LD_NEXT)
            ATOMIC_Load16Acq(location, val);
        else
            *static_cast<FUND::UINT16*>(val) = *static_cast<volatile const FUND::UINT16*>(location);
    }

    template<> inline void Load<4>(volatile const void *location, void *val, BARRIER_LD barrier)
    {
        if (barrier == BARRIER_LD_NEXT)
            ATOMIC_Load32Acq(location, val);
        else
            *static_cast<FUND::UINT32*>(val) = *static_cast<volatile const FUND::UINT32*>(location);
    }

    template<> inline void Load<8>(volatile const void *location, void *val, BARRIER_LD barrier)
    {
        if (barrier == BARRIER_LD_NEXT)
            ATOMIC_Load64Acq(location, val);
        else
            *static_cast<FUND::UINT64*>(val) = *static_cast<volatile const FUND::UINT64*>(location);
    }


    // ---------- Increment ----------

    template<unsigned size> static inline void Increment(volatile void *location, const void *inc,
        void *oldVal, BARRIER_CS barrier);

    // There is no atomic increment instruction on Itaium(R), so all specializations use
    // compare-and-swap.
    //
    template<> inline void Increment<1>(volatile void *location, const void *inc, void *oldVal,
        BARRIER_CS barrier)
    {
        IncrementByCompareAndSwap<FUND::UINT8>(location, inc, oldVal, barrier);
    }

    template<> inline void Increment<2>(volatile void *location, const void *inc, void *oldVal,
        BARRIER_CS barrier)
    {
        IncrementByCompareAndSwap<FUND::UINT16>(location, inc, oldVal, barrier);
    }

    template<> inline void Increment<4>(volatile void *location, const void *inc, void *oldVal,
        BARRIER_CS barrier)
    {
        IncrementByCompareAndSwap<FUND::UINT32>(location, inc, oldVal, barrier);
    }

    template<> inline void Increment<8>(volatile void *location, const void *inc, void *oldVal,
        BARRIER_CS barrier)
    {
        IncrementByCompareAndSwap<FUND::UINT64>(location, inc, oldVal, barrier);
    }
}


} // namespace
#endif // file guard
