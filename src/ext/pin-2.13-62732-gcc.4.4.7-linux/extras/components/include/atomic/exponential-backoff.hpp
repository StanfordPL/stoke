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

#ifndef ATOMIC_EXPONENTIAL_BACKOFF_HPP
#define ATOMIC_EXPONENTIAL_BACKOFF_HPP

#include "fund.hpp"
#include "atomic/nullstats.hpp"
#include "atomic/private/backoff-impl.hpp"


namespace ATOMIC {


/*! @brief  Helper object for exponential delays.
 *
 * A helper object that implements an exponential backoff algorithm.  This is most often
 * used inside a compare-swap loop to prevent thrashing when there is high contention.
 *
 *  @param STATS    Type of an object that collects statistics.  See NULLSTATS for a model.
 *
 * @par Example:
 *                                                                                          \code
 *  #include "atomic/exponential-backoff.hpp"
 *  #include "atomic/ops.hpp"
 *
 *  void Foo()
 *  {
 *      ATOMIC::EXPONENTIAL_BACKOFF<> backoff;
 *      do {
 *          backoff.Delay();
 *          oldVal = ....
 *          newVal = ....
 *      } while (!ATOMIC::OPS::CompareAndDidSwap(&val, oldVal, newVal));
 *  }
 *                                                                                          \endcode
 */
template<typename STATS=NULLSTATS> class /*<UTILITY>*/ EXPONENTIAL_BACKOFF
{
  public:
    /*!
     * @param[in] freeIterations    Number of times through loop before Delay() does anything.
     * @param[in] stats             Object to keep track of statistics, or NULL
     */
    EXPONENTIAL_BACKOFF(FUND::UINT32 freeIterations = 1, STATS *stats = 0)
    :
        _freeIterations(freeIterations), _iteration(0), _stats(stats)
    {}

    ~EXPONENTIAL_BACKOFF()
    {
        if (_stats && _iteration > _freeIterations)
            _stats->Backoff(_iteration - _freeIterations);
    }

    /*!
     * Reset the object to the first "iteration".
     */
    void Reset()
    {
        if (_stats && _iteration > _freeIterations)
            _stats->Backoff(_iteration - _freeIterations);
        _iteration = 0;
    }

    /*!
     * Delay for a short period of time and advance to the next "iteration".  The delay
     * time typically grows longer for each successive iteration.
     */
    void Delay()
    {
        if (_iteration++ < _freeIterations)
            return;

        FUND::UINT32 fixed = 1 << (_iteration - 1 - _freeIterations);
        FUND::UINT32 mask = fixed - 1;
        FUND::UINT32 random = (reinterpret_cast<FUND::PTRINT>(&random) >> 4) & mask;
        FUND::UINT32 delay = fixed + random;

        ATOMIC_SpinDelay(delay);
    }

    /*!
     * @return  The number of times Delay() has been called since the last Reset().
     */
    FUND::UINT32 GetIterationCount()
    {
        return _iteration;
    }

  private:
    const FUND::UINT32 _freeIterations; // number "free" iterations before we start to delay
    FUND::UINT32 _iteration;            // current iteration
    STATS *_stats;                      // points to object which collects statistics, or NULL
};

} // namespace
#endif // file guard
