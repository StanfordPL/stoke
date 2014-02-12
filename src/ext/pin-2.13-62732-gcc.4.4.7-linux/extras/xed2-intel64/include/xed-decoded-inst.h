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
/// @file xed-decoded-inst.h
/// 

#if !defined(_XED_DECODER_STATE_H_)
# define _XED_DECODER_STATE_H_
#include "xed-common-hdrs.h"
#include "xed-common-defs.h"
#include "xed-portability.h"
#include "xed-util.h"
#include "xed-types.h"
#include "xed-inst.h"
#include "xed-flags.h"
#if defined(XED_ENCODER)
# include "xed-encoder-gen-defs.h" //generated
#endif
#include "xed-chip-enum.h" //generated
#include "xed-operand-element-type-enum.h" // a generated file
#include "xed-operand-storage.h" // a generated file


struct xed_encoder_vars_s;
struct xed_decoder_vars_s;
/// @ingroup DEC
/// The main container for instructions. After decode, it holds an array of
/// operands with derived information from decode and also valid
/// #xed_inst_t pointer which describes the operand templates and the
/// operand order.  See @ref DEC for API documentation.
typedef struct xed_decoded_inst_s  {
    /// The operand storage fields discovered during decoding. This same array is used by encode.
    xed_operand_storage_t _operands;

#if defined(XED_ENCODER)
    /// Used for encode operand ordering. Not set by decode.
    xed_uint8_t _operand_order[XED_ENCODE_ORDER_MAX_OPERANDS];
#endif
    xed_uint8_t _decoded_length;
    /// Length of the _operand_order[] array.
    xed_uint8_t _n_operand_order; 

    /// when we decode an instruction, we set the _inst and get the
    /// properites of that instruction here. This also points to the
    /// operands template array.
    const xed_inst_t* _inst;

    // decoder does not change it, encoder does    
    union {
        xed_uint8_t* _enc;
        const xed_uint8_t* _dec;
    } _byte_array; 

    // These are stack allocated by xed_encode() or xed_decode(). These are
    // per-encode or per-decode transitory data.
    union {

        /* user_data is available as a user data storage field after
         * decoding. It does not live across re-encodes or re-decodes. */
        xed_uint64_t user_data; 
#if defined(XED_ENCODER)
        struct xed_encoder_vars_s* ev;
#endif
    } u;


    union {
        xed_int8_t  byte;
        xed_int16_t word;
        xed_int32_t dword;
        xed_int64_t qword;
    } disp_val;

    
} xed_decoded_inst_t;

typedef xed_decoded_inst_t xed_operand_values_t;


//@}
#endif

