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
/// @file xed-immed.h
/// 

#ifndef _XED_IMMED_H_
# define _XED_IMMED_H_

#include "xed-types.h"
#include "xed-common-defs.h"
#include "xed-util.h"

XED_DLL_EXPORT xed_int64_t xed_immed_from_bytes(xed_int8_t* bytes, xed_uint_t n);
    /*
      Convert an array of bytes representing a Little Endian byte ordering
      of a number (11 22 33 44 55.. 88), in to a a 64b SIGNED number. That gets
      stored in memory in little endian format of course. 

      Input 11 22 33 44 55 66 77 88, 8
      Ouptut 0x8877665544332211  (stored in memory as (lsb) 11 22 33 44 55 66 77 88 (msb))

      Input f0, 1
      Output 0xffff_ffff_ffff_fff0  (stored in memory as f0 ff ff ff   ff ff ff ff)

      Input f0 00, 2
      Output 0x0000_0000_0000_00F0 (stored in memory a f0 00 00 00  00 00 00 00)

      Input 03, 1
      Output 0x0000_0000_0000_0030 (stored in memory a 30 00 00 00  00 00 00 00)
    */


#endif
