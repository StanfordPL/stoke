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

#include "xed-dot-prep.h"
#include <string.h>
#include <assert.h>
#include <stdlib.h>

/* each write replaces the last node for that input */


xed_dot_graph_supp_t* xed_dot_graph_supp_create(
    xed_syntax_enum_t syntax)
{
    xed_dot_graph_supp_t* gs = 0;
    
    gs = (xed_dot_graph_supp_t*)malloc(sizeof(xed_dot_graph_supp_t));
    assert( gs != 0 );
    gs->g = xed_dot_graph();
    gs->syntax = syntax;
    memset(gs->xed_reg_to_node,
           0,
           sizeof(xed_dot_node_t*)*XED_REG_LAST);
    
    gs->start = xed_dot_node(gs->g, "start");
    return gs;
}

void xed_dot_graph_supp_deallocate(xed_dot_graph_supp_t* gg)
{
    if (!gg)
        return;
    xed_dot_graph_deallocate(gg->g);
}


static xed_bool_t add_edge(xed_dot_graph_supp_t* gg,
                           xed_dot_node_t* n,
                           xed_reg_enum_t r,
                           xed_dot_edge_style_t s)
{
    xed_reg_enum_t r_enclosing;
    xed_bool_t found = 0;
    xed_dot_node_t* src = 0;
    /* add edge to n */
    r_enclosing = xed_get_largest_enclosing_register(r);
    src = gg->xed_reg_to_node[r_enclosing];
    if (src) {
        xed_dot_edge(gg->g,src,n,s);
        found = 1;
    }
    return found;
}

static void add_read_operands(xed_dot_graph_supp_t* gg,
                              xed_decoded_inst_t* xedd,
                              xed_dot_node_t* n)
{
    xed_uint_t i, noperands;
    xed_reg_enum_t r;
    const xed_inst_t* xi =  0;
    xed_bool_t found = 0;
    xi = xed_decoded_inst_inst(xedd);
    noperands = xed_inst_noperands(xi);
    
    for( i=0; i < noperands ; i++) {
        int memop = -1;
        const xed_operand_t* op = xed_inst_operand(xi,i);
        xed_operand_enum_t opname = xed_operand_name(op);
        if (xed_operand_is_register(opname) ||
            xed_operand_is_memory_addressing_register(opname)) {

             if (xed_operand_read(op)) {
                 /* add edge to n */
                 r = xed_decoded_inst_get_reg(xedd, opname);
                 found |= add_edge(gg, n, r, XED_DOT_EDGE_SOLID);
             }
             continue;
        }
        if (opname == XED_OPERAND_MEM0) 
            memop = 0;
        else if (opname == XED_OPERAND_MEM1 ) 
            memop = 1;

        if (memop != -1) {
            /* get reads of base/index regs,  if any */
            xed_reg_enum_t base, indx;
            
            base = xed_decoded_inst_get_base_reg(xedd,memop);
            indx = xed_decoded_inst_get_index_reg(xedd,memop);
            if (base != XED_REG_INVALID) 
                found |= add_edge(gg, n, base, XED_DOT_EDGE_SOLID);

            indx = xed_decoded_inst_get_index_reg(xedd,memop);
            if (indx != XED_REG_INVALID) 
                found |= add_edge(gg, n, indx, XED_DOT_EDGE_SOLID);
        }
    } /* for */
    if (!found) {
        /* add an edge from start */
        xed_dot_edge(gg->g, gg->start, n, XED_DOT_EDGE_SOLID);
    }
}

static void add_write_operands(xed_dot_graph_supp_t* gg,
                               xed_decoded_inst_t* xedd,
                               xed_dot_node_t* n)
{
    xed_uint_t i, noperands;
    xed_reg_enum_t r, r_enclosing;
    const xed_inst_t* xi =  0; 
    xi = xed_decoded_inst_inst(xedd);
    noperands = xed_inst_noperands(xi);

    for( i=0; i < noperands ; i++) {
        const xed_operand_t* op = xed_inst_operand(xi,i);
        xed_operand_enum_t opname = xed_operand_name(op);
        if (xed_operand_is_register(opname) ||
            xed_operand_is_memory_addressing_register(opname)) {

             if (xed_operand_written(op)) {
                 /* set n as the source of the value. */
                 /* ignoring partial writes */
                 r = xed_decoded_inst_get_reg(xedd, opname);

                 /* output dependences */
                 (void) add_edge(gg,n,r,XED_DOT_EDGE_DASHED);
                 
                 r_enclosing = xed_get_largest_enclosing_register(r);
                 gg->xed_reg_to_node[r_enclosing] = n;
             }
        }
    } /* for */
}


#define XED_DOT_TMP_BUF_LEN (1024U)

void xed_dot_graph_add_instruction(
    xed_dot_graph_supp_t* gg,
    xed_decoded_inst_t* xedd,
    xed_uint64_t runtime_instr_addr,
    void* caller_data)
{
    /*
      make a new node
      
      for each operand:
        if read:
          make edge from src node for that reg to the new node
      for each operand:
        if write:
          install this node as the writer

      what about partial writes?
      what about register nesting?
     */
    char disasm_str[XED_DOT_TMP_BUF_LEN];
    char* p = 0;
    size_t alen = 0;
    int ok;
    xed_dot_node_t* n = 0;
    xed_uint32_t remaining_buffer_bytes = XED_DOT_TMP_BUF_LEN;
    
    // put addr on separate line in node label
#if defined(XED_WINDOWS)
    ok = sprintf_s(disasm_str,
                   XED_DOT_TMP_BUF_LEN,
                   XED_FMT_LX "\\n",
                   runtime_instr_addr);
#else
    ok = sprintf(disasm_str,
                 XED_FMT_LX "\\n",
                 runtime_instr_addr);

#endif
    assert(ok > 0);
    alen = strlen(disasm_str);
    p = disasm_str + alen;
    remaining_buffer_bytes -= XED_CAST(xed_uint32_t, alen);

    ok = xed_format_context(gg->syntax,
                            xedd, 
                            p,
                            remaining_buffer_bytes,
                            runtime_instr_addr,
                            caller_data);
    if (!ok) {
        (void)xed_strncpy(disasm_str,"???", XED_DOT_TMP_BUF_LEN);
    }
    
    n = xed_dot_node(gg->g, disasm_str);
    add_read_operands(gg,xedd,n);
    add_write_operands(gg,xedd,n);    
}

void xed_dot_graph_dump(
    FILE* f,
    xed_dot_graph_supp_t* gg)
{
    xed_dot_dump(f, gg->g);
}
