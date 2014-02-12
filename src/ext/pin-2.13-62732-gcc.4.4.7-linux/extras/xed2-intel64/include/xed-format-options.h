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
/// @file xed-format-options.h 


#ifndef _XED_FORMAT_OPTIONS_H_
# define _XED_FORMAT_OPTIONS_H_
#include "xed-types.h"


/// @name Formatting options
//@{

/// Options for the disasembly formatting functions. Set once during
/// initialization by a calling #xed_format_set_options
///  @ingroup PRINT
typedef struct {
    /// by default, XED prints the hex address before any symbolic name for
    /// branch targets. If set to zero, then XED will not print the hex
    /// address before a valid symbolic name.
    unsigned int hex_address_before_symbolic_name; 

    /// Simple XML output format for the Intel syntax disassembly.
    unsigned int xml_a; 
    /// Include flags in the XML formatting (must also supply xml_a)
    unsigned int xml_f; 

    /// omit unit scale "*1" 
    unsigned int omit_unit_scale;

    /// do not sign extend signed immediates 
    unsigned int no_sign_extend_signed_immediates;

} xed_format_options_t;

/// Optionally, customize the disassembly formatting options by passing 
/// in a #xed_format_options_t structure.
/// @ingroup PRINT
XED_DLL_EXPORT void
xed_format_set_options(xed_format_options_t format_options);
//@}

#endif
