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

#ifndef SYNC_OS_BARECRT_TIME_HPP
#define SYNC_OS_BARECRT_TIME_HPP

#include "barecrt.hpp"


namespace SYNC {

/*!
 * This is an implementation of the "OS::TIME_T" template parameter type,
 * which is based on the "barecrt" library's BARECRT::TIME type.  See
 * \ref SYNC_OS for more details on the "OS" template type.
 */
struct /*<UTILITY>*/ OS_BARECRT_TIME
{
    BARECRT::TIMEVAL _time;     ///< Time value.

    /*!
     * Constructor sets the time value to "zero".
     */
    OS_BARECRT_TIME()
    {
        _time._sec = 0;
        _time._usec = 0;
    }

    /*!
     * @param[in] other     New time is a copy of \a other.
     */
    OS_BARECRT_TIME(const OS_BARECRT_TIME &other)
    {
        _time._sec = other._time._sec;
        _time._usec = other._time._usec;
    }

    /*!
     * Add milliseconds to "this" time.
     *
     *  @param[in] milliseconds     Number of milliseconds to add.
     */
    void AddMilliseconds(unsigned milliseconds)
    {
        unsigned extraSeconds = milliseconds / 1000;
        unsigned extraMicroseconds = milliseconds - 1000*extraSeconds;
        _time._sec += extraSeconds;
        _time._usec += extraMicroseconds;
        if (_time._usec > 1000000)
        {
            _time._usec -= 1000000;
            _time._sec++;
        }
    }

    /*!
     * Compare "this" time to \a other.
     *
     *  @param[in] other    Time to compare against.
     *
     * @return  TRUE if "this" time is less than \a other.
     */
    bool operator <(const OS_BARECRT_TIME &other)
    {
        if (_time._sec < other._time._sec)
            return true;
        if (_time._sec > other._time._sec)
            return false;
        return (_time._usec < other._time._usec);
    }

    /*!
     * Decrement "this" time by \a other.  The \a other time is assumed to be
     * <= to "this" time.
     *
     *  @param[in] other    Time which is subtracted from "this".
     */
    void operator -=(const OS_BARECRT_TIME &other)
    {
        _time._sec -= other._time._sec;
        if (_time._usec < other._time._usec)
        {
            _time._sec--;
            _time._usec += 1000000;
        }
        _time._usec -= other._time._usec;
    }
};

} // namespace
#endif // file guard
