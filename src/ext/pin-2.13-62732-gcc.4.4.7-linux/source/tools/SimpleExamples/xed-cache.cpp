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
/* ===================================================================== */
// Mark Charney

/* ===================================================================== */
/*! @file
 * This file exemplifies XED usage on IA-32 and Intel(R) 64 architectures.
 * Using the decode cache. Single threaded only.
 */

#include "pin.H"
extern "C" {
#include "xed-interface.h"
}
#include <iostream>
#include <iomanip>
#include <fstream>
#include <string.h>

/* ===================================================================== */
/* Global Variables */
/* ===================================================================== */
std::ofstream* out = 0;
xed_decode_cache_t cache;

/* ===================================================================== */
/* Commandline Switches */
/* ===================================================================== */

UINT64 rejects =0;
#define MAX_BINS 200
UINT64 histo[MAX_BINS];


/* ===================================================================== */
VOID Fini(INT32 code, VOID *v)
{
    *out << dec;
    *out << "# Cache refs:            " << std::setw(12) << cache.misses + cache.hits << endl;
    *out << "# Cache hits:            " << std::setw(12) << cache.hits << endl;
    *out << "# Cache found_something: " << std::setw(12) << cache.found_something << endl;
    *out << "# Cache miscompares:     " << std::setw(12) << cache.miscompares << endl;
    *out << "# Cache hit_rate: " << 100.0*cache.hits/(cache.misses+cache.hits) << endl;

    *out << "rejects " << rejects << endl;
    for(int i=0;i<MAX_BINS;i++) {
        *out << "# histo[ " << i * 50 << " ]= " << histo[i] << endl;
    }
}


/* ===================================================================== */
/* Print Help Message                                                    */
/* ===================================================================== */

INT32 Usage()
{
    cerr << "This tool prints IA-32 and Intel(R) 64 instructions"
         << endl;
    cerr << KNOB_BASE::StringKnobSummary();
    cerr << endl;
    return -1;
}

/* ===================================================================== */
typedef union {
    xed_uint64_t q;
    struct {
        xed_uint32_t lo;
        xed_uint32_t hi;
    } s;
} qu_t;

inline xed_uint64_t get_time() {
    qu_t x;
   asm volatile("rdtsc" : "=a" (x.s.lo), "=d" (x.s.hi));
   return x.q;
}

UINT64 i=0;
UINT64 j=0;
VOID use_xed(ADDRINT pc) {
#if defined(TARGET_IA32E)
    static const xed_state_t dstate = {XED_MACHINE_MODE_LONG_64, XED_ADDRESS_WIDTH_64b};
#else
    static const xed_state_t dstate = { XED_MACHINE_MODE_LEGACY_32, XED_ADDRESS_WIDTH_32b};
#endif
    xed_decoded_inst_t xedd;
    xed_decoded_inst_zero_set_mode(&xedd,&dstate);
    UINT64 ticks_start, ticks_stop, delta;
    //FIXME: pass in the proper length...
    const unsigned int max_inst_len = 15;
    ticks_start = get_time();
#define USE_DECODE_CACHE
#if defined(USE_DECODE_CACHE)
    xed_error_enum_t xed_code = xed_decode_cache(&xedd, reinterpret_cast<UINT8*>(pc), max_inst_len, &cache);
#else
    xed_error_enum_t xed_code = xed_decode(&xedd, reinterpret_cast<UINT8*>(pc), max_inst_len);
#endif
    ticks_stop = get_time();
    delta = ticks_stop - ticks_start;
    //cerr << ticks_start << " " << ticks_stop << " " << delta << endl;
    UINT64 bin = delta/50;
    if ((INT64)delta < 0)
        rejects++;
    else if (bin >= MAX_BINS)
        histo[MAX_BINS-1] += 1;
    else
        histo[bin] += 1;
    BOOL xed_ok = (xed_code == XED_ERROR_NONE);
    i++;
    if (i>(1024*1024) && xed_ok) {
        i=0;
        j++;
        *out << j*1024*1024  << endl;
        Fini(0,0);
        *out << hex << std::setw(8) << pc << " " << dec;
        char buf[2048];
        xed_decoded_inst_dump_intel_format(&xedd, buf, 2048, 0);
        *out << buf << endl;
    }

}

/* ===================================================================== */

VOID Instruction(INS ins, VOID *v)
{
    INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)use_xed, 
                   IARG_INST_PTR,
                   IARG_END);
}

/* ===================================================================== */
/* Main                                                                  */
/* ===================================================================== */

int main(int argc, char *argv[])
{
#if defined(USE_DECODE_CACHE)
    out = new std::ofstream("xed-with-cache.out");
#else
    out = new std::ofstream("xed-no-cache.out");
#endif

    if( PIN_Init(argc,argv) )
        return Usage();
    INS_AddInstrumentFunction(Instruction, 0);

    memset(histo,0,sizeof(UINT64)*MAX_BINS);
    /* FIXME: single threaded tests only */
    UINT32 cache_limit = 16*1024;
    xed_decode_cache_initialize(&cache, new xed_decode_cache_entry_t[cache_limit], cache_limit);
    PIN_AddFiniFunction(Fini, 0);
    PIN_StartProgram();    // Never returns
    return 0;
}

/* ===================================================================== */
/* eof */
/* ===================================================================== */
