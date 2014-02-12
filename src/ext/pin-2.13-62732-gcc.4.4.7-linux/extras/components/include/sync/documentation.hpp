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
// <COMPONENT>: sync
// <FILE-TYPE>: component public header

#ifndef SYNC_DOCUMENTATION_HPP
#define SYNC_DOCUMENTATION_HPP


namespace SYNC {

/*! \page SYNC_POD Normal, POD, and SAFEPOD Class Types
 *
 * Each synchronization model has several possible implementation types.  For
 * example, SIMPLE_LOCK is an abstract model for a simple mutex lock.  There
 * are concrete implementations of this model named SIMPLE_LOCK_SPIN,
 * SIMPLE_LOCK_SAFEPOD_SPIN, SIMPLE_LOCK_FUTEX, etc.  Furthermore, there are
 * three categories of possible concrete implementations: normal, POD, and,
 * SAFEPOD.  The category can be inferred from the name of each concrete
 * implementation type (e.g. SIMPLE_LOCK_SAFEPOD_SPIN has category SAFEPOD).
 *
 * Normal types are normal C++ types, which have constructors and destructors.
 * Often the constructor will fully initialize the object, though some types
 * also have an Initialize() method that must also be called.  In general, it
 * is only necessary to call the Initialize() method if the type could return
 * an error during initialization.  It is never necessary to call the Destroy()
 * method because the destructor will always fully destroy the object.
 * However, "normal" types still provide a dummy Destroy() method so that they
 * have the same model as the POD and SAFEPOD types.
 *
 * All "normal" concrete types derive from their associated model base class.
 * For example, SIMPLE_LOCK_SPIN derives from SIMPLE_LOCK.  This allows you to
 * use a pointer to the base class as a generic pointer to any concrete
 * implementation.
 *
 * POD types are "plain old data", a term defined by the C++ language.  These
 * types do not have constructors or destructors, so they must be initialized
 * by calling their Initialize() method and they must be destroyed by calling
 * their Destroy() method.  POD types do not derive from the model base class
 * because POD types (as defined by the C++ language) cannot have base classes.
 *
 * SAFEPOD types are a special case of POD types.  When a SAFEPOD type is
 * initialized to binary zero, it is fully constructed.  As a result, SAFEPOD
 * objects that are declared as global or static variables are implicitly
 * initialized by the compiler.  Thus, it is never necessary to call the
 * Initialize() or Destroy() methods of a SAFEPOD type.  SAFEPOD objects can
 * be safely used within the global constructor of some other type because
 * they are guaranteed to be initialized even before the global constructors
 * execute.  Note, however, that SAFEPOD objects that are allocated on the
 * stack or heap are not initialized by default.  In these cases, you must
 * call the Initialize() method to initialize them.
 */

/*! \page SYNC_OS OS Template Parameter
 *
 * Most of the synchronization classes are defined as templates with an "OS"
 * template parameter, which provides the basic O/S primitives that each class
 * implementation needs.  The parameter should be the name of a "class" or
 * "struct" type that defines certain static methods (described below).
 *
 * If you are running on a Unix system, you can use one of the pre-defined 
 * "OS" struct's that implement these O/S primitives via the "barecrt" library.
 * For example:
 *
 *                                                                      \code
 *  #include "sync.hpp"
 *  #include "sync/os-barecrt.hpp"
 *
 *  SYNC::SIMPLE_LOCK_SPIN<SYNC::OS_BARECRT> MyLock;
 *                                                                      \endcode
 *
 * You may also define your own type for the "OS" parameter that provides the
 * required O/S primitives.  If you do this, your type must provide static
 * methods that have the same interface as those listed below.  Note that your
 * type need not define all of these methods.  It is only necessary to define
 * the methods that are required for the specific SYNC class that you use.
 * See the documentation of the "OS" parameter in each class for details on
 * this.  Here is an example showing this technique:
 *
 *                                                                      \code
 *  #include "sync.hpp"
 *
 *  struct MY_OS
 *  {
 *      // Yield the processor.
 *      //
 *      static void Yield()
 *      {
 *          // Implementation here
 *      }
 *  };
 *
 *  SYNC::SEMAPHORE_SPIN<MY_OS> MySemaphore;
 *                                                                      \endcode
 *
 * This is a description of all possible "OS" methods and types.  If your
 * custom "OS" struct defines one of these methods, it must match the
 * interface described here.
 *
 *                                                                      \code
 *  struct MY_OS
 *  {
 *      // Methods that can typically be implemented on any O/S.
 *
 *      // A type which represents a time duration.  This should be a class
 *      // or struct that defines the following methods.
 *      //
 *      class TIME_T
 *      {
 *      public:
 *          // Initialize the time to "zero" (no time duration).
 *          //
 *          TIME_T();
 *
 *          // Initialize the time to be a copy of \a other.
 *          //
 *          //  @param[in] other    New time is a copy of this time.
 *          //
 *          TIME_T(const TIME_T &other);
 *
 *          // Add \a milliseconds to this time.
 *          //
 *          //  @param[in] milliseconds     Number of milliseconds.
 *          //
 *          void operator AddMilliseconds(unsigned milliseconds);
 *
 *          // Compare two times.
 *          //
 *          //  @param[in] other    Time to compare against.
 *          //
 *          // @return  TRUE if this time is less than \a other.
 *          //
 *          bool operator <(const TIME_T &);
 *
 *          // Decrement the time.  The implementation can assume that "this"
 *          // time is >= to \a other time.
 *          //
 *          //  @param[in] other    Time duration which is subtracted from
 *          //                       "this" time.
 *          //
 *          void operator -=(const TIME_T &other);
 *      };
 *
 *      // Yield the processor.
 *      //
 *      static void Yield();
 *
 *      // Get the current wall-clock time since some arbitrary reference
 *      // point.  The starting reference point must be at, or before, the
 *      // beginning of the process.
 *      //
 *      //  @param[out] timeval     Receives the current time.
 *      //
 *      static void GetTime(TIME_T *timeval);
 *
 *
 *      // Methods that are typically implemented only on Linux.
 *
 *      // This method is typically only used on Linux hosts.  Block the calling
 *      // thread if the value of \a futex is \a val or until a timeout expires.
 *      // This method might also return "sporadically" (when \a futex still has
 *      // the value \a val and the timeout has not expired).
 *      //
 *      //  @param[in] futex    Pointer to "futex" variable.
 *      //  @param[in] val      The call only blocks if \a futex has this value.
 *      //  @param[in] timeout  If not NULL, the timeout duration.  If NULL,
 *      //                       there is no timeout.
 *      //
 *      static void FutexWait(int *futex, int val, const TIME_T *timeout);
 *
 *      // This method is typically only used on Linux hosts.  Wake threads that
 *      // are waiting on a futex variable.
 *      //
 *      //  @param[in] futex            Pointer to the "futex" variable.
 *      //  @param[in] numberToWake     The maximum number of threads to wake up.
 *      //
 *      static void FutexWake(int *futex, int numberToWake);
 *
 *
 *      // Methods that are typically implemented only on Windows.
 *
 *      typedef <some type> EVENT_T;    // Handle to a Windows-style "event".
 *
 *      // Create a Windows-style "event".  The event should be a manual-reset
 *      // event whose initial state is non-signaled.
 *      //
 *      //  @param[out] event   Receives the event handle on success.
 *      //
 *      // @return  TRUE if the event is successfully created.
 *      //
 *      static bool EventCreate(EVENT_T *event);
 *
 *      // Delete an event that was previously created with EventCreate().
 *      //
 *      //  @param[in] event    Handle to the event to delete.
 *      //
 *      static void EventDelete(EVENT_T event);
 *
 *      // Change an event to "signaled" state.
 *      //
 *      //  @param[in] event    Handle to the event.
 *      //
 *      static void EventSet(EVENT_T event);
 *
 *      // Change an event to "non-signaled" state.
 *      //
 *      //  @param[in] event    Handle to the event.
 *      //
 *      static void EventClear(EVENT_T event);
 *
 *      // Block the calling thread until an event has the "signaled" state.
 *      //
 *      //  @param[in] event    Handle to the event.
 *      //
 *      static void EventWait(EVENT_T event);
 *
 *      // Block the calling thread until an event has the "signaled" state or
 *      // until a timeout expires.
 *      //
 *      //  @param[in] event    Handle to the event.
 *      //  @param[in] timeout  The timeout value in milliseconds.
 *      //
 *      // @return  TRUE if the event has "signaled" state.
 *      //
 *      static bool EventTimedWait(EVENT_T event, unsigned timeout);
 *  };
 *                                                                      \endcode
 */

} // namespace
#endif // file guard
