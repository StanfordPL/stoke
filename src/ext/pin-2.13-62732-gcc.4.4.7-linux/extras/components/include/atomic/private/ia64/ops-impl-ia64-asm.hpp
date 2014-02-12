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
// <FILE-TYPE>: component private header

#ifndef ATOMIC_PRIVATE_IA64_OPS_IMPL_IA64_ASM_HPP
#define ATOMIC_PRIVATE_IA64_OPS_IMPL_IA64_ASM_HPP

#include "fund.hpp"

extern "C" void ATOMIC_CompareAndSwap8Rel(volatile void *location, const void *oldVal, void *newVal);
extern "C" void ATOMIC_CompareAndSwap8Acq(volatile void *location, const void *oldVal, void *newVal);
extern "C" void ATOMIC_CompareAndSwap16Rel(volatile void *location, const void *oldVal, void *newVal);
extern "C" void ATOMIC_CompareAndSwap16Acq(volatile void *location, const void *oldVal, void *newVal);
extern "C" void ATOMIC_CompareAndSwap32Rel(volatile void *location, const void *oldVal, void *newVal);
extern "C" void ATOMIC_CompareAndSwap32Acq(volatile void *location, const void *oldVal, void *newVal);
extern "C" void ATOMIC_CompareAndSwap64Rel(volatile void *location, const void *oldVal, void *newVal);
extern "C" void ATOMIC_CompareAndSwap64Acq(volatile void *location, const void *oldVal, void *newVal);
extern "C" bool ATOMIC_Swap8Acq(volatile void *location, void *oldVal, const void *newVal);
extern "C" bool ATOMIC_Swap16Acq(volatile void *location, void *oldVal, const void *newVal);
extern "C" bool ATOMIC_Swap32Acq(volatile void *location, void *oldVal, const void *newVal);
extern "C" bool ATOMIC_Swap64Acq(volatile void *location, void *oldVal, const void *newVal);
extern "C" void ATOMIC_Store8Rel(volatile void *location, const void *val);
extern "C" void ATOMIC_Store16Rel(volatile void *location, const void *val);
extern "C" void ATOMIC_Store32Rel(volatile void *location, const void *val);
extern "C" void ATOMIC_Store64Rel(volatile void *location, const void *val);
extern "C" void ATOMIC_Load8Acq(volatile const void *location, void *val);
extern "C" void ATOMIC_Load16Acq(volatile const void *location, void *val);
extern "C" void ATOMIC_Load32Acq(volatile const void *location, void *val);
extern "C" void ATOMIC_Load64Acq(volatile const void *location, void *val);

#endif // file guard
