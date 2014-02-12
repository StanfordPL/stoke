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
#ifndef VECTOR_UTILIZATION_TYPES_H
#define VECTOR_UTILIZATION_TYPES_H

#include <string>
#include <cstring>
#include "pin.H"
extern "C" {
#include "xed-interface.h"
}

using std::string;

#define MAX_MASK_REGS   REG_K_LAST - REG_K_BASE + 1     // Indicates the number of mask registers
#define MASK_MAX        16                              // Maximum number of mask bits (max number of vector elements)
#define MASK_8          8                               // Indicates an 8-bit mask (double-precision vector)
#define MASK_16         16                              // Indicates an 16-bit mask (single-precision vector)
#define VECTORSIZE_BITS     512
#define VECTORSIZE_BYTES    64

// This struct is a per-thread statistics container. It is filled during runtime by the analysis functions
// and is analyzed in the fini function when the application ends.
struct MaskStats {
    UINT64 icount;                  // total number of instructions executed by this thread
    UINT64 error_count;             // number of errors encountered at runtime
    UINT64 masked_prefetch_count;   // number of masked prefetch instructions
    UINT64 mask_8_count;            // number of double-precision vector instructions
    UINT64 mask_16_count;           // number of single-precision vector instructions
    UINT64 mask_8_idle_count;       // number of double-precision vector instructions with a clear mask
    UINT64 mask_16_idle_count;      // number of single-precision vector instructions with a clear mask
    UINT64 mask_8_bits;             // accumulated number of set bits in double-precision vector instructions
    UINT64 mask_16_bits;            // accumulated number of set bits in single-precision vector instructions

    MaskStats() { memset(this, 0, sizeof(MaskStats)); }
};

// This type defines possible errors encountered during instrumentation.
enum InternalResult {
    IR_SUCCESS = 0,                         // 0 - Success
    IR_VECTOR_OPERAND_NOT_FOUND,            // 1 - A vector operand was expected but not found
    IR_SECOND_VECTOR_OPERAND_NOT_FOUND,     // 2 - Expected two vector operand but found only one
    IR_ZERO_VECTOR_ELEMENT_WIDTH,           // 2 - Element width was reported 0
    IR_INVALID_NUMBER_OF_VECTOR_ELEMENTS,   // 3 - Only 8 and 16 elements are legal on KNC
    IR_LAST,                                // 4 - Used for iteration
    IR_SIZE                                 // 5 - Used for array allocation
};

// This is an enum-to-string conversion table for the InternalResults type.
extern "C" string internalResultString[IR_SIZE];

#endif // VECTOR_UTILIZATION_TYPES_H
