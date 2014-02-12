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

/// @file xed-tables.c
/// @brief a minimal example of accessing the XED internal tables

#include <stdio.h>
#include "xed-interface.h"


void dump_operand(const xed_operand_t* op) {
    printf("%s ", xed_operand_enum_t2str(xed_operand_name(op)));
    printf("%s ", 
      xed_operand_visibility_enum_t2str(xed_operand_operand_visibility(op)));
    printf("%s ", xed_operand_action_enum_t2str(xed_operand_rw(op)));
    printf("%s ", xed_operand_type_enum_t2str(xed_operand_type(op)));
    printf("%s ", xed_operand_element_xtype_enum_t2str(xed_operand_xtype(op)));
    if (xed_operand_type(op) == XED_OPERAND_TYPE_NT_LOOKUP_FN)
        printf("%s ", 
          xed_nonterminal_enum_t2str(xed_operand_nonterminal_name(op)));
    if (xed_operand_type(op) == XED_OPERAND_TYPE_REG)
        printf("%s ", xed_reg_enum_t2str(xed_operand_reg(op)));
}


void print_attributes(const xed_inst_t* xi) {
    /* Walk the attributes. Generally, you'll know the one you want to
     * query and just access that one directly. */

    unsigned int i, nattributes  =  xed_attribute_max();

    printf("ATTRIBUTES: ");
    for(i=0;i<nattributes;i++) {
        xed_attribute_enum_t attr = xed_attribute(i);
        if (xed_inst_get_attribute(xi,attr))
            printf("%s ", xed_attribute_enum_t2str(attr));
    }
    printf("\n");
}


void dump_inst(const xed_inst_t* p) {
    unsigned int j;
    printf("%s ", xed_iclass_enum_t2str(xed_inst_iclass(p)));
    printf("%s ", xed_iform_enum_t2str(xed_inst_iform_enum(p)));
    printf("%s ", xed_category_enum_t2str(xed_inst_category(p)));
    printf("%s ", xed_extension_enum_t2str(xed_inst_extension(p)));
    printf("%s ", xed_isa_set_enum_t2str(xed_inst_isa_set(p)));
    print_attributes(p);
    printf("%2u ", xed_inst_noperands(p));
    printf("\n");
    for(j=0;j<xed_inst_noperands(p);j++) {
        printf("\t%u ", j);
        dump_operand(xed_inst_operand(p,j));
        printf("\n");
    }

}

void dump_insts(void) {
    int i;
    for(i=0;i<XED_MAX_INST_TABLE_NODES;i++)  {
        printf("%d ", i);
        dump_inst(xed_inst_table_base()+i);
    }
}

int main(int argc, char** argv) {
    
    // initialize the XED tables -- one time.
    xed_tables_init();

    dump_insts();


    return 0;
    (void) argc; (void) argv; //pacify compiler
}
