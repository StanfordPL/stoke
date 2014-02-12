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
/// @file xed-inst.h


#if !defined(_XED_INST_H_)
# define _XED_INST_H_

#include "xed-util.h"
#include "xed-portability.h"
#include "xed-category-enum.h" // generated
#include "xed-extension-enum.h" //generated
#include "xed-iclass-enum.h" //generated
#include "xed-operand-enum.h" // generated
#include "xed-operand-visibility-enum.h" //generated
#include "xed-operand-action-enum.h" // generated
#include "xed-operand-convert-enum.h" // generated
#include "xed-operand-type-enum.h" // generated
#include "xed-nonterminal-enum.h" // a generated file
#include "xed-operand-width-enum.h" // a generated file
#include "xed-operand-element-xtype-enum.h" // a generated file
#include "xed-reg-enum.h" // a generated file
#include "xed-attribute-enum.h" // a generated file
#include "xed-exception-enum.h" // a generated file
#include "xed-iform-enum.h" // a generated file
#include "xed-iform-map.h" 
#include "xed-attributes.h"

struct xed_decoded_inst_s; //fwd-decl

typedef void (*xed_operand_extractor_fn_t)(struct xed_decoded_inst_s* xds);
//typedef xed_bool_t (*xed_instruction_fixed_bit_confirmer_fn_t)(struct xed_decoded_inst_s* xds);


/// @ingroup DEC
/// Constant information about an individual generic operand, like an
///operand template, describing the operand properties. See @ref DEC for
///API information.
typedef struct xed_operand_s
{
    xed_operand_enum_t               _name;
    xed_operand_visibility_enum_t    _operand_visibility;  // implicit, explicit, suppressed
    xed_operand_action_enum_t        _rw;   // read or written
    xed_operand_width_enum_t         _oc2;  // width code, could be invalid (then use register name)
    xed_operand_type_enum_t          _type; // IMM, IMM_CONST, NT_LOOKUP_FN, REG, ERROR
    xed_operand_element_xtype_enum_t _xtype; // xed data type: u32, f32, etc.
    xed_uint8_t                      _cvt_idx; //  decoration index
    union {
        xed_uint32_t                 _imm;  // value for some constant immediates
        xed_nonterminal_enum_t       _nt;   // for nt_lookup_fn's
        xed_reg_enum_t               _reg;  // register name
    } _u;
}  xed_operand_t;    

/// @name xed_inst_t Template Operands Access
//@{ 
/// @ingroup DEC
static XED_INLINE xed_operand_enum_t xed_operand_name(const xed_operand_t* p)  { 
    return p->_name; 
}


/// @ingroup DEC
static XED_INLINE xed_operand_visibility_enum_t 
xed_operand_operand_visibility( const xed_operand_t* p) { 
    return p->_operand_visibility; 
}


/// @ingroup DEC
/// @return The #xed_operand_type_enum_t of the operand template. 
/// This is probably not what you want.
static XED_INLINE xed_operand_type_enum_t xed_operand_type(const xed_operand_t* p)  {
    return p->_type; 
}

/// @ingroup DEC
/// @return The #xed_operand_element_xtype_enum_t of the operand template. 
/// This is probably not what you want.
static XED_INLINE xed_operand_element_xtype_enum_t xed_operand_xtype(const xed_operand_t* p)  {
    return p->_xtype; 
}


/// @ingroup DEC
static XED_INLINE xed_operand_width_enum_t xed_operand_width(const xed_operand_t* p)  { 
    return p->_oc2; 
}

/// @ingroup DEC
/// @param p  an operand template,  #xed_operand_t.
/// @param eosz  effective operand size of the instruction, 0 | 1 | 2 | 3 for 
/// 8 | 16 | 32 | 64 bits respectively.
/// @return  the actual width of operand in bits.
XED_DLL_EXPORT xed_uint32_t xed_operand_width_bits(const xed_operand_t* p,
                                                   const xed_uint32_t eosz);

/// @ingroup DEC
static XED_INLINE 
xed_nonterminal_enum_t xed_operand_nonterminal_name(const xed_operand_t* p)  { 
    return p->_u._nt; 
}

/// @ingroup DEC
/// Careful with this one -- use #xed_decoded_inst_get_reg()! This one is
/// probably not what you think it is. It is only used for hard-coded
/// registers implicit in the instruction encoding. Most likely you want to
/// get the #xed_operand_enum_t and then look up the instruction using
/// #xed_decoded_inst_get_reg(). The hard-coded registers are also available
/// that way.
/// @param p  an operand template,  #xed_operand_t.
/// @return  the hard-wired (implicit or suppressed) registers, type #xed_reg_enum_t
static XED_INLINE xed_reg_enum_t xed_operand_reg(const xed_operand_t* p) {
    return p->_u._reg;
}



/// @ingroup DEC
/// Careful with this one; See #xed_operand_is_register().
/// @param p  an operand template,  #xed_operand_t.
/// @return 1 if the operand template represents are register-type
/// operand. 
///
///  Related functions:
///   Use #xed_decoded_inst_get_reg() to get the decoded name of /// the
///   register, #xed_reg_enum_t. Use #xed_operand_is_register() to test
///   #xed_operand_enum_t names.
static XED_INLINE xed_uint_t xed_operand_template_is_register(const xed_operand_t* p) {
    return p->_type == XED_OPERAND_TYPE_NT_LOOKUP_FN || p->_type == XED_OPERAND_TYPE_REG;
}

/// @ingroup DEC
/// @param p  an operand template,  #xed_operand_t.
/// These operands represent branch displacements, memory displacements and various immediates
static XED_INLINE xed_uint32_t xed_operand_imm(const xed_operand_t* p) {
    return p->_u._imm;
}

/// @ingroup DEC
/// Print the operand p into the buffer buf, of length buflen.
/// @param p  an operand template,  #xed_operand_t.
/// @param buf buffer that gets filled in
/// @param buflen maximum buffer length
XED_DLL_EXPORT void    xed_operand_print(const xed_operand_t* p, char* buf, int buflen);
//@}
/// @name xed_inst_t Template Operand Enum Name Classification
//@{
/// @ingroup DEC
/// Tests the enum for inclusion in XED_OPERAND_REG0 through XED_OPERAND_REG15.
/// @param name the operand name, type #xed_operand_enum_t
/// @return 1 if the operand name is REG0...REG15, 0 otherwise. 
///
///Note there are other registers for memory addressing; See
/// #xed_operand_is_memory_addressing_register .
static XED_INLINE xed_uint_t xed_operand_is_register(xed_operand_enum_t name) {
    return name >= XED_OPERAND_REG0 && name <= XED_OPERAND_REG8;
}
/// @ingroup DEC
/// Tests the enum for inclusion in XED_OPERAND_{BASE0,BASE1,INDEX,SEG0,SEG1}
/// @param name the operand name, type #xed_operand_enum_t
/// @return 1 if the operand name is for a memory addressing register operand, 0
/// otherwise. See also #xed_operand_is_register .
static XED_INLINE xed_uint_t xed_operand_is_memory_addressing_register(xed_operand_enum_t name) {
    return  ( name == XED_OPERAND_BASE0 || 
              name == XED_OPERAND_INDEX ||
              name == XED_OPERAND_SEG0  ||
              name == XED_OPERAND_BASE1 || 
              name == XED_OPERAND_SEG1 );
}

//@}

/// @name xed_inst_t Template Operand Read/Written
//@{ 
/// @ingroup DEC
/// Returns the raw R/W action. There are many cases for conditional reads
/// and writes.
static XED_INLINE xed_operand_action_enum_t xed_operand_rw(const xed_operand_t* p)  { 
    return p->_rw; 
}

/// @ingroup DEC
/// If the operand is read, including conditional reads
XED_DLL_EXPORT xed_uint_t xed_operand_read(const xed_operand_t* p);
/// @ingroup DEC
/// If the operand is read-only, including conditional reads
XED_DLL_EXPORT xed_uint_t xed_operand_read_only(const xed_operand_t* p);
/// @ingroup DEC
/// If the operand is written, including conditional writes
XED_DLL_EXPORT xed_uint_t xed_operand_written(const xed_operand_t* p);
/// @ingroup DEC
/// If the operand is written-only, including conditional writes
XED_DLL_EXPORT xed_uint_t xed_operand_written_only(const xed_operand_t* p);
/// @ingroup DEC
/// If the operand is read-and-written, conditional reads and conditional writes
XED_DLL_EXPORT xed_uint_t xed_operand_read_and_written(const xed_operand_t* p);
/// @ingroup DEC
/// If the operand has a conditional read (may also write)
XED_DLL_EXPORT xed_uint_t xed_operand_conditional_read(const xed_operand_t* p);
/// @ingroup DEC
/// If the operand has a conditional write (may also read)
XED_DLL_EXPORT xed_uint_t xed_operand_conditional_write(const xed_operand_t* p);
//@}


/// @ingroup DEC
/// constant information about a decoded instruction form, including
/// the pointer to the constant operand properties #xed_operand_t for this
/// instruction form.
typedef struct xed_inst_s {


    // rflags info -- index in to the 2 tables of flags information. 
    // If _flag_complex is true, then the data are in the
    // xed_flags_complex_table[]. Otherwise, the data are in the
    // xed_flags_simple_table[].

    //xed_instruction_fixed_bit_confirmer_fn_t _confirmer;
    
    // number of operands in the operands array
    xed_uint8_t _noperands; 
    xed_uint8_t _cpl;  // the nominal CPL for the instruction.
    xed_uint16_t _flag_info_index; 

    xed_iform_enum_t _iform_enum;
    // index into the xed_operand[] array of xed_operand_t structures
    xed_uint16_t _operand_base; 
    xed_uint16_t _flag_complex; /* 1/0 valued, bool type */

    // index to table of xed_attributes_t structures
    xed_uint16_t _attributes;
    xed_exception_enum_t _exceptions;
}  xed_inst_t;

/// @name xed_inst_t Template  Instruction Information
//@{ 
/// @ingroup DEC
/// xed_inst_cpl() is DEPRECATED. Please use
///     "xed_decoded_inst_get_attribute(xedd, XED_ATTRIBUTE_RING0)" 
/// instead.
///Return the current privilege level (CPL) required for execution, 0 or
///3. If the value is zero, then the instruction can only execute in ring 0.
XED_DLL_EXPORT unsigned int xed_inst_cpl(const xed_inst_t* p) ;


//These next few are not doxygen commented because I want people to use the higher
//level interface in xed-decoded-inst.h.
static XED_INLINE xed_iclass_enum_t xed_inst_iclass(const xed_inst_t* p) {
    return xed_iform_to_iclass(p->_iform_enum);
}

static XED_INLINE xed_category_enum_t xed_inst_category(const xed_inst_t* p) {
    return xed_iform_to_category(p->_iform_enum);
}

static XED_INLINE xed_extension_enum_t xed_inst_extension(const xed_inst_t* p) {
    return xed_iform_to_extension(p->_iform_enum);
}
static XED_INLINE xed_isa_set_enum_t xed_inst_isa_set(const xed_inst_t* p) {
    return xed_iform_to_isa_set(p->_iform_enum);
}

static XED_INLINE xed_iform_enum_t xed_inst_iform_enum(const xed_inst_t* p) {
    return p->_iform_enum;
}


///@ingroup DEC
/// Number of instruction operands
static XED_INLINE unsigned int xed_inst_noperands(const xed_inst_t* p) {
    return p->_noperands;
}

///@ingroup DEC
/// Obtain a pointer to an individual operand
XED_DLL_EXPORT const xed_operand_t*
xed_inst_operand(const xed_inst_t* p, unsigned int i);



XED_DLL_EXPORT xed_uint32_t xed_inst_flag_info_index(const xed_inst_t* p);

//@}

/// @name xed_inst_t Attribute  access
//@{
/// @ingroup DEC
/// Scan for the attribute attr and return 1 if it is found, 0 otherwise.
XED_DLL_EXPORT xed_uint32_t
xed_inst_get_attribute(const xed_inst_t* p, 
                       xed_attribute_enum_t attr);

/// @ingroup DEC
/// Return the attributes bit vector
XED_DLL_EXPORT xed_attributes_t
xed_inst_get_attributes(const xed_inst_t* p);


/// @ingroup DEC
/// Return the maximum number of defined attributes, independent of any instruction.
XED_DLL_EXPORT unsigned int xed_attribute_max(void);

/// @ingroup DEC
/// Return the i'th global attribute in a linear sequence, independent of
/// any instruction. This is used for scanning and printing all attributes.
XED_DLL_EXPORT xed_attribute_enum_t xed_attribute(unsigned int i);

//@}

/// @name Exceptions
//@{
/// @ingroup DEC
/// Return #xed_exception_enum_t if present for the specified instruction.
/// This is currently only used for SSE and AVX instructions.
static XED_INLINE  xed_exception_enum_t xed_inst_exception(const xed_inst_t* p) {
    return p->_exceptions;
}

//@}
/// @ingroup DEC
/// Return the base of instruction table.
XED_DLL_EXPORT const xed_inst_t* xed_inst_table_base(void);

#endif
