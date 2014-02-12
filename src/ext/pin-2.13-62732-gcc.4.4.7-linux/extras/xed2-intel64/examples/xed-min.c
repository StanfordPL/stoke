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
/// @file xed-min.c
/// @brief a minimal toy example of using the decoder. 

#include "xed-interface.h"
#include <stdio.h>

int main(int argc, char** argv);

int main(int argc, char** argv) {
    xed_machine_mode_enum_t mmode;
    xed_address_width_enum_t stack_addr_width;
    xed_bool_t long_mode = 0;
    // create the decoded instruction, and fill in the machine mode (dstate)
    // make up a simple 2Byte instruction to decode
    unsigned int bytes = 0;
    unsigned char itext[15] = { 0xf, 0x85, 0x99, 0x00, 0x00, 0x00 };

    // initialize the XED tables -- one time.
    xed_tables_init();

    // The state of the machine -- required for decoding
    if (long_mode) {
        mmode=XED_MACHINE_MODE_LONG_64;
        stack_addr_width = XED_ADDRESS_WIDTH_64b;
    }
    else {
        mmode=XED_MACHINE_MODE_LEGACY_32;
        stack_addr_width = XED_ADDRESS_WIDTH_32b;
    }

    // This is a test of error handling. I vary the instuction length from
    // 0 bytes to 15 bytes.  Normally, you should send in 15 bytes of itext
    // unless you are near the end of a page and don't want to take a page
    // fault or tlb miss. Note, you have to reinitialize the xedd each time
    // you try to decode in to it.

    // Try different instruction lengths to see when XED recognizes an
    // instruction as valid.
    for(bytes = 0;bytes<=15;bytes++) {
        xed_error_enum_t xed_error;
        xed_decoded_inst_t xedd;
        xed_decoded_inst_zero(&xedd);
        xed_decoded_inst_set_mode(&xedd, mmode, stack_addr_width);
        xed_error = xed_decode(&xedd, 
                               XED_STATIC_CAST(const xed_uint8_t*,itext),
                               bytes);
        printf("%d %s\n",(int)bytes, xed_error_enum_t2str(xed_error));
    }
    return 0;
    (void) argc; (void) argv; //pacify compiler
}
