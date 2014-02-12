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
/// @file xed-decoded-inst-api.h
/// 

#if !defined(_XED_DECODED_INST_API_H_)
# define _XED_DECODED_INST_API_H_

#include "xed-decoded-inst.h"
#include "xed-operand-accessors.h"
#include "xed-state.h"
#include "xed-operand-values-interface.h"

///////////////////////////////////////////////////////
/// API
///////////////////////////////////////////////////////

/// @name xed_decoded_inst_t High-level accessors
//@{
/// @ingroup DEC
/// Return true if the instruction is valid
static XED_INLINE xed_bool_t xed_decoded_inst_valid(const xed_decoded_inst_t* p ) {
    return XED_STATIC_CAST(xed_bool_t,(p->_inst != 0));
}
/// @ingroup DEC
/// Return the #xed_inst_t structure for this instruction. This is the route to the basic operands form information.
static XED_INLINE const xed_inst_t* xed_decoded_inst_inst( const xed_decoded_inst_t* p) {
    return p->_inst;
}


/// @ingroup DEC
/// Return the instruction #xed_category_enum_t enumeration
static XED_INLINE xed_category_enum_t xed_decoded_inst_get_category(const xed_decoded_inst_t* p) {
    xed_assert(p->_inst != 0);
    return xed_inst_category(p->_inst);
}
/// @ingroup DEC
/// Return the instruction #xed_extension_enum_t enumeration
static XED_INLINE xed_extension_enum_t xed_decoded_inst_get_extension( const xed_decoded_inst_t* p) {
    xed_assert(p->_inst != 0);
    return xed_inst_extension(p->_inst);
}
/// @ingroup DEC
/// Return the instruction #xed_isa_set_enum_t enumeration
static XED_INLINE xed_isa_set_enum_t xed_decoded_inst_get_isa_set( const xed_decoded_inst_t* p) {
    xed_assert(p->_inst != 0);
    return xed_inst_isa_set(p->_inst);
}
/// @ingroup DEC
/// Return the instruction #xed_iclass_enum_t enumeration.
static XED_INLINE xed_iclass_enum_t xed_decoded_inst_get_iclass( const xed_decoded_inst_t* p){
    xed_assert(p->_inst != 0);
    return xed_inst_iclass(p->_inst);
}

/// @name xed_decoded_inst_t Attirbutes and properties
//@{
/// @ingroup DEC
/// Returns 1 if the attribute is defined for this instruction.
XED_DLL_EXPORT xed_uint32_t
xed_decoded_inst_get_attribute(const xed_decoded_inst_t* p,
                               xed_attribute_enum_t attr);

/// @ingroup DEC
/// Returns the attribute bitvector
XED_DLL_EXPORT xed_attributes_t
xed_decoded_inst_get_attributes(const xed_decoded_inst_t* p);
//@}

/// @ingroup DEC
/// Returns 1 if the instruction is xacquire.
XED_DLL_EXPORT xed_uint32_t
xed_decoded_inst_is_xacquire(const xed_decoded_inst_t* p);

/// @ingroup DEC
/// Returns 1 if the instruction is xrelease.
XED_DLL_EXPORT xed_uint32_t
xed_decoded_inst_is_xrelease(const xed_decoded_inst_t* p);

/// @ingroup DEC
/// Returns 1 if the instruction has mpx prefix.
XED_DLL_EXPORT xed_uint32_t
xed_decoded_inst_has_mpx_prefix(const xed_decoded_inst_t* p);

/// @ingroup DEC
/// Returns the modrm byte
XED_DLL_EXPORT xed_uint8_t
xed_decoded_inst_get_modrm(const xed_decoded_inst_t* p);

/// @ingroup DEC
/// Returns 1 iff the instruction uses destination-masking.  This is 0 for
/// blend operations that use their mask field as a control.
XED_DLL_EXPORT xed_bool_t
xed_decoded_inst_masked_vector_operation(xed_decoded_inst_t* p);

/// @ingroup DEC
/// Returns the number of legacy prefixes.
XED_DLL_EXPORT xed_uint_t
xed_decoded_inst_get_nprefixes(xed_decoded_inst_t* p);

//@}


/// @name xed_decoded_inst_t Operands 
//@{
/// @ingroup DEC
/// Obtain a constant pointer to the operands
static XED_INLINE const xed_operand_values_t* 
xed_decoded_inst_operands_const(const xed_decoded_inst_t* p) {
    return p;
}
/// @ingroup DEC
/// Obtain a non-constant pointer to the operands
static XED_INLINE xed_operand_values_t* 
xed_decoded_inst_operands(xed_decoded_inst_t* p) {
    return p;
}

/// Return the length in bits of the operand_index'th operand.
/// @ingroup DEC
XED_DLL_EXPORT unsigned int  xed_decoded_inst_operand_length_bits(const xed_decoded_inst_t* p, 
                                                                  unsigned int operand_index);


/// Deprecated -- returns the length in bytes of the operand_index'th operand.
/// Use #xed_decoded_inst_operand_length_bits() instead.
///  @ingroup DEC
XED_DLL_EXPORT unsigned int  xed_decoded_inst_operand_length(const xed_decoded_inst_t* p, 
                                                             unsigned int operand_index);


/// Return the number of operands
/// @ingroup DEC
static XED_INLINE unsigned int  xed_decoded_inst_noperands(const xed_decoded_inst_t* p) {
    unsigned int noperands = xed_inst_noperands(xed_decoded_inst_inst(p));
    return noperands;
}


/// Return the number of element in the operand (for SSE and AVX operands)
/// @ingroup DEC
XED_DLL_EXPORT unsigned int  xed_decoded_inst_operand_elements(const xed_decoded_inst_t* p, 
                                                               unsigned int operand_index);

/// Return the size of an element in bits  (for SSE and AVX operands)
/// @ingroup DEC
XED_DLL_EXPORT unsigned int  xed_decoded_inst_operand_element_size_bits(const xed_decoded_inst_t* p, 
                                                                        unsigned int operand_index);

/// Return the type of an element of type #xed_operand_element_type_enum_t (for SSE and AVX operands)
/// @ingroup DEC
XED_DLL_EXPORT xed_operand_element_type_enum_t  xed_decoded_inst_operand_element_type(const xed_decoded_inst_t* p, 
                                                                                      unsigned int operand_index);


//@}

/// @name xed_decoded_inst_t Initialization
//@{
/// @ingroup DEC
/// Zero the decode structure, but set the machine state/mode information. Re-initializes all operands.
XED_DLL_EXPORT void  xed_decoded_inst_zero_set_mode(xed_decoded_inst_t* p, const xed_state_t* dstate);
/// @ingroup DEC
/// Zero the decode structure, but preserve the existing machine state/mode information. Re-initializes all operands.
XED_DLL_EXPORT void  xed_decoded_inst_zero_keep_mode(xed_decoded_inst_t* p);
/// @ingroup DEC
/// Zero the decode structure completely. Re-initializes all operands.
XED_DLL_EXPORT void  xed_decoded_inst_zero(xed_decoded_inst_t* p);

/// @ingroup DEC
/// Set the machine mode and stack addressing width directly. This is NOT a
/// full initialization; Call #xed_decoded_inst_zero() before using this if
/// you want a clean slate.
static XED_INLINE void  xed_decoded_inst_set_mode(xed_decoded_inst_t* p,
                                                  xed_machine_mode_enum_t mmode,
                                                  xed_address_width_enum_t stack_addr_width) {
    xed_state_t dstate;
    dstate.mmode = mmode;
    dstate.stack_addr_width = stack_addr_width;
    xed_operand_values_set_mode(p, &dstate);
}



/// @ingroup DEC
/// Zero the decode structure, but copy the existing machine state/mode information from the supplied operands pointer. Same as #xed_decoded_inst_zero_keep_mode.
XED_DLL_EXPORT void  xed_decoded_inst_zero_keep_mode_from_operands(xed_decoded_inst_t* p,
                                                                   const xed_operand_values_t* operands);

/// @name xed_decoded_inst_t Length 
//@{
/// @ingroup DEC
/// Return the length of the decoded  instruction in bytes.
static XED_INLINE xed_uint_t
xed_decoded_inst_get_length(const xed_decoded_inst_t* p) {  
    return p->_decoded_length;
}


//@}

/// @name xed_decoded_inst_t Set Length 
//@{
/// @ingroup DEC
/// Set the length of the decoded  instruction in bytes.
static XED_INLINE xed_uint_t
xed_decoded_inst_set_length(xed_decoded_inst_t* p, unsigned char length) {
    return p->_decoded_length = length;
}


//@}


/// @name xed_decoded_inst_t Inc Length 
//@{
/// @ingroup DEC
/// Increment the length of the decoded  instruction in bytes.
static XED_INLINE xed_uint_t
xed_decoded_inst_inc_length(xed_decoded_inst_t* p) {
    return p->_decoded_length++;
}


//@}



/// @name xed_decoded_inst_t get Byte 
//@{
/// @ingroup DEC
/// Read itext byte.
static XED_INLINE xed_uint8_t
xed_decoded_inst_get_byte(const xed_decoded_inst_t* p, xed_uint_t byte_index)
{
    /// Read a whole byte from the normal input bytes.
    xed_uint8_t out = p->_byte_array._dec[byte_index];
    return out;
}

//@}

/// @name Modes
//@{
/// @ingroup DEC
/// Returns 16/32/64 indicating the machine mode with in bits. This is
/// derived from the input mode information.
static XED_INLINE xed_uint_t xed_decoded_inst_get_machine_mode_bits(const xed_decoded_inst_t* p) {
    xed_uint8_t mode = xed3_operand_get_mode(p);
    if (mode == 2) return 64;
    if (mode == 1) return 32;
    return 16;
}
/// @ingroup DEC
/// Returns 16/32/64 indicating the stack addressing mode with in
/// bits. This is derived from the input mode information.
static XED_INLINE xed_uint_t xed_decoded_inst_get_stack_address_mode_bits(const xed_decoded_inst_t* p) {
    xed_uint8_t smode = xed3_operand_get_smode(p);
    if (smode == 2) return 64;
    if (smode == 1) return 32;
    return 16;
}

/// Returns the operand width in bits: 8/16/32/64. This is different than
/// the #xed_operand_values_get_effective_operand_width() which only
/// returns 16/32/64. This factors in the BYTEOP attribute when computing
/// its return value. This is a convenience function.
/// @ingroup DEC
XED_DLL_EXPORT xed_uint32_t xed_decoded_inst_get_operand_width(const xed_decoded_inst_t* p);

/// Return the user-specified #xed_chip_enum_t chip name, or XED_CHIP_INVALID if not set.
/// @ingroup DEC
static XED_INLINE xed_chip_enum_t xed_decoded_inst_get_input_chip(const xed_decoded_inst_t* p) {
    return xed3_operand_get_chip(p);
}

/// Set a user-specified #xed_chip_enum_t chip name for restricting decode
/// @ingroup DEC
static XED_INLINE void xed_decoded_inst_set_input_chip(xed_decoded_inst_t* p,  xed_chip_enum_t chip) {
    xed3_operand_set_chip(p,chip);
}


/// Indicate if this decoded instruction is valid for the specified #xed_chip_enum_t chip
/// @ingroup DEC
XED_DLL_EXPORT xed_bool_t xed_decoded_inst_valid_for_chip(xed_decoded_inst_t* p, 
                                                          xed_chip_enum_t chip);

//@}




/// @name IFORM handling
//@{

/// @ingroup DEC
/// Return the instruction iform enum of type #xed_iform_enum_t .
static XED_INLINE xed_iform_enum_t xed_decoded_inst_get_iform_enum(const xed_decoded_inst_t* p) {
    xed_assert(p->_inst != 0);
    return xed_inst_iform_enum(p->_inst);
}

/// @ingroup DEC
/// Return the instruction zero-based iform number based on masking the
/// corresponding #xed_iform_enum_t. This value is suitable for
/// dispatching. The maximum value for a particular iclass is provided by
/// #xed_iform_max_per_iclass() .
static XED_INLINE unsigned int xed_decoded_inst_get_iform_enum_dispatch(const xed_decoded_inst_t* p) {
    xed_assert(p->_inst != 0);
    return xed_inst_iform_enum(p->_inst) - xed_iform_first_per_iclass(xed_inst_iclass(p->_inst));
}
//@}




/// @name xed_decoded_inst_t Printers
//@{
/// @ingroup DEC
/// Print out all the information about the decoded instruction to the buffer buf whose length is maximally buflen.
XED_DLL_EXPORT void xed_decoded_inst_dump(const xed_decoded_inst_t* p, char* buf,  int buflen);


/// @ingroup DEC
/// Print the instructions with the destination on the left. Use PTR qualifiers for memory access widths.
/// Recommendation: buflen must be more than 16 bytes, preferably at least 100 bytes.
/// @param p a #xed_decoded_inst_t for a decoded instruction
/// @param buf a buffer to write the disassembly in to.
/// @param buflen maximum length of the disassembly buffer
/// @param runtime_address the address of the instruction being disassembled. If zero, the offset is printed for relative branches. If nonzero, XED attempts to print the target address for relative branches.
/// @return Returns 0 if the disassembly fails, 1 otherwise.
XED_DLL_EXPORT xed_bool_t xed_decoded_inst_dump_intel_format(const xed_decoded_inst_t* p, 
                                                             char* buf, 
                                                             int buflen, 
                                                             xed_uint64_t runtime_address);
/// @ingroup DEC
/// Print the instructions with the destination on the left. Use PTR qualifiers for memory access widths.
/// Recommendation: buflen must be more than 16 bytes, preferably at least 100 bytes.
/// @param p a #xed_decoded_inst_t for a decoded instruction
/// @param buf a buffer to write the disassembly in to.
/// @param buflen maximum length of the disassembly buffer
/// @param runtime_address the address of the instruction being disassembled. If zero, the offset is printed for relative branches. If nonzero, XED attempts to print the target address for relative branches.
/// @param context A void* used only for the call back routine for symbolic disassembly if one is registered.
/// @return Returns 0 if the disassembly fails, 1 otherwise.
XED_DLL_EXPORT xed_bool_t xed_decoded_inst_dump_intel_format_context(const xed_decoded_inst_t* p, 
                                                                     char* buf, 
                                                                     int buflen, 
                                                                     xed_uint64_t runtime_address,
                                                                     void* context);

/// @ingroup DEC
/// Print the instructions with the destination operand on the right, with
/// several exceptions (bound, invlpga, enter, and other instructions with
/// two immediate operands).  Also use instruction name suffixes to
/// indicate operation width. Several instructions names are different as
/// well. 
/// Recommendation: buflen must be more than 16 bytes, preferably at least 100 bytes.
/// @param p a #xed_decoded_inst_t for a decoded instruction
/// @param buf a buffer to write the disassembly in to.
/// @param buflen maximum length of the disassembly buffer
/// @param runtime_address the address of the instruction being disassembled. If zero, the offset is printed for relative branches. If nonzero, XED attempts to print the target address for relative branches.
/// @return Returns 0 if the disassembly fails, 1 otherwise.
XED_DLL_EXPORT xed_bool_t xed_decoded_inst_dump_att_format(const xed_decoded_inst_t* p, 
                                                           char* buf, 
                                                           int buflen, 
                                                           xed_uint64_t runtime_address);

/// @ingroup DEC
/// Print the instructions with the destination operand on the right, with
/// several exceptions (bound, invlpga, enter, and other instructions with
/// two immediate operands).  Also use instruction name suffixes to
/// indicate operation width. Several instructions names are different as
/// well. buflen must be at least 100 bytes.
/// @param p a #xed_decoded_inst_t for a decoded instruction
/// @param buf a buffer to write the disassembly in to.
/// @param buflen maximum length of the disassembly buffer
/// @param runtime_address the address of the instruction being disassembled. If zero, the offset is printed for relative branches. If nonzero, XED attempts to print the target address for relative branches.
/// @param context A void* used only for the call back routine for symbolic disassembly if one is registered.
/// @return Returns 0 if the disassembly fails, 1 otherwise.
XED_DLL_EXPORT xed_bool_t xed_decoded_inst_dump_att_format_context(const xed_decoded_inst_t* p, 
                                                                   char* buf, 
                                                                   int buflen, 
                                                                   xed_uint64_t runtime_address,
                                                                   void* context);

/// @ingroup DEC
/// Print the instruction information in an verbose format.
/// @param p a #xed_decoded_inst_t for a decoded instruction
/// @param buf a buffer to write the disassembly in to.
/// @param buflen maximum length of the disassembly buffer
/// @param runtime_address the address of the instruction being disassembled. If zero, the offset is printed for relative branches. If nonzero, XED attempts to print the target address for relative branches.
/// @return Returns 0 if the disassembly fails, 1 otherwise.
XED_DLL_EXPORT xed_bool_t xed_decoded_inst_dump_xed_format(const xed_decoded_inst_t* p,
                                                           char* buf, 
                                                           int buflen, 
                                                           xed_uint64_t runtime_address) ;
//@}

/// @name xed_decoded_inst_t Operand Field Details
//@{
/// @ingroup DEC
XED_DLL_EXPORT xed_reg_enum_t xed_decoded_inst_get_seg_reg(const xed_decoded_inst_t* p, unsigned int mem_idx);
/// @ingroup DEC
XED_DLL_EXPORT xed_reg_enum_t xed_decoded_inst_get_base_reg(const xed_decoded_inst_t* p, unsigned int mem_idx);
XED_DLL_EXPORT xed_reg_enum_t xed_decoded_inst_get_index_reg(const xed_decoded_inst_t* p, unsigned int mem_idx);
/// @ingroup DEC
XED_DLL_EXPORT xed_uint_t xed_decoded_inst_get_scale(const xed_decoded_inst_t* p, unsigned int mem_idx);
/// @ingroup DEC
XED_DLL_EXPORT xed_int64_t xed_decoded_inst_get_memory_displacement(const xed_decoded_inst_t* p, unsigned int mem_idx);
/// @ingroup DEC
/// Result in BYTES
XED_DLL_EXPORT xed_uint_t  xed_decoded_inst_get_memory_displacement_width(const xed_decoded_inst_t* p, unsigned int mem_idx);
/// @ingroup DEC
/// Result in BITS
XED_DLL_EXPORT xed_uint_t  xed_decoded_inst_get_memory_displacement_width_bits(const xed_decoded_inst_t* p, unsigned int mem_idx);
/// @ingroup DEC
XED_DLL_EXPORT xed_int32_t xed_decoded_inst_get_branch_displacement(const xed_decoded_inst_t* p);
/// @ingroup DEC
/// Result in BYTES
XED_DLL_EXPORT xed_uint_t  xed_decoded_inst_get_branch_displacement_width(const xed_decoded_inst_t* p);
/// @ingroup DEC
/// Result in BITS
XED_DLL_EXPORT xed_uint_t  xed_decoded_inst_get_branch_displacement_width_bits(const xed_decoded_inst_t* p);
/// @ingroup DEC
XED_DLL_EXPORT xed_uint64_t xed_decoded_inst_get_unsigned_immediate(const xed_decoded_inst_t* p); 
/// @ingroup DEC
/// Return true if the first immediate (IMM0)  is signed
XED_DLL_EXPORT xed_uint_t xed_decoded_inst_get_immediate_is_signed(const xed_decoded_inst_t* p);
/// @ingroup DEC
/// Return the immediate width in BYTES.
XED_DLL_EXPORT xed_uint_t xed_decoded_inst_get_immediate_width(const xed_decoded_inst_t* p);
/// @ingroup DEC
/// Return the immediate width in BITS.
XED_DLL_EXPORT xed_uint_t xed_decoded_inst_get_immediate_width_bits(const xed_decoded_inst_t* p);
/// @ingroup DEC
XED_DLL_EXPORT xed_int32_t xed_decoded_inst_get_signed_immediate(const xed_decoded_inst_t* p);
/// @ingroup DEC
/// Return the second immediate. 
static XED_INLINE xed_uint8_t xed_decoded_inst_get_second_immediate(const xed_decoded_inst_t* p) {
    return xed3_operand_get_uimm1(p);
}

/// @ingroup DEC
/// Return the specified register operand. The specifier is of type #xed_operand_enum_t .
XED_DLL_EXPORT xed_reg_enum_t xed_decoded_inst_get_reg(const xed_decoded_inst_t* p, 
                                                       xed_operand_enum_t reg_operand);


/// See the comment on xed_decoded_inst_uses_rflags(). This can return 
/// 0 if the flags are really not used by this instruction.
/// @ingroup DEC
XED_DLL_EXPORT const xed_simple_flag_t* xed_decoded_inst_get_rflags_info( const xed_decoded_inst_t* p );

/// This returns 1 if the flags are read or written. This will return 0
/// otherwise. This will return 0 if the flags are really not used by this
/// instruction. For some shifts/rotates, XED puts a flags operand in the
/// operand array before it knows if the flags are used because of
/// mode-dependent masking effects on the immediate. 
/// @ingroup DEC
XED_DLL_EXPORT xed_bool_t xed_decoded_inst_uses_rflags(const xed_decoded_inst_t* p);
/// @ingroup DEC
XED_DLL_EXPORT xed_uint_t xed_decoded_inst_number_of_memory_operands(const xed_decoded_inst_t* p);
/// @ingroup DEC
XED_DLL_EXPORT xed_bool_t xed_decoded_inst_mem_read(const xed_decoded_inst_t* p, unsigned int mem_idx);
/// @ingroup DEC
XED_DLL_EXPORT xed_bool_t xed_decoded_inst_mem_written(const xed_decoded_inst_t* p, unsigned int mem_idx);
/// @ingroup DEC
XED_DLL_EXPORT xed_bool_t xed_decoded_inst_mem_written_only(const xed_decoded_inst_t* p, unsigned int mem_idx);
/// @ingroup DEC
XED_DLL_EXPORT xed_bool_t xed_decoded_inst_conditionally_writes_registers(const xed_decoded_inst_t* p);
/// @ingroup DEC
XED_DLL_EXPORT unsigned int  xed_decoded_inst_get_memory_operand_length(const xed_decoded_inst_t* p, 
                                                                        unsigned int memop_idx);

/// Returns the addressing width in bits (16,32,64) for MEM0 (memop_idx==0)
/// or MEM1 (memop_idx==1). This factors in things like whether or not the
/// reference is an implicit stack push/pop reference, the machine mode and
// 67 prefixes if present.

/// @ingroup DEC
XED_DLL_EXPORT unsigned int 
xed_decoded_inst_get_memop_address_width(const xed_decoded_inst_t* p,
                                         xed_uint_t memop_idx);



/// @ingroup DEC
/// Returns true if the instruction is a prefetch
XED_DLL_EXPORT xed_bool_t xed_decoded_inst_is_prefetch(const xed_decoded_inst_t* p);
//@}

                  
/// @name xed_decoded_inst_t Modification
//@{
// Modifying decoded instructions before re-encoding    
/// @ingroup DEC
XED_DLL_EXPORT void xed_decoded_inst_set_scale(xed_decoded_inst_t* p, xed_uint_t scale);
/// @ingroup DEC
/// Set the memory displacement using a BYTE length
XED_DLL_EXPORT void xed_decoded_inst_set_memory_displacement(xed_decoded_inst_t* p, xed_int64_t disp, xed_uint_t length_bytes);
/// @ingroup DEC
/// Set the branch  displacement using a BYTE length
XED_DLL_EXPORT void xed_decoded_inst_set_branch_displacement(xed_decoded_inst_t* p, xed_int32_t disp, xed_uint_t length_bytes);
/// @ingroup DEC
/// Set the signed immediate a BYTE length
XED_DLL_EXPORT void xed_decoded_inst_set_immediate_signed(xed_decoded_inst_t* p, xed_int32_t x, xed_uint_t length_bytes);
/// @ingroup DEC
/// Set the unsigned immediate a BYTE length
XED_DLL_EXPORT void xed_decoded_inst_set_immediate_unsigned(xed_decoded_inst_t* p, xed_uint64_t x, xed_uint_t length_bytes);


/// @ingroup DEC
/// Set the memory displacement a BITS length
XED_DLL_EXPORT void xed_decoded_inst_set_memory_displacement_bits(xed_decoded_inst_t* p, xed_int64_t disp, xed_uint_t length_bits);
/// @ingroup DEC
/// Set the branch displacement a BITS length
XED_DLL_EXPORT void xed_decoded_inst_set_branch_displacement_bits(xed_decoded_inst_t* p, xed_int32_t disp, xed_uint_t length_bits);
/// @ingroup DEC
/// Set the signed immediate a BITS length
XED_DLL_EXPORT void xed_decoded_inst_set_immediate_signed_bits(xed_decoded_inst_t* p, xed_int32_t x, xed_uint_t length_bits);
/// @ingroup DEC
/// Set the unsigned immediate a BITS length
XED_DLL_EXPORT void xed_decoded_inst_set_immediate_unsigned_bits(xed_decoded_inst_t* p, xed_uint64_t x, xed_uint_t length_bits);

//@}

/// @name xed_decoded_inst_t User Data Field
//@{
/// @ingroup DEC
/// Return a user data field for arbitrary use by the user after decoding.
static XED_INLINE  xed_uint64_t xed_decoded_inst_get_user_data(xed_decoded_inst_t* p) {
    return p->u.user_data;
}
/// @ingroup DEC
/// Modify the user data field.
static XED_INLINE  void xed_decoded_inst_set_user_data(xed_decoded_inst_t* p, xed_uint64_t new_value) {
    p->u.user_data = new_value;
}




//@}
#endif

