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
//
// @ORIGINAL_AUTHOR: Artur Klauser
//

/*! @file
 *  This file contains support for stats counters on sparse input ranges.
 */

#ifndef PIN_PROFILE_H
#define PIN_PROFILE_H

#include <map>
#include <vector>
#include <cassert>

/*!
 *  Class to map arbitrary sequences of sparse input values to
 *  a range of compact indices [0..N],
 *  such that the same input value always produces the same index.
 */
template <class KEY, class INDEX>
class COMPRESSOR
{
  protected:
    typedef std::pair<const KEY, INDEX> PAIR;
    typedef std::map<KEY, INDEX> MAP;

    MAP _map;
    INDEX _nextIndex;
    std::string _keyName;

  public:
    // constructors/destructors
    COMPRESSOR() { _nextIndex = 0; }

    // accessors
    std::string StringLong () const
    {
        std::string os;

        os += "COMPRESSOR BEGIN\n";
        os += "# " + _nextIndex.str() + " counters\n";
        os += "# " + _keyName +  ": index\n";
        for (typename MAP::const_iterator it = _map.begin(); it != _map.end(); it++)
        {
            os += it->first.str() + ": " + decstr(it->second,12) + "\n";
        }
        os += "COMPRESSOR END\n";

        return os;
    }

    // modifiers
    VOID SetKeyName(const std::string & keyName)
    {
        _keyName = keyName;
    }

    INDEX Map(KEY key)
    {
        typename MAP::const_iterator it = _map.find(key);
        
        if (it != _map.end())
        {
            // key found: return index
            return it->second;
        }
        else
        {
            // key not yet present: insert and return new index
            const PAIR p(key, _nextIndex);
            _map.insert(p);

            return _nextIndex++;
        }
    }
};


/*!
 *  Class to provide a counter for each compresses index. Counters are
 *  accessed similar to standard library classes with array syntax [] for
 *  unchecked accesses, and with at() for range-checked accesses. The
 *  array of counters is auto-extending as necessary and is guaranteed to
 *  contain as many entries as have been mapped.
 */

template <class KEY, class INDEX, class COUNTER>
class COMPRESSOR_COUNTER : public COMPRESSOR<KEY, INDEX>
{
  private:
    typedef std::vector<COUNTER> VECTOR;
    static const UINT32 defaultInitCounterSize = 8*1024;

    VECTOR _counters;
    std::string _counterName;
    COUNTER _threshold;

  public:
    // constructors/destructors
    COMPRESSOR_COUNTER(UINT32 initCounterSize = defaultInitCounterSize)
      : COMPRESSOR<KEY,INDEX>(),
        _counters(initCounterSize)
    {}

    // accessors
    std::string StringLong () const
    {
        std::string os;

        INDEX num_counters = 0;

        for (typename COMPRESSOR<KEY,INDEX>::MAP::const_iterator it = this->_map.begin(); it != this->_map.end(); it++)
        {
            const COUNTER& counter = _counters[it->second];
            
            if ( _threshold <= counter ) num_counters++;
        }

        os += "NumItems " + decstr(num_counters)  +"\n";
        os += "DATA:START\n";
        os += "#  counters\n";
        os += "# " + this->_keyName + ": " + _counterName + "\n";

        for (typename COMPRESSOR<KEY,INDEX>::MAP::const_iterator it = this->_map.begin(); it != this->_map.end(); it++)
        {
            const COUNTER& counter = _counters[it->second];
            if ( _threshold <=  counter)
            {
                os += hexstr(it->first,8) + ": " + counter.str() + "\n";
            }
        }
        os += "DATA:END\n";

        return os;
    }

    // modifiers
    VOID SetCounterName(const std::string & counterName)
    {
        _counterName = counterName;
    }

    VOID SetThreshold(const COUNTER& threshold)
    {
        _threshold = threshold;
    }

    INDEX Map(KEY key)
    {
        // use compressor to map
        const INDEX Idx = COMPRESSOR<KEY,INDEX>::Map(key);

        // ... and check if need to add more counters
        if (Idx + 1 >= _counters.capacity())
        {
            _counters.reserve(2 * _counters.capacity());
        }

        return Idx;
    }

    const COUNTER & operator[] (INDEX index) const { return _counters[index]; }
    COUNTER & operator[] (INDEX index) { return _counters[index]; }

    const COUNTER & at(INDEX index) const { return _counters.at(index); }
    COUNTER & at(INDEX index) { return _counters.at(index); }
};


/*!
 *  Class to provide an array of counters for use with COMPRESSOR_COUNTER
 *  if more than a single counter is required.
 *  Counters are accessed similar to standard library classes with array
 *  syntax [] for unchecked accesses, and with at() for range-checked
 *  accesses. The array of counters is auto-extending as necessary and is
 *  guaranteed to contain as many entries as have been mapped.
 */
template <class NUMTYPE, UINT32 NUM_COUNTERS>
class COUNTER_ARRAY
{
  private:
    NUMTYPE _counters[NUM_COUNTERS];
    
  public:
    // accessors
    std::string str() const
    {
        std::string os;

        for (UINT32 i = 0; i < NUM_COUNTERS; i++)
        {
            if (i != 0) os += " ";
            os += decstr(_counters[i],12);
        }

        return os;
    }

    // allow compare to 0
    bool operator==(const COUNTER_ARRAY& x) const
    {
        for (UINT32 i = 0; i < NUM_COUNTERS; i++)
        {
            if (_counters[i] != x._counters[i]) return false;
        }

        return true;
    }
    bool operator!=(const COUNTER_ARRAY& x) const { return ! operator==(x); }

    bool operator<=(const COUNTER_ARRAY& x) const
    {
        for (UINT32 i = 0; i < NUM_COUNTERS; i++)
        {
            if (_counters[i] > x._counters[i]) return false;
        }

        return true;
    }
    

    // modifiers
    const NUMTYPE & operator[] (UINT32 index) const { return _counters[index]; }
    NUMTYPE & operator[] (UINT32 index) { return _counters[index]; }

    const NUMTYPE & at(UINT32 index) const
    {
        assert(index < NUM_COUNTERS);
        return _counters[index];
    }

    NUMTYPE & at(UINT32 index)
    { 
        assert(index < NUM_COUNTERS);
        return _counters[index];
    }

};


#define PROFILE(n) COMPRESSOR_COUNTER<ADDRINT, UINT32, COUNTER_ARRAY<UINT32, n> >

#endif // PIN_PROFILE_H
