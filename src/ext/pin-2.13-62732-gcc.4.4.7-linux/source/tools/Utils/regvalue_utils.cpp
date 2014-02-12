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
#include <cassert>
#include <string>
#include <cstring>
#include <sstream>
#include "regvalue_utils.h"

using std::endl;
using std::flush;
using std::string;
using std::stringstream;
using std::hex;


/////////////////////
// EXTERNAL FUNCTIONS
/////////////////////

extern "C" bool ProcessorSupportsAvx();


/////////////////////
// GLOBAL VARIABLES
/////////////////////

// Boolean indicating whether the system supports AVX instructions and registers.
const bool hasAvxSupport = ProcessorSupportsAvx();


/////////////////////
// INTERNAL FUNCTIONS IMPLEMENTATION
/////////////////////

template<typename SIZETYPE>
static bool CompareSizedWord(const unsigned char * value, const unsigned char * expected, unsigned int element,
                             unsigned int totalSize, ostream& ost)
{
    if (*((SIZETYPE*)(&value[element << 3])) != *((SIZETYPE*)(&expected[element << 3])))
    {
        ost << "WARNING: Expected value: " << Val2Str((void*)expected, totalSize) << endl << flush;
        ost << "WARNING: Received value: " << Val2Str((void*)value, totalSize) << endl << flush;
        return false;
    }
    return true;
}


/////////////////////
// API FUNCTIONS IMPLEMENTATION
/////////////////////

string Val2Str(const void * value, unsigned int size)
{
    stringstream sstr;
    sstr << hex;
    const unsigned char* cval = (const unsigned char*)value;
    // Traverse cval from end to beginning since the MSB is in the last block of cval.
    while (size)
    {
        --size;
        sstr << (unsigned int)cval[size];
    }
    return string("0x")+sstr.str();
}

bool CompareValues(const void* value, const void* expected, unsigned int size, ostream& ost)
{
    if (0 != memcmp(value, expected, size))
    {
        ost << "WARNING: Expected value: " << Val2Str(expected, size) << endl << flush;
        ost << "WARNING: Received value: " << Val2Str(value, size) << endl << flush;
        return false;
    }
    return true;
}
