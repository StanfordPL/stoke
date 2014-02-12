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
/// @file xed-agen.h 
/// 


#ifndef _XED_AGEN_H_
# define _XED_AGEN_H_
#include "xed-decoded-inst.h"
#include "xed-error-enum.h"


/// A function for obtaining register values. 32b return values should be
/// zero extended to 64b. The error value is set to nonzero if the callback
/// experiences some sort of problem.  @ingroup AGEN
typedef xed_uint64_t (*xed_register_callback_fn_t)(xed_reg_enum_t reg, void* context, xed_bool_t* error);

/// A function for obtaining the segment base values. 32b return values
/// should be zero extended zero extended to 64b. The error value is set to
/// nonzero if the callback experiences some sort of problem. 
/// @ingroup AGEN
typedef xed_uint64_t (*xed_segment_base_callback_fn_t)(xed_reg_enum_t reg, void* context, xed_bool_t* error);


/// Initialize the callback functions. Tell XED what to call when using
/// #xed_agen. 
/// @ingroup AGEN
XED_DLL_EXPORT void xed_agen_register_callback(xed_register_callback_fn_t register_fn,
                                               xed_segment_base_callback_fn_t segment_fn);

/// Using the registered callbacks, compute the memory address for a
/// specified memop in a decoded instruction. memop_index can have the
/// value 0 for XED_OPERAND_MEM0, XED_OPERAND_AGEN, or 1 for
/// XED_OPERAND_MEM1. Any other value results in an error being
/// returned. The context parameter which is passed to the registered
/// callbacks can be used to identify which thread's state is being
/// referenced.
/// @ingroup AGEN
XED_DLL_EXPORT xed_error_enum_t xed_agen(xed_decoded_inst_t* xedd,
                                         unsigned int memop_index,
                                         void* context,
                                         xed_uint64_t* out_address);


#endif
