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
/// @file xed-decode.h 


#ifndef _XED_DECODE_H_
# define _XED_DECODE_H_


#include "xed-decoded-inst.h"
#include "xed-error-enum.h"
////////////////////////////////////////////////////////////////////////////
// DEFINES
////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////
// TYPES
////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////
// PROTOTYPES
////////////////////////////////////////////////////////////////////////////

/// This is the main interface to the decoder.
///  @param xedd the decoded instruction of type #xed_decoded_inst_t . Mode/state sent in via xedd; See the #xed_state_t
///  @param itext the pointer to the array of instruction text bytes
///  @param bytes  the length of the itext input array. 1 to 15 bytes, anything more is ignored.
///  @return #xed_error_enum_t indiciating success (#XED_ERROR_NONE) or failure. Note failure can be due to not
///  enough bytes in the input array.
///
/// The maximum instruction is 15B and XED will tell you how long the
/// actual instruction is via an API function call
/// xed_decoded_inst_get_length().  However, it is not always safe or
/// advisable for XED to read 15 bytes if the decode location is at the
/// boundary of some sort of protection limit. For example, if one is
/// decoding near the end of a page and the XED user does not want to cause
/// extra page faults, one might send in the number of bytes that would
/// stop at the page boundary. In this case, XED might not be able to
/// decode the instruction and would return an error. The XED user would
/// then have to decide if it was safe to touch the next page and try again
/// to decode with more bytes.  Also sometimes the user process does not
/// have read access to the next page and this allows the user to prevent
/// XED from causing process termination by limiting the memory range that
/// XED will access.  
///
/// @ingroup DEC
XED_DLL_EXPORT xed_error_enum_t
xed_decode(xed_decoded_inst_t* xedd, 
           const xed_uint8_t* itext, 
           const unsigned int bytes);


/// This function just does instruction length decoding.
/// It does not return a fully decoded instruction.
///  @param xedd  the decoded instruction of type #xed_decoded_inst_t .
///               Mode/state sent in via xedd; See the #xed_state_t .
///  @param itext the pointer to the array of instruction text bytes
///  @param bytes the length of the itext input array.
///              1 to 15 bytes, anything more is ignored.
/// @return #xed_error_enum_t indiciating success (#XED_ERROR_NONE) or
///       failure.
/// Only two failure codes are valid for this function:
///  #XED_ERROR_BUFFER_TOO_SHORT and #XED_ERROR_GENERAL_ERROR.
/// In general this function cannot tell if the instruction is valid or
/// not. For valid instructions, XED can figure out if enough bytes were
/// provided to decode the instruction. If not enough were provided,
/// XED returns #XED_ERROR_BUFFER_TOO_SHORT. 
/// From this function, the #XED_ERROR_GENERAL_ERROR is an indication
/// that XED could not decode the instruction's length because  the
/// instruction was so invalid that even its length
/// may across implmentations.
///
/// @ingroup DEC
XED_DLL_EXPORT xed_error_enum_t 
xed_ild_decode(xed_decoded_inst_t* xedd, 
           const xed_uint8_t* itext, 
           const unsigned int bytes);


////////////////////////////////////////////////////////////////////////////
// GLOBALS
////////////////////////////////////////////////////////////////////////////


#endif

