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

#ifndef ATOMIC_FIXED_MULTISET_HPP
#define ATOMIC_FIXED_MULTISET_HPP

#include "fund.hpp"
#include "atomic/fixed-multimap.hpp"
#include "atomic/nullstats.hpp"


namespace ATOMIC {


/*! @brief  Unordered set of data with pre-allocated elements.
 *
 * A set container that is thread safe and safe to use from signal handlers.
 * It uses compare-and-swap operations to maintain atomicity rather than locking.
 * This ensures that operations are safe even if a signal interrupts an
 * operation and the signal handler accesses the same set.  The set also
 * statically allocates all of its data, so operations on the set will never
 * attempt to dynamically allocate memory.
 *
 *  @param KEY          The type of the data element contained in the set.  The
 *                       OPS operations (Load, Store, CompareAndSwap) must
 *                       be supported for this data type.
 *  @param InvalidKey1  The client must provide two "invalid" key values, which it
 *                       promises to never use when inserting into the set.
 *  @param InvalidKey2  The second "invalid" key value.
 *  @param Capacity     Maximum number of elements that the set can hold.
 *  @param STATS        Type of an object that collects statistics.  See NULLSTATS for a model.
 *
 * @par Example:
 *                                                                                          \code
 *  #include "atomic/fixed-multiset.hpp"
 *
 *  ATOMIC::FIXED_MULTISET<int, -1, -2, 128> Set;
 *
 *  void Foo()
 *  {
 *      Set.Add(1);
 *      bool found = Set.Find(1);
 *  }
 *                                                                                          \endcode
 */
template<typename KEY, KEY InvalidKey1, KEY InvalidKey2, unsigned int Capacity, typename STATS=NULLSTATS>
 class /*<UTILITY>*/ FIXED_MULTISET
{
  public:
    /*!
     * Construct a new (empty) set.  This method is NOT atomic.
     *
     *  @param[in] stats    The new statistics collection object.
     */
    FIXED_MULTISET(STATS *stats=0) : _map(stats) {}

    /*!
     * Set the statistics collection object.  This method is NOT atomic.
     *
     *  @param[in] stats    The new statistics collection object.
     */
    void SetStatsNonAtomic(STATS *stats)                  { _map.SetStatsNonAtomic(stats); }

    /*!
     * Remove all elements from the set.  This method is NOT atomic.
     */
    void ClearNonAtomic()                                 { _map.ClearNonAtomic(); }

    /*!
     * Add a new element to the set, even if the element already exists in the set.
     *
     *  @param[in] key      The element to add.
     */
    void Add(KEY key)                                     { _map.Add(key, EMPTY()); }

    /*!
     * Try to find an element in the set.
     *
     * This method is guaranteed to find an element if the set contains a match at
     * the start of the find operation and that matching element remains in the set
     * until the find completes.  If the matching element is inserted or removed during
     * the find operation, this method is not guaranteed to find it.
     *
     *  @param[in] key      The element to search for.
     *
     * @return  TRUE if the element exists.
     */
    bool Find(KEY key)                                    { return (_map.Find(key) != 0); }

    /*!
     * Attempt to find an element in the set for which a predicate returns TRUE.
     *
     * This method is guaranteed to find an element if the set contains a match at
     * the start of the find operation and that matching element remains in the set
     * until the find completes.  If the matching element is inserted or removed during
     * the find operation, this method is not guaranteed to find it.
     *
     *  @param[in] pred     An STL-like predicate functor.  A key is passed as the predicate's
     *                       only argument.  It returns TRUE if there is a match.
     *
     * @return  TRUE if the element exists.
     */
    template<typename PRED> bool FindIf(PRED pred)        { return (_map.FindIf(pred) != 0); }

    /*!
     * Attempt to remove an element from the set.
     *
     * This method is guaranteed to remove an element if the set contains a match at
     * the start of the remove operation and that matching element is not removed by
     * another client during this operation.  If a matching element is inserted during
     * this operation, it may or may not be removed.
     *
     *  @param[in] key  The key to search for.
     */
    void Remove(KEY key)                                  { _map.Remove(key); }

    /*!
     * Remove all the elements from the set for which a predicate function returns
     * TRUE.
     *
     * This method is guaranteed to remove an element if the set contains a match at
     * the start of the remove operation and that matching element is not removed by
     * another client during this operation.  If a matching element is inserted during
     * this operation, it may or may not be removed.
     *
     *  @param[in] pred     An STL-like predicate functor.  A key is passed as the predicate's
     *                       only argument.  If it returns TRUE, that element is removed.
     */
    template<typename PRED> void RemoveIf(PRED pred)      { _map.RemoveIf(pred); }

  private:
    struct EMPTY {};
    FIXED_MULTIMAP<KEY, EMPTY, InvalidKey1, InvalidKey2, Capacity, STATS> _map;
};

} // namespace
#endif // file guard
