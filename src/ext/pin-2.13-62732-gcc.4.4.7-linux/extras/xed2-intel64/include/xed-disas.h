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
/// @file xed-disas.h
/// 

#if !defined(_XED_DISAS_H_)
# define _XED_DISAS_H_

#include "xed-types.h"

/// @ingroup PRINT
/// A #xed_disassembly_callback_fn_t takes an address, a pointer to a
/// symbol buffer of buffer_length bytes, and a pointer to an offset. The
/// function fills in the symbol_buffer and sets the offset to the desired
/// offset for that symbol.  If the function succeeds, it returns 1. 
//  The call back should return 0 if the buffer is not long enough to
//  include the null termination.If no symbolic information is
//  located, the function returns zero.
///  @param address The input address for which we want symbolic name and offset
///  @param symbol_buffer A buffer to hold the symbol name. The callback function should fill this in and terminate
///                       with a null byte.
///  @param buffer_length The maximum length of the symbol_buffer including then null
///  @param offset A pointer to a xed_uint64_t to hold the offset from the provided symbol.
///  @param context This void* pointer passed to the disassembler's new interface so that the caller can identify 
///                     the proper context against which to resolve the symbols. 
///                     The disassembler passes this value to
///                     the callback. The legacy formatters 
///                     that do not have context will pass zero for this parameter.
///  @return 0 on failure, 1 on success.
typedef  int (*xed_disassembly_callback_fn_t)(
    xed_uint64_t  address,
    char*         symbol_buffer,
    xed_uint32_t  buffer_length,
    xed_uint64_t* offset,
    void*         context);

/// @ingroup PRINT
/// Register a disassembly call back function of type
/// #xed_disassembly_callback_fn_t to get called when the disassembler
/// needs to get a symbol and offset for an address.
XED_DLL_EXPORT void xed_register_disassembly_callback(xed_disassembly_callback_fn_t f);

#endif
