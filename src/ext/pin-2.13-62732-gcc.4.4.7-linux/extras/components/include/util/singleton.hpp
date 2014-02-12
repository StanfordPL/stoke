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
// <ORIGINAL-AUTHOR>: Alex Skaletsky
// <COMPONENT>: util
// <FILE-TYPE>: component public header

#ifndef UTIL_SINGLETON_HPP
#define UTIL_SINGLETON_HPP

#include "fund.hpp"


namespace UTIL {

/*!
 * Template of a singleton class <T> with the following properties:
 *  - The single instance of the class <T> is created during static initialization of the 
 *    module.
 *  - The instance of the class <T> is never destroyed.
 *  _ The instance of the class <T> can be accessed at any time: during static initialization 
 *    or anytime after.
 *  - The class is thread-safe, assuming the module's static initialization is thread-safe 
 *    (normally performed in a single thread).
 *
 *  @param T        type of the singleton's instance. The class <T> should have a default 
 *                  constructor accessible from this tempalte.
 */
template <typename T> class /*<UTILITY>*/ STATIC_SINGLETON
{
public:
    /*!
     * Get the single instance of class <T>.
     */
    static T * GetInstance() 
    {
        if (m_pInstance == 0) 
        {
            m_pInstance = Create();
        }
        return m_pInstance;
    }

private:
    /*!
     * Create an instance of class <T>.
     */
    static T * Create()
    {
        // We use placement new() for two reasons:
        // -  To create a never-destructed instance of <T>. This allows using this instance 
        //    at any time, even during the module's destruction.
        // -  We could use the regular "new" operator here instead, but placement new is advantageous
        //    because some clients limit the amount of memory that can be dynamically allocated at
        //    static initialization time (e.g. clients that replace the "malloc" implementation).
        //    Allocating the data statically like this for a singleton class has no real disadvantage.

        static FUND::UINT8 storage[sizeof(T) + FUND_ALIGNMENT_OF(T)];
        return new((void *)RoundUp(&(storage[0]), FUND_ALIGNMENT_OF(T))) T();
    }

private:
    static T * m_pInstance;
};

/*!
 * Static member of the STATIC_SINGLETON template: pointer to the single instance
 * of the class <T>.
 */
template<typename T> T * STATIC_SINGLETON<T>::m_pInstance = STATIC_SINGLETON<T>::GetInstance();

} // namespace
#endif // file guard
