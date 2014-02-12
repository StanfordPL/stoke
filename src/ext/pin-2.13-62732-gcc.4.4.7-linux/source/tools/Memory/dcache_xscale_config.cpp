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
 *  This file contains an ISA-portable PIN tool for functional simulation of
 *  the Intel XScale(R) processor L1 data cache
 */

#include <iostream>

#include "pin.H"

typedef UINT64 CACHE_STATS; // type of cache hit/miss counters

#include "pin_cache.H"


KNOB<UINT32>   KnobCacheSize(KNOB_MODE_WRITEONCE, "pintool",
    "-s1", "32768", "l1 cache size in bytes");

KNOB<UINT32>   KnobCacheAssociativity(KNOB_MODE_WRITEONCE, "pintool",
    "-a1", "32", "l1 cache associativity");

KNOB<UINT32>   KnobCacheLineSize(KNOB_MODE_WRITEONCE, "pintool",
    "-l1", "32", "l1 cache size in bytes");

namespace DL1
{

    const CACHE_ALLOC::STORE_ALLOCATION allocation = CACHE_ALLOC::STORE_NO_ALLOCATE;

    const UINT32 max_sets = 128;

    const UINT32 max_associativity = 32;


    typedef CACHE_ROUND_ROBIN(max_sets, max_associativity, allocation) CACHE;
}

LOCALVAR DL1::CACHE *dl1;


LOCALFUN VOID Fini(int code, VOID * v)
{
    std::cerr << *dl1;
}

LOCALFUN VOID MemRefSingle(CACHE_BASE::ACCESS_TYPE accessType, ADDRINT addr)
{
    // first level D-cache: single cache-line access
    dl1->AccessSingleLine(addr, accessType);
}

LOCALFUN VOID MemRefMulti(CACHE_BASE::ACCESS_TYPE accessType, ADDRINT addr, UINT32 size)
{
    // first level D-cache: potentially multiple cache-line access
    dl1->Access(addr, size, accessType);
}

LOCALFUN VOID Instruction(INS ins, void * v)
{
    if (INS_IsMemoryRead(ins))
    {
        const UINT32 size = INS_MemoryReadSize(ins);
        // we assume accesses <= 4 bytes stay in the same cache line
        // to speed up cache access lookups
        const AFUNPTR countFun = (size <= 4 ? (AFUNPTR) MemRefSingle : (AFUNPTR) MemRefMulti);

        // only predicated-on memory instructions access D-cache
        INS_InsertPredicatedCall(
            ins, IPOINT_BEFORE, countFun,
            IARG_UINT32, CACHE_BASE::ACCESS_TYPE_LOAD,
            IARG_MEMORYREAD_EA,
            IARG_MEMORYREAD_SIZE,
            IARG_END);
    }

    if (INS_IsMemoryWrite(ins))
    {
        const UINT32 size = INS_MemoryWriteSize(ins);
        const AFUNPTR countFun = (size <= 4 ? (AFUNPTR) MemRefSingle : (AFUNPTR) MemRefMulti);

        // only predicated-on memory instructions access D-cache
        INS_InsertPredicatedCall(
            ins, IPOINT_BEFORE, countFun,
            IARG_UINT32, CACHE_BASE::ACCESS_TYPE_STORE,
            IARG_MEMORYWRITE_EA,
            IARG_MEMORYWRITE_SIZE,
            IARG_END);
    }
}

GLOBALFUN int main(int argc, char *argv[])
{
    PIN_Init(argc, argv);

    INS_AddInstrumentFunction(Instruction, 0);
    PIN_AddFiniFunction(Fini, 0);

    const UINT32 size = KnobCacheSize.Value();
    const UINT32 linesize = KnobCacheLineSize.Value();
    const UINT32 associativity = KnobCacheAssociativity.Value();

    ASSERTX(  associativity <= DL1::max_associativity );
    ASSERTX( size /(associativity*linesize )<= DL1::max_sets );
        
    // create the cache object
    dl1 = new DL1::CACHE("L1 Data Cache", size, linesize, associativity);

    // Never returns
    PIN_StartProgram();

    return 0; // make compiler happy
}
