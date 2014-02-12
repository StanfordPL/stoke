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

#ifndef ATOMIC_FIXED_LIFO_HPP
#define ATOMIC_FIXED_LIFO_HPP

#include "fund.hpp"
#include "util/numberbits.hpp"
#include "atomic/config.hpp"
#include "atomic/lifo-ctr.hpp"
#include "atomic/nullstats.hpp"


namespace ATOMIC {


/*! @brief  Last-in-first-out queue with pre-allocated elements.
 *
 * A LIFO queue that is thread safe and safe to use from signal handlers.  It uses
 * compare-and-swap operations to maintain atomicity rather than locking.
 * This ensures that queue operations are safe even if a signal interrupts an
 * operation and the signal handler accesses the same queue.  The queue also
 * statically allocates all of its data, so operations on the queue will never
 * attempt to dynamically allocate memory.
 *
 *  @param OBJECT       Type of the object which each queue element holds.
 *  @param Capacity     Maximum number of objects that the queue can hold.
 *  @param CounterBits  The queue contains a counter which is used to maintain atomicity.
 *                       (See LIFO_CTR for more information.)
 *  @param STATS        Type of an object that collects statistics.  See NULLSTATS for a model.
 *
 * @par Example:
 *                                                                                          \code
 *  #include "atomic/fixed-lifo.hpp"
 *
 *  struct MyElement
 *  {
 *      unsigned _myMember;
 *  };
 *
 *  ATOMIC::FIXED_LIFO<MyElement, 128> Queue;
 *
 *  void Foo()
 *  {
 *      MyElement el;
 *      Queue.Push(el);     // Pushes a copy of 'el'
 *      Queue.Pop(&el);     // Assigns 'el' to a copy of the popped element
 *  }
 *                                                                                          \endcode
 */
template<typename OBJECT, unsigned int Capacity, unsigned int CounterBits=32, typename STATS=NULLSTATS>
 class /*<UTILITY>*/ FIXED_LIFO
{
  public:
    /*!
     * Construct a new (empty) queue.  This method is NOT atomic.
     */
    FIXED_LIFO(STATS *stats=0) : _activeQueue(&_elementHeap, stats), _freeQueue(&_elementHeap, stats)
    {
        ClearNonAtomic();
    }

    /*!
     * Set the statistics collection object.  This method is NOT atomic.
     *
     *  @param[in] stats    The new statistics collection object.
     */
    void SetStatsNonAtomic(STATS *stats)
    {
        _activeQueue.SetStatsNonAtomic(stats);
        _freeQueue.SetStatsNonAtomic(stats);
    }

    /*!
     * Initialize to empty queue.  This method is NOT atomic.
     */
    void ClearNonAtomic()
    {
        unsigned int i = 0;
        for (i = 0;  i+1 < Capacity;  i++)
            _elementHeap._elements[i]._next = &_elementHeap._elements[i+1];
        _elementHeap._elements[i]._next = 0;

        _activeQueue.AssignNonAtomic(0);
        _freeQueue.AssignNonAtomic(&_elementHeap._elements[0]);
    }

    /*!
     * Copy all the elements from one queue into another.  This method is NOT atomic,
     * so the caller must ensure that neither the copied-to queue nor the copied-from
     * queue are accessed from another thread.
     *
     *  @param src  The queue to copy.
     *
     * @return  Returns a reference to the copied-to queue.
     */
    FIXED_LIFO& operator=(const FIXED_LIFO &src)
    {
        unsigned int i;

        // Link all of our _elements[] into a list.
        //
        for (i = 0;  i < Capacity-1;  i++)
            _elementHeap._elements[i]._next = &_elementHeap._elements[i+1];
        _elementHeap._elements[i]._next = 0;

        // Copy each allocated element from 'src' into our list.
        //
        i = 0;
        for (const ELEMENT *element = src._activeQueue.Head();  element;  element = element->_next)
            _elementHeap._elements[i++]._obj = element->_obj;
        if (i > 0)
            _elementHeap._elements[i-1]._next = 0;
        ATOMIC_CHECK_ASSERT(i <= Capacity);

        // Set up the active and free queues.
        //
        if (i > 0)
            _activeQueue.AssignNonAtomic(&_elementHeap._elements[0]);
        else
            _activeQueue.AssignNonAtomic(0);

        if (i < Capacity)
            _freeQueue.AssignNonAtomic(&_elementHeap._elements[i]);
        else
            _freeQueue.AssignNonAtomic(0);

        return *this;
    }

    /*!
     * Push an object onto the head of the queue.
     *
     *  @param[in] userObj    The object to insert.
     *
     * @return  Returns TRUE on success, FALSE if the queue's capacity would be exceeded.
     */
    bool Push(const OBJECT &userObj)
    {
        ELEMENT *element = _freeQueue.Pop();
        if (!element)
            return false;

        element->_obj = userObj;

        _activeQueue.Push(element);
        return true;
    }

    /*!
     * Pop object off the head of the queue.
     *
     *  @param[out] userObj     Receives the object.
     *
     * @return  Returns TRUE if there is an object to pop.  Returns FALSE if the queue is empty.
     */
    bool Pop(OBJECT *userObj)
    {
        ELEMENT *element = _activeQueue.Pop();
        if (!element)
            return false;

        *userObj = element->_obj;

        _freeQueue.Push(element);
        return true;
    }

    /*!
     * Tells whether the queue is empty.
     *
     * @return  Returns TRUE if the queue contains no elements.
     */
    bool Empty() const
    {
        const ELEMENT *head = _activeQueue.Head();
        return (head == 0);
    }

    /*!
     * Atomically, remove all the elements from the queue and copy them into an STL
     * (or STL-like) container.  The head of the queue is pushed onto the container
     * first, then the next element of the queue, etc.
     *
     *  @param[in,out] container  The container which receives the queue elements.
     *                             The container must implement the "push_back" method
     *                             with the normal STL semantics.
     *
     * @return  The number of elements copied to \a container.
     */
    template<typename Container> unsigned MoveToContainer(Container *container)
    {
        unsigned count = 0;

        ELEMENT *element = _activeQueue.Clear();
        while (element)
        {
            container->push_back(element->_obj);
            ELEMENT *next = element->_next;
            _freeQueue.Push(element);
            element = next;
            count++;
        }

        return count;
    }

    /*!
     * Copy pointers to each element in the queue to a container.  The elements
     * themselves remain in the queue afterwards.  The element at the head of the
     * queue is copied to element 0 of the container, etc.
     *
     * This method is NOT atomic.  The caller must ensure that there are no
     * insertions or deletions while this method is active.  Moreover, the caller
     * can only safely dereference the resulting pointers so long as the queue
     * remains unmodified.
     *
     *  @param[in,out] container  The container which receives pointers to the
     *                             queue elements.  The container must implement the
     *                             "push_back" method with the normal STL semantics.
     */
    template<typename Container> void CopyPointersToContainerNonAtomic(Container *container) const
    {
        const ELEMENT *element = _activeQueue.Head();
        while (element)
        {
            container->push_back(&element->_obj);
            element = element->_next;
        }
    }

  private:
    struct ELEMENT
    {
        ELEMENT * volatile _next;
        OBJECT _obj;
    };

    struct ELEMENT_HEAP
    {
        FUND::UINT32 Index(const ELEMENT *element) const
        {
            if (!element)
                return 0;
            return (element - _elements) + 1;
        }
    
        ELEMENT *Pointer(FUND::UINT32 iElement)
        {
            if (!iElement)
                return 0;
            return &_elements[iElement-1];
        }

        ELEMENT _elements[Capacity];
    };

    ELEMENT_HEAP _elementHeap;

    static const FUND::UINT32 CapacityBits = UTIL::NUMBER_BITS<Capacity>::count;

    // _activeQueue is a list of objects that are "in" the FIXED_LIFO.  _freeQueue is a list
    // of unused ELEMENT's.
    //
    LIFO_CTR<ELEMENT, ELEMENT_HEAP, CapacityBits, CounterBits, FUND::UINT64, STATS> _activeQueue;
    LIFO_CTR<ELEMENT, ELEMENT_HEAP, CapacityBits, CounterBits, FUND::UINT64, STATS> _freeQueue;
};

} // namespace
#endif // file guard
