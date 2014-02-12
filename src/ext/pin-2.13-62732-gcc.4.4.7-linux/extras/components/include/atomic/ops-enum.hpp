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

#ifndef ATOMIC_OPS_ENUM_HPP
#define ATOMIC_OPS_ENUM_HPP

namespace ATOMIC {

/*!
 * A type that tells the memory ordering semantics for a particular memory operation.  The
 * ordering semantics specify the visibility of this memory operation on other processors
 * w.r.t. other memory operations on this processor.  These enum values are for OPS::CompareAndSwap()
 * operations.
 */
enum BARRIER_CS
{
    BARRIER_CS_NONE,   ///< Compare/swap operation has no special ordering semantics.
    BARRIER_CS_PREV,   ///< Compare/swap visibile after all previous memory operations from this processor.
    BARRIER_CS_NEXT    ///< Compare/swap visible before all subsequent memory operations from this processor.
};


/*!
 * Tells the memory ordering semantics of an OPS::Swap() operation.
 */
enum BARRIER_SWAP
{
    BARRIER_SWAP_NONE,   ///< Swap operation has no special ordering semantics.
    BARRIER_SWAP_PREV,   ///< Swap visibile after all previous memory operations from this processor.
    BARRIER_SWAP_NEXT    ///< Swap visible before all subsequent memory operations from this processor.
};

/*!
 * Tells the memory ordering semantics of an OPS::Store() operation.
 */
enum BARRIER_ST
{
    BARRIER_ST_NONE,   ///< Store operation has no special ordering semantics.
    BARRIER_ST_PREV    ///< Store visibile after all previous memory operations from this processor.
};


/*!
 * Tells the memory ordering semantics of an OPS::Load() operation.
 */
enum BARRIER_LD
{
    BARRIER_LD_NONE,   ///< Load operation has no special ordering semantics.
    BARRIER_LD_NEXT    ///< Load gets value before all subsequent memory operations visible from this processor.
};

} // namespace
#endif // file guard
