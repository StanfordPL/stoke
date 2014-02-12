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
/// @file xed-iform-map.h
/// 

#if !defined(_XED_IFORM_MAP_H_)
# define _XED_IFORM_MAP_H_

#include "xed-common-hdrs.h"
#include "xed-types.h"
#include "xed-iform-enum.h"       /* generated */
#include "xed-iclass-enum.h"      /* generated */
#include "xed-category-enum.h"    /* generated */
#include "xed-extension-enum.h"   /* generated */
#include "xed-isa-set-enum.h"     /* generated */

/// @ingroup IFORM
/// Statically available information about iforms.
/// Values are returned by #xed_iform_map().
typedef struct xed_iform_info_s {
    xed_iclass_enum_t iclass;
    xed_category_enum_t category;
    xed_extension_enum_t extension;
    xed_isa_set_enum_t isa_set;
  
    /* if nonzero, index in to the disassembly string table */
    xed_uint32_t  string_table_idx;
} xed_iform_info_t;


/// @ingroup IFORM
/// Map the #xed_iform_enum_t to a pointer to a #xed_iform_info_t which
/// indicates the #xed_iclass_enum_t, the #xed_category_enum_t and the
/// #xed_extension_enum_t for the iform. Returns 0 if the iform is not a
/// valid iform.
XED_DLL_EXPORT
const xed_iform_info_t* xed_iform_map(xed_iform_enum_t iform);

/// @ingroup IFORM
/// Return the maximum number of iforms for a particular iclass.  This
/// function returns valid data as soon as global data is
/// initialized. (This function does not require a decoded instruction as
/// input).
XED_DLL_EXPORT
xed_uint32_t xed_iform_max_per_iclass(xed_iclass_enum_t iclass);

/// @ingroup IFORM
/// Return the first of the iforms for a particular iclass.  This function
/// returns valid data as soon as global data is initialized. (This
/// function does not require a decoded instruction as input).
XED_DLL_EXPORT
xed_uint32_t xed_iform_first_per_iclass(xed_iclass_enum_t iclass);

/// @ingroup IFORM
/// Return the iclass for a given iform. This 
/// function returns valid data as soon as global data is initialized. (This
/// function does not require a decoded instruction as input).
static
xed_iclass_enum_t XED_INLINE xed_iform_to_iclass(xed_iform_enum_t iform) {
    const xed_iform_info_t* ii = xed_iform_map(iform);
    if (ii)
        return ii->iclass;
    return XED_ICLASS_INVALID;
}

/// @ingroup IFORM
/// Return the category for a given iform. This 
/// function returns valid data as soon as global data is initialized. (This
/// function does not require a decoded instruction as input).
XED_DLL_EXPORT
xed_category_enum_t xed_iform_to_category(xed_iform_enum_t iform);

/// @ingroup IFORM
/// Return the extension for a given iform. This function returns valid
/// data as soon as global data is initialized. (This function does not
/// require a decoded instruction as input).
XED_DLL_EXPORT
xed_extension_enum_t xed_iform_to_extension(xed_iform_enum_t iform);

/// @ingroup IFORM
/// Return the isa_set for a given iform. This function returns valid data
/// as soon as global data is initialized. (This function does not require
/// a decoded instruction as input).
XED_DLL_EXPORT
xed_isa_set_enum_t xed_iform_to_isa_set(xed_iform_enum_t iform);

/// @ingroup IFORM
/// Return a pointer to a character string of the iclass. This
/// translates the internal disambiguated names to the more ambiguous
/// names that people like to see. This returns the ATT SYSV-syntax name.
XED_DLL_EXPORT
char const* xed_iform_to_iclass_string_att(xed_iform_enum_t iform);


/// @ingroup IFORM
/// Return a pointer to a character string of the iclass. This
/// translates the internal disambiguated names to the more ambiguous
/// names that people like to see. This returns the Intel-syntax name.
XED_DLL_EXPORT
char const* xed_iform_to_iclass_string_intel(xed_iform_enum_t iform);

#endif
