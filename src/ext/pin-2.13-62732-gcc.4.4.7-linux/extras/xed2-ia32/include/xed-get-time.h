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

#if !defined(_XED_GET_TIME_H_)
#   define _XED_GET_TIME_H_

#   include "xed-portability.h"
#   include "xed-types.h"

#   if defined(__INTEL_COMPILER) && __INTEL_COMPILER > 810  && !defined(_M_IA64)
#      include <ia32intrin.h>
#   endif
#   if defined(__INTEL_COMPILER) && __INTEL_COMPILER >= 810  && !defined(_M_IA64)
#      if __INTEL_COMPILER < 1000
#         pragma intrinsic(__rdtsc)
#      endif
#   endif
#   if !defined(__INTEL_COMPILER)
       /* MSVS8 and later */
#      if defined(_MSC_VER) && _MSC_VER >= 1400 && !defined(_M_IA64)
#         include <intrin.h>
#         pragma intrinsic(__rdtsc)
#      endif
#   endif


///xed_get_time() must be compiled with gnu99 on linux to enable the asm()
///statements. If not gnu99, then xed_get_time() returns zero with gcc. GCC
///has no intrinsic for rdtsc. (The default for XED is to compile with
///-std=c99.)  GCC allows __asm__ even under c99!
static XED_INLINE  xed_uint64_t xed_get_time(void) {
    xed_union64_t ticks;
    // __STRICT_ANSI__ comes from the -std=c99
#   if defined(__GNUC__) //&& !defined(__STRICT_ANSI__)
#      if defined(__i386__) || defined(i386) || defined(i686) || defined(__x86_64__)
          __asm__ volatile ("rdtsc":"=a" (ticks.s.lo32), "=d"(ticks.s.hi32));
#         define FOUND_RDTSC
#      endif
#   endif
#   if defined(__INTEL_COMPILER) &&  __INTEL_COMPILER>=810 && !defined(_M_IA64)
       ticks.u64 = __rdtsc();
#      define FOUND_RDTSC
#   endif
#   if !defined(__INTEL_COMPILER)
#      if !defined(FOUND_RDTSC) && defined(_MSC_VER) && _MSC_VER >= 1400 && \
                               !defined(_M_IA64) && !defined(_MANAGED)    /* MSVS7, 8 */
          ticks.u64 = __rdtsc();
#         define FOUND_RDTSC
#      endif
#   endif
#   if !defined(FOUND_RDTSC)
       ticks.u64 = 0;
#   endif
    return ticks.u64;
}

#endif
