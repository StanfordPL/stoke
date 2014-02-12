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
/// @file xed-reg-class.h
/// 

#ifndef _XED_REG_CLASS_H_
# define  _XED_REG_CLASS_H_

#include "xed-types.h"
#include "xed-reg-enum.h" // a generated file
#include "xed-reg-class-enum.h" // a generated file

/// Returns the register class of the given input register.
///@ingroup REGINTFC
XED_DLL_EXPORT xed_reg_class_enum_t xed_reg_class(xed_reg_enum_t r);

/// Returns the specific width GPR reg class (like XED_REG_CLASS_GPR32 or
///  XED_REG_CLASS_GPR64)
///  for a given GPR register. Or XED_REG_INVALID if not a GPR.
///@ingroup REGINTFC
XED_DLL_EXPORT xed_reg_class_enum_t xed_gpr_reg_class(xed_reg_enum_t r);

/// Returns the largest enclosing register for any kind of register; This
/// is mostly useful for GPRs. (64b mode assumed)
///@ingroup REGINTFC
XED_DLL_EXPORT xed_reg_enum_t
xed_get_largest_enclosing_register(xed_reg_enum_t r);

/// Returns the largest enclosing register for any kind of register; This
/// is mostly useful for GPRs in 32b mode.
///@ingroup REGINTFC
XED_DLL_EXPORT xed_reg_enum_t
xed_get_largest_enclosing_register32(xed_reg_enum_t r);

/// Returns the  width, in bits, of the named register. 32b mode
///@ingroup REGINTFC
XED_DLL_EXPORT xed_uint32_t
xed_get_register_width_bits(xed_reg_enum_t r);

/// Returns the  width, in bits, of the named register. 64b mode.
///@ingroup REGINTFC
XED_DLL_EXPORT xed_uint32_t
xed_get_register_width_bits64(xed_reg_enum_t r);

////////////////////////////////////////////////////////////////////////////

#endif
