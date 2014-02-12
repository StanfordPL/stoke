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

#ifndef ATOMIC_IDSET_HPP
#define ATOMIC_IDSET_HPP

#include "fund.hpp"
#include "atomic/ops.hpp"
#include "atomic/nullstats.hpp"


namespace ATOMIC {


/*! @brief  Maintains a set of unique IDs.
 *
 * A non-blocking utility that maintains a set of small integral IDs.  Clients
 * can request a unique ID and release an ID when it is no longer needed.  The
 * IDSET reuses IDs that have been released to ensure that the ID numbers remain
 * small.
 *
 *  @param MaxID    The IDSET allows IDs in the inclusive range [1, MaxID]
 *  @param STATS    Type of an object that collects statistics.  See NULLSTATS for a model.
 *
 * @par Example:
 *                                                                                          \code
 *  #include "atomic/idset.hpp"
 *
 *  ATOMIC::IDSET<31> IdGenerator;
 *
 *  void Foo()
 *  {
 *      FUND::UINT32 id = IdGenerator.GetID();
 *      IdGenerator.ReleaseID(id);
 *  }
 *                                                                                          \endcode
 */
template<FUND::UINT32 MaxID, typename STATS=NULLSTATS> class /*<UTILITY>*/ IDSET
{
  public:
    /*!
     * Construct a new IDSET.  This method is NOT atomic.
     *
     *  @param[in] stats    The new statistics collection object.
     */
    IDSET(STATS *stats=0) : _stats(stats)
    {
        for (FUND::UINT32 i = 0;  i < _numElements;  i++)
            _bits[i] = 0;

        // If MaxID is not an even multiple of the number of bits in a UINT32,
        // the _bits[] will contain some "extra" bits.  Permanently reserve these
        // extra bit positions so GetID() never returns an ID greater than MaxID.
        //
        const FUND::UINT32 MaxIDMod32 = MaxID % 32;
        if (MaxIDMod32)
            _bits[_numElements-1] = ( (1<<((32-MaxIDMod32)%32)) - 1) << MaxIDMod32;
    }

    /*!
     * Set the statistics collection object.  This method is NOT atomic.
     *
     *  @param[in] stats    The new statistics collection object.
     */
    void SetStatsNonAtomic(STATS *stats)
    {
        _stats = stats;
    }

    /*!
     * Request a new ID that is not currently in use.
     *
     * @return  Returns an ID in the range [1, MaxID] or 0 if there are no
     *           unused IDs.
     */
    FUND::UINT32 GetID()
    {
        EXPONENTIAL_BACKOFF<STATS> backoff(1, _stats);

        for (FUND::UINT32 i = 0;  i < _numElements;  i++)
        {
            FUND::UINT32 val = OPS::Load(&_bits[i]);

            while (val != 0xffffffff)
            {
                FUND::UINT32 bit = 0;
                for (FUND::UINT32 tval = val;  tval & 1;  tval >>= 1)
                    bit++;

                FUND::UINT32 newval = val | (1 << bit);
                if (OPS::CompareAndDidSwap(&_bits[i], val, newval))
                    return i*sizeof(FUND::UINT32) + bit + 1;

                backoff.Delay();
                val = OPS::Load(&_bits[i]);
            }
        }

        return 0;
    }

    /*!
     * Release an ID, making it available for reuse.
     *
     *  @param[in] id   The ID, which must be in the range [1,MaxID].
     */
    void ReleaseID(FUND::UINT32 id)
    {
        id--;
        FUND::UINT32 i = id >> 5;
        FUND::UINT32 bit = 1 << (id & 0x1f);

        FUND::UINT32 val;
        FUND::UINT32 newval;
        EXPONENTIAL_BACKOFF<STATS> backoff(1, _stats);

        do {
            backoff.Delay();
            val = OPS::Load(&_bits[i]);
            newval = val & ~bit;
        } while (!OPS::CompareAndDidSwap(&_bits[i], val, newval));
    }

  private:
    static const FUND::UINT32 _numElements = (MaxID + 8*sizeof(FUND::UINT32)-1) / (8*sizeof(FUND::UINT32));
    volatile FUND::UINT32 _bits[_numElements];

    STATS *_stats;  // Object which collects statistics, or NULL
};

} // namespace
#endif // file guard
