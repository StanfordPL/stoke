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
/// @file xed-ex1.cpp

extern "C" {
#include "xed-interface.h"
}
#include "xed-examples-ostreams.H"
#include <iostream>
#include <iomanip>
#include <sstream>
#include <cassert>
#include <cstring>
#include <cstdlib>
#include <cstdio>
using namespace std;

int main(int argc, char** argv);
void print_misc(xed_decoded_inst_t* xedd) {
    const xed_operand_values_t* ov = xed_decoded_inst_operands_const(xedd);
    if (xed_operand_values_has_real_rep(ov)) {
        printf("REAL REP ");
    }
    if (xed_operand_values_has_rep_prefix(ov)) {
        printf("F3 PREFIX\n");
    }
    if (xed_operand_values_has_repne_prefix(ov)) {
        printf("F2 PREFIX\n");
    }
    if (xed_operand_values_has_address_size_prefix(ov)) {
        printf("67 PREFIX\n");
    }
    if (xed_operand_values_has_operand_size_prefix(ov)) {
        /* this 66 prefix is not part of the opcode */
        printf("66-OSZ PREFIX\n");
    }
    if (xed_operand_values_has_66_prefix(ov)) {
        /* this is any 66 prefix including the above */
        printf("ANY 66 PREFIX\n");
    }

    if (xed_decoded_inst_get_attribute(xedd, XED_ATTRIBUTE_RING0)) {
        printf("RING0 only\n");
    }

    const xed_inst_t* xi = xed_decoded_inst_inst(xedd);
    xed_exception_enum_t e = xed_inst_exception(xi);
    if (e != XED_EXCEPTION_INVALID) {
        printf("EXCEPTION TYPE: %s\n", xed_exception_enum_t2str(e));
    }

    // does not include instructions that have XED_ATTRIBUTE_MASK_AS_CONTROL.
    // does not include vetor instructions that have k0 as a mask register.
    if (xed_decoded_inst_masked_vector_operation(xedd))
        printf("WRITE-MASKING\n");

    xed_uint_t np = xed_decoded_inst_get_nprefixes(xedd);
    if (np) 
        printf("Number of legacy prefixes: %d \n", np);

}

void print_attributes(xed_decoded_inst_t* xedd) {
    /* Walk the attributes. Generally, you'll know the one you want to
     * query and just access that one directly. */

    const xed_inst_t* xi = xed_decoded_inst_inst(xedd);

    unsigned int i, nattributes  =  xed_attribute_max();

    cout << "ATTRIBUTES: ";
    for(i=0;i<nattributes;i++) {
        xed_attribute_enum_t attr = xed_attribute(i);
        if (xed_inst_get_attribute(xi,attr))
            cout << xed_attribute_enum_t2str(attr) << " ";
    }
    cout << endl;
}

void print_reads_zf_flag(xed_decoded_inst_t* xedd) {
    /* example of reading one bit from the flags set */
    if (xed_decoded_inst_uses_rflags(xedd)) {
        xed_simple_flag_t const* rfi = xed_decoded_inst_get_rflags_info(xedd);
        xed_flag_set_t const* read_set  = xed_simple_flag_get_read_flag_set(rfi);
        if (read_set->s.zf) {
            printf("READS ZF\n");
        }
    }
}

void print_flags(xed_decoded_inst_t* xedd) {
    unsigned int i, nflags;
    if (xed_decoded_inst_uses_rflags(xedd)) {
        cout << "FLAGS:" << endl;
        const xed_simple_flag_t* rfi = xed_decoded_inst_get_rflags_info(xedd);
        if (xed_simple_flag_reads_flags(rfi)) {
            cout <<  "   reads-rflags ";
        }
        else if (xed_simple_flag_writes_flags(rfi)) {
            //XED provides may-write and must-write information
            if (xed_simple_flag_get_may_write(rfi)) {
                cout << "  may-write-rflags ";
            }
            if (xed_simple_flag_get_must_write(rfi)) {
                cout << "  must-write-rflags ";
            }
        }
        nflags = xed_simple_flag_get_nflags(rfi);
        for( i=0;i<nflags ;i++) {
            const xed_flag_action_t* fa = xed_simple_flag_get_flag_action(rfi,i);
            char buf[500];
            xed_flag_action_print(fa,buf,500);
            cout  <<  buf << " ";
        }
        cout << endl;
        // or as as bit-union
        const xed_flag_set_t* read_set    = xed_simple_flag_get_read_flag_set(rfi);
        /* written set include undefined flags */
        const xed_flag_set_t* written_set = xed_simple_flag_get_written_flag_set(rfi);
        const xed_flag_set_t* undefined_set =
            xed_simple_flag_get_undefined_flag_set(rfi);
        char buf[500];
        xed_flag_set_print(read_set,buf,500);
        cout << "       read: " << setw(30) << buf
             << " mask=0x" << hex << xed_flag_set_mask(read_set) << dec  << endl;
        xed_flag_set_print(written_set,buf,500);
        cout << "    written: " << setw(30) << buf
             << " mask=0x" << hex << xed_flag_set_mask(written_set) << dec  << endl;
        xed_flag_set_print(undefined_set,buf,500);
        cout << "  undefined: " << setw(30) << buf
             << " mask=0x" << hex << xed_flag_set_mask(undefined_set) << dec  << endl;
    }
}

void print_memops(xed_decoded_inst_t* xedd) {
    unsigned int i, memops = xed_decoded_inst_number_of_memory_operands(xedd);
    cout << "Memory Operands" << endl;
    
    for( i=0;i<memops ; i++)   {
        xed_bool_t r_or_w = false;
        cout << "  " << i << " ";
        if ( xed_decoded_inst_mem_read(xedd,i)) {
            cout << "   read ";
            r_or_w = true;
        }
        if (xed_decoded_inst_mem_written(xedd,i)) {
            cout << "written ";
            r_or_w = true;
        }
        if (!r_or_w) {
            cout << "   agen "; // LEA instructions
        }
        xed_reg_enum_t seg = xed_decoded_inst_get_seg_reg(xedd,i);
        if (seg != XED_REG_INVALID) {
            cout << "SEG= " << xed_reg_enum_t2str(seg) << " ";
        }
        xed_reg_enum_t base = xed_decoded_inst_get_base_reg(xedd,i);
        if (base != XED_REG_INVALID) {
            cout << "BASE= " << setw(3) << xed_reg_enum_t2str(base) << "/" 
                 << setw(3)
                 <<  xed_reg_class_enum_t2str(xed_reg_class(base)) << " "; 
        }
        xed_reg_enum_t indx = xed_decoded_inst_get_index_reg(xedd,i);
        if (i == 0 && indx != XED_REG_INVALID) {
            cout << "INDEX= " << setw(3) << xed_reg_enum_t2str(indx)
                 << "/" <<  setw(3) 
                 << xed_reg_class_enum_t2str(xed_reg_class(indx)) << " ";
            if (xed_decoded_inst_get_scale(xedd,i) != 0) {
                // only have a scale if the index exists.
                cout << "SCALE= " <<  xed_decoded_inst_get_scale(xedd,i) << " ";
            }
        }
        xed_uint_t disp_bits = xed_decoded_inst_get_memory_displacement_width(xedd,i);
        if (disp_bits) {
            cout  << "DISPLACEMENT_BYTES= " << disp_bits << " ";
            xed_int64_t disp = xed_decoded_inst_get_memory_displacement(xedd,i);
            cout << "0x" << hex << setfill('0')
                 << setw(16) << disp << setfill(' ') << dec << " base10=" << disp;
        }
        
        cout << " ASZ" << i << "="
             << xed_decoded_inst_get_memop_address_width(xedd,i);
        cout << endl;
    }
    cout << "  MemopBytes = "
         << xed_decoded_inst_get_memory_operand_length(xedd,0) << endl;
}

void print_operands(xed_decoded_inst_t* xedd) {
    unsigned int i, noperands;
    cout << "Operands" << endl;
    const xed_inst_t* xi = xed_decoded_inst_inst(xedd);
    noperands = xed_inst_noperands(xi);
    cout << "#   TYPE               DETAILS        VIS  RW       OC2 BITS BYTES NELEM ELEMSZ   ELEMTYPE"
         << endl;
    cout << "#   ====               =======        ===  ==       === ==== ===== ===== ======   ========"
         << endl;




    for( i=0; i < noperands ; i++) { 
        const xed_operand_t* op = xed_inst_operand(xi,i);
        xed_operand_enum_t op_name = xed_operand_name(op);
        cout << i << " " << setw(6) << xed_operand_enum_t2str(op_name) << " ";
        ostringstream os;


        switch(op_name) {
          case XED_OPERAND_AGEN:
          case XED_OPERAND_MEM0:
          case XED_OPERAND_MEM1:
            // we print memops in a different function
            os << "(see below)";
            break;
          case XED_OPERAND_PTR:  // pointer (always in conjunction with a IMM0)
          case XED_OPERAND_RELBR: { // branch displacements
              xed_uint_t disp_bits =
                  xed_decoded_inst_get_branch_displacement_width(xedd);
              if (disp_bits) {
                  os  << "BRANCH_DISPLACEMENT_BYTES= " << disp_bits << " ";
                  xed_int32_t disp = xed_decoded_inst_get_branch_displacement(xedd);
                  os << hex << setfill('0') << setw(8) << disp << setfill(' ') << dec;
              }
            }
            break;

          case XED_OPERAND_IMM0: { // immediates
              xed_uint_t bits = xed_decoded_inst_get_immediate_width_bits(xedd);
              os << hex << "0x" << setfill('0');
              if (xed_decoded_inst_get_immediate_is_signed(xedd)) {
                  xed_uint_t swidth = bits?(bits/4):8;
                  xed_int32_t x =xed_decoded_inst_get_signed_immediate(xedd);
                  os << setw(swidth) << x;
              }
              else {
                  xed_uint64_t x = xed_decoded_inst_get_unsigned_immediate(xedd); 
                  xed_uint_t swidth = bits?(bits/4):16;
                  os << setw(swidth) << x;
              }
              os << setfill(' ') << dec << '(' << bits << "b)";
              break;
          }
          case XED_OPERAND_IMM1: { // 2nd immediate is always 1 byte.
              xed_uint8_t x = xed_decoded_inst_get_second_immediate(xedd);
              os << hex << "0x" << setfill('0') << setw(2)
                 << (int)x << setfill(' ') << dec;
              break;
          }

          case XED_OPERAND_REG0:
          case XED_OPERAND_REG1:
          case XED_OPERAND_REG2:
          case XED_OPERAND_REG3:
          case XED_OPERAND_REG4:
          case XED_OPERAND_REG5:
          case XED_OPERAND_REG6:
          case XED_OPERAND_REG7:
          case XED_OPERAND_REG8:
          case XED_OPERAND_BASE0:
          case XED_OPERAND_BASE1:
            {
              xed_reg_enum_t r = xed_decoded_inst_get_reg(xedd, op_name);
              os << xed_operand_enum_t2str(op_name) << "=" << xed_reg_enum_t2str(r);
              break;
            }
          default: 
            //FIXME: do we excpet any other operands?      
            os << "need to add support for printing operand: " << xed_operand_enum_t2str(op_name);
            assert(0);      
        }
        cout << setw(21) << os.str();
        cout << " " << setw(10)
             << xed_operand_visibility_enum_t2str(xed_operand_operand_visibility(op))
             << " " << setw(3) << xed_operand_action_enum_t2str(xed_operand_rw(op))
             << " " << setw(9) << xed_operand_width_enum_t2str(xed_operand_width(op));

        xed_uint_t bits =  xed_decoded_inst_operand_length_bits(xedd,i);
        cout << "  " << setw(3) << bits;

        /* rounding, bits might not be a multiple of 8 */
        cout << "  " << setw(4) << ((bits +7) >> 3); 

        cout << "    " << setw(2) << xed_decoded_inst_operand_elements(xedd,i);
        cout << "    " << setw(3)
             << xed_decoded_inst_operand_element_size_bits(xedd,i);
        
        cout << " " << setw(10)
             <<  xed_operand_element_type_enum_t2str(
                       xed_decoded_inst_operand_element_type(xedd,i));
        cout << endl;
    }
}

int main(int argc, char** argv) {
    xed_state_t dstate;
    xed_decoded_inst_t xedd;
    int i, bytes = 0;
    unsigned char itext[XED_MAX_INSTRUCTION_BYTES];
    int first_argv;
    xed_bool_t already_set_mode = 0;
    xed_chip_enum_t chip = XED_CHIP_INVALID;
    xed_tables_init();
    xed_state_zero(&dstate);

    first_argv = 1;
    dstate.mmode=XED_MACHINE_MODE_LEGACY_32;
    dstate.stack_addr_width=XED_ADDRESS_WIDTH_32b;

    for(i=1;i< argc;i++) {
        if (strcmp(argv[i], "-64") == 0) {
            assert(already_set_mode == 0);
            already_set_mode = 1;
            dstate.mmode=XED_MACHINE_MODE_LONG_64;
            first_argv++;
        }
        else if (strcmp(argv[i], "-16") == 0) {
            assert(already_set_mode == 0);
            already_set_mode = 1;
            dstate.mmode=XED_MACHINE_MODE_LEGACY_16;
            dstate.stack_addr_width=XED_ADDRESS_WIDTH_16b;
            first_argv++;
        }
        else if (strcmp(argv[i], "-s16") == 0) {
            already_set_mode = 1;
            dstate.stack_addr_width=XED_ADDRESS_WIDTH_16b;
            first_argv++;
        }
        else if (strcmp(argv[i], "-chip") == 0) {
            assert(i+1 < argc);
            chip = str2xed_chip_enum_t(argv[i+1]);
            printf("Setting chip to %s\n", xed_chip_enum_t2str(chip));
            assert(chip != XED_CHIP_INVALID);
            first_argv+=2;
        }
    }

    assert(first_argv < argc);

    xed_decoded_inst_zero_set_mode(&xedd, &dstate);
    xed_decoded_inst_set_input_chip(&xedd, chip);

    // convert ascii hex to hex bytes
    for(  i=first_argv ;i < argc; i++) {
        unsigned int x, len, p;
        len = (unsigned int) strlen(argv[i]);
        if ((len & 1) == 1) { 
            cout << "Must supply even number of nibbles per substring" << endl;
            exit(1);
        }
        for(p=0;p<len;p+=2) {
            char t[3];
            t[0] = argv[i][p];
            t[1] = argv[i][p+1];
            t[2] = 0;
            istringstream s(t);
            s >> hex >> x;
            assert(bytes < XED_MAX_INSTRUCTION_BYTES);
            itext[bytes++] = XED_STATIC_CAST(xed_uint8_t,x);
        }
    }
    if (bytes == 0) {
        cout << "Must supply some hex bytes" << endl;
        exit(1);
    }

    cout << "Attempting to decode: " << hex << setfill('0') ;
    for(i=0;i<bytes;i++)
        cout <<  setw(2) << static_cast<xed_uint_t>(itext[i]) << " ";
    cout << endl << setfill(' ') << dec;

    xed_error_enum_t xed_error = xed_decode(
        &xedd, 
        XED_REINTERPRET_CAST(const xed_uint8_t*,itext), 
        bytes);
    
    switch(xed_error)    {
      case XED_ERROR_NONE:
        break;
      case XED_ERROR_BUFFER_TOO_SHORT:
        cout << "Not enough bytes provided" << endl;
        exit(1);
      case XED_ERROR_INVALID_FOR_CHIP:
        cout << "The instruction was not valid for the specified chip." << endl;
        exit(1);
      case XED_ERROR_GENERAL_ERROR:
        cout << "Could not decode given input." << endl;
        exit(1);
      default:
        cout << "Unhandled error code " << xed_error_enum_t2str(xed_error) << endl;
        exit(1);
    }
        

    cout << "iclass " 
         << xed_iclass_enum_t2str(xed_decoded_inst_get_iclass(&xedd))  << "\t";
    cout << "category " 
         << xed_category_enum_t2str(xed_decoded_inst_get_category(&xedd))  << "\t";
    cout << "ISA-extension " 
         << xed_extension_enum_t2str(xed_decoded_inst_get_extension(&xedd)) << "\t";
    cout << "ISA-set " 
         << xed_isa_set_enum_t2str(xed_decoded_inst_get_isa_set(&xedd))  << endl;
    cout << "instruction-length " 
         << xed_decoded_inst_get_length(&xedd) << endl;
    cout << "operand-width " 
         << xed_decoded_inst_get_operand_width(&xedd)  << endl;   
    cout << "effective-operand-width " 
         << xed_operand_values_get_effective_operand_width(
             xed_decoded_inst_operands_const(&xedd)) 
         << endl;   
    cout << "effective-address-width "
         << xed_operand_values_get_effective_address_width(
             xed_decoded_inst_operands_const(&xedd)) 
         << endl; 
    cout << "stack-address-width "
         << xed_operand_values_get_stack_address_width(
             xed_decoded_inst_operands_const(&xedd))
         << endl; 
    cout << "iform-enum-name " 
         << xed_iform_enum_t2str(xed_decoded_inst_get_iform_enum(&xedd)) << endl;
    cout << "iform-enum-name-dispatch (zero based) " 
         << xed_decoded_inst_get_iform_enum_dispatch(&xedd) << endl;
    cout << "iclass-max-iform-dispatch "
         << xed_iform_max_per_iclass(xed_decoded_inst_get_iclass(&xedd))  << endl;

    // operands
    print_operands(&xedd);
    
    // memops
    print_memops(&xedd);
    
    // flags
    print_flags(&xedd);
    print_reads_zf_flag(&xedd);

    // attributes
    print_attributes(&xedd);

    // misc
    print_misc(&xedd);
    return 0;
}
