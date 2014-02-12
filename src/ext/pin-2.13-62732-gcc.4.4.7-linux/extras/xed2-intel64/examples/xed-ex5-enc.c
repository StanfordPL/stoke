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
    
/// @file xed-ex5-enc.c

// encoder example.

/* compile this with -DXED_DECODER to enable the decoder functionality.

*/

    

#include "xed-interface.h"
#include "xed-examples-util.h"
#include <stdio.h>
#include <stdlib.h> // malloc, etc.
#include <string.h> //strcmp
#include <assert.h> 

int main(int argc, char** argv);

int 
main(int argc, char** argv)
{
    xed_error_enum_t xed_error;
    xed_state_t dstate;
    xed_uint8_t itext[XED_MAX_INSTRUCTION_BYTES];
    unsigned int ilen = XED_MAX_INSTRUCTION_BYTES;
    unsigned int i, j, olen = 0, ninst=0;
    xed_encoder_request_t enc_req;
#define NINST 20
    xed_encoder_instruction_t*  x = (xed_encoder_instruction_t*)  \
           malloc(sizeof(xed_encoder_instruction_t)*NINST);
    xed_bool_t convert_ok;
#if defined(XED_DECODER)
    xed_bool_t ok;
# define DBUFLEN 1000
    char buffer[DBUFLEN];

    xed_decoded_inst_t xedd;
#endif

    xed_tables_init();
    xed_state_zero(&dstate);
    /* dstate.mmode=XED_MACHINE_MODE_LONG_64; */
    dstate.mmode=XED_MACHINE_MODE_LEGACY_32;
    dstate.stack_addr_width=XED_ADDRESS_WIDTH_32b;

    /* using 0 for instructions that have the default effective operand
     * width for their mode. The default effective operand width for 16b
     * mode is 16b. The default effective operand width for 32b and 64b
     * modes is 32b. */

    xed_inst2(x+ninst, 
              dstate, XED_ICLASS_ADD, 0, 
              xed_reg(XED_REG_EAX), 
              xed_mem_bd(XED_REG_EDX, xed_disp(0x11223344, 32), 32));
    ninst++;

    xed_inst2(x+ninst, 
              dstate, XED_ICLASS_ADD, 0, 
              xed_reg(XED_REG_EAX), 
              xed_mem_gbisd(XED_REG_FS,
                         XED_REG_EAX,
                         XED_REG_ESI,4, xed_disp(0x11223344, 32), 32));
    ninst++;


    xed_inst0(x+ninst, dstate, XED_ICLASS_CMPSB, 0);
    xed_rep(x+ninst); /* set the rep prefix */
    ninst++;

    /* nondefault effective operand width for 32b mode so we must specify
       it. XED could figure it out from the opcode, but currently does
       not. */ 
    xed_inst0(x+ninst, dstate, XED_ICLASS_CMPSW, 16);
    xed_rep(x+ninst); /* set the rep prefix */
    ninst++;

    xed_inst0(x+ninst, dstate, XED_ICLASS_CMPSD, 0);
    xed_rep(x+ninst); /* set the rep prefix */
    ninst++;

    xed_inst1(x+ninst, dstate, XED_ICLASS_PUSH, 0, xed_reg(XED_REG_ECX));
    ninst++;

    xed_inst2(x+ninst, dstate, XED_ICLASS_XOR, 0,
              xed_reg(XED_REG_ECX),
              xed_reg(XED_REG_EDX));
    ninst++;
    
    /* this one has a nondefault effective operand width for 64b mode so we
       must specify it.  XED could figure this output from the operands,
       but currently it does not. */ 
    dstate.mmode=XED_MACHINE_MODE_LONG_64;
    xed_inst2(x+ninst, dstate, XED_ICLASS_XOR, 64,
              xed_reg(XED_REG_RCX),
              xed_reg(XED_REG_RDX));
    ninst++;

    /* nondefault effective operand width for 64b mode so we must specify
       it. XED could figure it out from the opcode, but currently does
       not. */ 
    xed_inst0(x+ninst, dstate, XED_ICLASS_CMPSQ, 64);
    xed_rep(x+ninst); /* set the rep prefix */
    ninst++;

    /* here it is ambiguous from the opcode what the effective operand
     * width is. I could use the operand, but do not do that yet. */
    xed_inst1(x+ninst, dstate, XED_ICLASS_PUSH, 64, xed_reg(XED_REG_RCX));
    ninst++;

    /* again, here's one where I could infer that the operation is 64b from
     * the memory operand, but not yet. */
    xed_inst1(x+ninst, dstate, XED_ICLASS_PUSH, 64,
              xed_mem_bd(XED_REG_RDX, xed_disp(0x11223344, 32), 64));
    ninst++;

    xed_inst1(x+ninst, dstate, XED_ICLASS_JMP, 64, xed_relbr(0x11223344, 32));
    ninst++;




    for(i=0;i<ninst;i++) {
        xed_encoder_request_zero_set_mode(&enc_req, &dstate);
        convert_ok = xed_convert_to_encoder_request(&enc_req, x+i);
        if (!convert_ok) {
            fprintf(stderr,"conversion to encode request failed\n");
            continue;
        }
        xed_error = xed_encode(&enc_req, itext, ilen, &olen);
        if (xed_error != XED_ERROR_NONE) {
            fprintf(stderr,"ENCODE ERROR: %s\n",
                    xed_error_enum_t2str(xed_error));
            continue;
        }
        printf("Result: %d\n\t", (int)i);
        for(j=0;j<olen;j++) 
            printf("%02x ", itext[j]);

        printf("\n");
#if defined(XED_DECODER)
        xed_decoded_inst_zero_set_mode(&xedd, &dstate);
        xed_error = xed_decode(&xedd, itext, olen);
        if (xed_error != XED_ERROR_NONE) {
            fprintf(stderr,"DECODE ERROR: %s\n",
                    xed_error_enum_t2str(xed_error));
            continue;
        }
        ok = xed_format(XED_SYNTAX_INTEL, &xedd, buffer, DBUFLEN, 0);
        if (ok)
            printf("\t%s\n", buffer);
        else 
            fprintf(stderr,"DISASSEMBLY ERROR\n");
#endif

    }
    return 0;
    (void) argc;
    (void) argv;
}
