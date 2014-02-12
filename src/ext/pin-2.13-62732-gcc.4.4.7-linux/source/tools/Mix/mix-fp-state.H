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
#ifndef _MIX_FP_STATE_H_
# define _MIX_FP_STATE_H_

# define MIX_FP_ALIGN(x)   \
    reinterpret_cast<unsigned char*>(  (((reinterpret_cast<ADDRINT>(x) + 16) >> 4) << 4) )

# if defined(_WIN32) && !defined(__GNUC__)
  extern "C" void mix_fp_save(void* p);    /* assembly routine */
  extern "C" void mix_fp_restore(void* p); /* assembly routine */
# define MIX_FP_SAVE(x)  (mix_fp_save(x))
# define MIX_FP_RELOAD(x)  (mix_fp_restore(x))

#else

# ifdef TARGET_MIC
   // KNC does not support emms. We don't expect anyone to run mmx code on KNC anyway.
#  define MIX_FP_SAVE(x)    asm volatile("fxsave %0" : "=m" (*x)  )
# else
#  define MIX_FP_SAVE(x)    asm volatile("fxsave %0 \n\t emms" : "=m" (*x)  )
# endif

// need the * because  x is an array and need to make it an lvalue
# define MIX_FP_RELOAD(x)    asm volatile("fxrstor %0" : : "m" (*x) )

#endif



#if defined(_WIN32) && !defined(__GNUC__)
typedef unsigned char __declspec(align(16)) mix_fp_save_buffer_t[512+16];    
#else
typedef unsigned char mix_fp_save_buffer_t[512+16]  __attribute__ ((aligned(16)));
#endif

#endif
