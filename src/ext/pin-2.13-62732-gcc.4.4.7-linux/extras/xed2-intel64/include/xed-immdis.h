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
/// @file xed-immdis.h
/// 



#ifndef _XED_IMMDIS_H_
# define _XED_IMMDIS_H_

#include "xed-types.h"
#include "xed-common-defs.h"
#include "xed-util.h"


////////////////////////////////////////////////////////////////////////////
// DEFINES
////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////
// TYPES
////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////
// PROTOTYPES
////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////
// GLOBALS
////////////////////////////////////////////////////////////////////////////

#define XED_MAX_IMMDIS_BYTES 8

// A union for speed of zeroing
union xed_immdis_values_t
{
    xed_uint8_t x[XED_MAX_IMMDIS_BYTES];// STORED LITTLE ENDIAN. BYTE 0 is LSB
    xed_uint64_t q;
};

/// Stores immediates and displacements for the encoder & decoder.
typedef struct xed_immdis_s {
    union xed_immdis_values_t value;
    unsigned int currently_used_space :4; // current number of assigned bytes
    unsigned int max_allocated_space :4; // max allocation, 4 or 8
    xed_bool_t present : 1;
    xed_bool_t immediate_is_unsigned : 1;
} xed_immdis_t;

XED_DLL_EXPORT void xed_immdis__check(xed_immdis_t* q, int p) ;


XED_DLL_EXPORT void xed_immdis_init(xed_immdis_t* p, int max_bytes);

/// @name Sizes and lengths
//@{
/// return the number of bytes added
XED_DLL_EXPORT unsigned int xed_immdis_get_bytes(const xed_immdis_t* p) ;

//@}

/// @name Accessors for the value of the immediate or displacement
//@{
XED_DLL_EXPORT xed_int64_t 
xed_immdis_get_signed64(const xed_immdis_t* p);

XED_DLL_EXPORT xed_uint64_t 
xed_immdis_get_unsigned64(const xed_immdis_t* p);

XED_DLL_EXPORT xed_bool_t
xed_immdis_is_zero(const xed_immdis_t* p) ;

XED_DLL_EXPORT xed_bool_t
xed_immdis_is_one(const xed_immdis_t* p) ;

/// Access the i'th byte of the immediate
XED_DLL_EXPORT xed_uint8_t   xed_immdis_get_byte(const xed_immdis_t* p, unsigned int i) ;
//@}

/// @name Presence / absence of an immediate or displacement
//@{
XED_DLL_EXPORT void    xed_immdis_set_present(xed_immdis_t* p) ;

/// True if the object has had a value or individual bytes added to it.
XED_DLL_EXPORT xed_bool_t    xed_immdis_is_present(const xed_immdis_t* p) ;
//@}


/// @name Initialization and setup
//@{
XED_DLL_EXPORT void     xed_immdis_set_max_len(xed_immdis_t* p, unsigned int mx) ;
XED_DLL_EXPORT void
xed_immdis_zero(xed_immdis_t* p);

XED_DLL_EXPORT unsigned int    xed_immdis_get_max_length(const xed_immdis_t* p) ;

//@}

/// @name Signed vs Unsigned
//@{ 
/// Return true if  signed.
XED_DLL_EXPORT xed_bool_t
xed_immdis_is_unsigned(const xed_immdis_t* p) ;
/// Return true if signed.
XED_DLL_EXPORT xed_bool_t
xed_immdis_is_signed(const xed_immdis_t* p) ;
    
/// Set the immediate to be signed; For decoder use only.
XED_DLL_EXPORT void 
xed_immdis_set_signed(xed_immdis_t* p) ;
/// Set the immediate to be unsigned; For decoder use only.
XED_DLL_EXPORT void 
xed_immdis_set_unsigned( xed_immdis_t* p) ;
//@}


/// @name Adding / setting values
//@{
XED_DLL_EXPORT void
xed_immdis_add_byte(xed_immdis_t* p, xed_uint8_t b);


XED_DLL_EXPORT void
xed_immdis_add_byte_array(xed_immdis_t* p, int nb, xed_uint8_t* ba);

/// Add 1, 2, 4 or 8 bytes depending on the value x and the mask of
/// legal_widths. The default value of legal_widths = 0x5 only stops
/// adding bytes only on 1 or 4 byte quantities - depending on which
/// bytes of x are zero -- as is used for most memory addressing.  You
/// can set legal_widths to 0x7 for branches (1, 2 or 4 byte branch
/// displacements). Or if you have an 8B displacement, you can set
/// legal_widths to 0x8. NOTE: add_shortest_width will add up to
/// XED_MAX_IMMDIS_BYTES if the x value requires it. NOTE: 16b memory
/// addressing can have 16b immediates.
XED_DLL_EXPORT void
xed_immdis_add_shortest_width_signed(xed_immdis_t* p, xed_int64_t x, xed_uint8_t legal_widths);

/// See add_shortest_width_signed()
XED_DLL_EXPORT void
xed_immdis_add_shortest_width_unsigned(xed_immdis_t* p, xed_uint64_t x, xed_uint8_t legal_widths );


/// add an 8 bit value to the byte array
XED_DLL_EXPORT void
xed_immdis_add8(xed_immdis_t* p, xed_int8_t d);

/// add a 16 bit value to the byte array
XED_DLL_EXPORT void
xed_immdis_add16(xed_immdis_t* p, xed_int16_t d);

/// add a 32 bit value to the byte array
XED_DLL_EXPORT void
xed_immdis_add32(xed_immdis_t* p, xed_int32_t d);

/// add a 64 bit value to the byte array.
XED_DLL_EXPORT void
xed_immdis_add64(xed_immdis_t* p, xed_int64_t d);

//@}


/// @name printing / debugging
//@{

/// just print the raw bytes in hex with a leading 0x
XED_DLL_EXPORT int xed_immdis_print(const xed_immdis_t* p, char* buf, int buflen);

/// Print the value as a signed or unsigned number depending on the
/// value of the immediate_is_unsigned variable.
XED_DLL_EXPORT int
xed_immdis_print_signed_or_unsigned(const xed_immdis_t* p, char* buf, int buflen);

/// print the signed value, appropriate width, with a leading 0x
XED_DLL_EXPORT int
xed_immdis_print_value_signed(const xed_immdis_t* p, char* buf, int buflen);

/// print the unsigned value, appropriate width, with a leading 0x
XED_DLL_EXPORT int
xed_immdis_print_value_unsigned(const xed_immdis_t* p, char* buf, int buflen);

int xed_immdis__print_ptr(const xed_immdis_t* p, char* buf, int buflen);
#endif

//@}


