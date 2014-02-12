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


    
    /**********************************************************************/
    /* WARNING:                                                           */
    /*                                                                    */
    /* THE CODE IN THIS FILE IS INCOMPLETE, EXPERIMENTAL AND SUBJECT TO   */
    /* CHANGE AT ANY TIME!                                                */
    /*                                                                    */
    /* ONLY USE THIS IF YOU ARE WILLING TO CHANGE YOUR CODE AS THE API    */
    /* EVOLVES.                                                           */
    /**********************************************************************/
    
#include "xed-interface.h"
#include "xed-ild.h"
#include "xed-get-time.h"

#include <stdio.h>

#define BUFLEN  1024
#define XDPRINT(x)     printf("%23s = %d\n", #x , i-> x );
#define XXPRINT(x)     printf("%23s = 0x%x\n", #x ,i-> x )
void print_ild(const xed_decoded_inst_t* p) {

    char buf[BUFLEN];
    xed_decoded_inst_dump(p, buf,  BUFLEN);
    printf("%s\n", buf);
    /*
    XDPRINT(length);
    XDPRINT(nprefixes);
    XDPRINT(found);
    XDPRINT(osz);
    XDPRINT(asz);
    XXPRINT(seg);
    XDPRINT(lock);
    XDPRINT(f2);
    XDPRINT(f3);
    XXPRINT(last_f2f3);
    XXPRINT(first_f2f3);
    XXPRINT(rex);
    XXPRINT(nominal_opcode);
    XDPRINT(nominal_opcode_position);
    XXPRINT(modrm);
    XXPRINT(has_modrm);
    XXPRINT(pos_modrm);
    XXPRINT(has_sib);
    XXPRINT(pos_sib);
    XXPRINT(disp_bytes);
    XXPRINT(pos_disp);
    XXPRINT(imm_bytes);
    XXPRINT(imm1_bytes);
    XXPRINT(pos_imm);
    XDPRINT(map);
    XDPRINT(amd3dnow);
    XDPRINT(rex_w);
    XDPRINT(rex_r);
    XDPRINT(rex_x);
    XDPRINT(rex_b);
    XDPRINT(vex_l);
    XDPRINT(vex_pp);
    XDPRINT(vex_w); */
}

int main(int argc, char** argv);

int main(int argc, char** argv) {
    xed_machine_mode_enum_t mmode;
    xed_bool_t long_mode = 1;
    xed_decoded_inst_t ild;
    xed_uint_t length = 0;
    xed_uint_t i;
#define NTIMES 100
    xed_uint64_t t1,t2,delta[NTIMES],tot;    
    unsigned char itext[15] = { 0xf2, 0x2e, 0x4f, 0x0F, 0x85, 0x99,
                                0x00, 0x00, 0x00 };
    xed_state_t dstate;

    

    // initialize the XED tables -- one time.
    xed_tables_init();

    // The state of the machine -- required for decoding
    if (long_mode) {
        mmode=XED_MACHINE_MODE_LONG_64;
    }
    else {
        mmode=XED_MACHINE_MODE_LEGACY_32;
    }

    dstate.mmode = mmode;

    for(i=0;i<NTIMES;i++) {
        t1 = xed_get_time();
        xed_decoded_inst_zero_set_mode(&ild, &dstate);
        //xed_ild_init(&ild, mmode, itext, 15);
        xed_ild_decode(&ild, itext, XED_MAX_INSTRUCTION_BYTES);
        t2 = xed_get_time();
        delta[i] = t2-t1;
    }

    tot = 0;
    for(i=0;i<NTIMES;i++) {
        printf("Decode time[%3d] = " XED_FMT_LU "\n", i,delta[i]);
        if (i>0)
            tot += delta[i];
    }
    printf("Avg time = " XED_FMT_LU "\n", tot/(NTIMES-1));
    
    print_ild(&ild);
    printf("length = %d\n",length);

    return 0;
    (void) argc; (void) argv; //pacify compiler

}
