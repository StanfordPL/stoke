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
/// @file xed-types.h
/// 


#ifndef _XED_TYPES_H_
# define _XED_TYPES_H_

////////////////////////////////////////////////////////////////////////////

#include "xed-common-hdrs.h"

#if defined(__GNUC__) || defined(__ICC)
#  include <stdint.h>
#  define xed_uint8_t   uint8_t 
#  define xed_uint16_t  uint16_t
#  define xed_uint32_t  uint32_t
#  define xed_uint64_t  uint64_t
#  define xed_int8_t     int8_t 
#  define xed_int16_t 	 int16_t
#  define xed_int32_t    int32_t
#  define xed_int64_t    int64_t
#elif defined(_WIN32)
#  define xed_uint8_t  unsigned __int8
#  define xed_uint16_t unsigned __int16
#  define xed_uint32_t unsigned __int32
#  define xed_uint64_t unsigned __int64
#  define xed_int8_t   __int8
#  define xed_int16_t  __int16
#  define xed_int32_t  __int32
#  define xed_int64_t  __int64
#else
#  error "XED types unsupported platform? Need windows, gcc, or icc."
#endif

typedef unsigned int  xed_uint_t;
typedef          int  xed_int_t;
typedef unsigned int  xed_bits_t;
typedef unsigned int  xed_bool_t;

typedef union {
   xed_uint8_t   byte[2]; 
   xed_int8_t  s_byte[2]; 

  struct {
    xed_uint8_t b0; /*low 8 bits*/
    xed_uint8_t b1; /*high 8 bits*/
  } b;
  xed_int16_t  i16;
  xed_uint16_t u16;
} xed_union16_t ;

typedef union {
   xed_uint8_t   byte[4]; 
   xed_uint16_t  word[2]; 
   xed_int8_t  s_byte[4]; 
   xed_int16_t s_word[2]; 

  struct {
    xed_uint8_t b0; /*low 8 bits*/
    xed_uint8_t b1; 
    xed_uint8_t b2; 
    xed_uint8_t b3; /*high 8 bits*/
  } b;

  struct {
    xed_uint16_t w0; /*low 16 bits*/
    xed_uint16_t w1; /*high 16 bits*/
  } w;
  xed_int32_t  i32;
  xed_uint32_t u32;
} xed_union32_t ;

typedef union {
   xed_uint8_t      byte[8]; 
   xed_uint16_t     word[4]; 
   xed_uint32_t    dword[2]; 
   xed_int8_t     s_byte[8]; 
   xed_int16_t    s_word[4]; 
   xed_int32_t   s_dword[2]; 

  struct {
    xed_uint8_t b0; /*low 8 bits*/
    xed_uint8_t b1; 
    xed_uint8_t b2; 
    xed_uint8_t b3; 
    xed_uint8_t b4; 
    xed_uint8_t b5; 
    xed_uint8_t b6; 
    xed_uint8_t b7; /*high 8 bits*/
  } b;

  struct {
    xed_uint16_t w0; /*low 16 bits*/
    xed_uint16_t w1;
    xed_uint16_t w2;
    xed_uint16_t w3; /*high 16 bits*/
  } w;
  struct {
    xed_uint32_t lo32;
    xed_uint32_t hi32;
  } s;
    xed_uint64_t u64;
    xed_int64_t i64;
} xed_union64_t ;

////////////////////////////////////////////////////////////////////////////
#endif
