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
/// @file xed-ex4.c
// decoder example. This is the "C" version of xed-ex2.cpp (which is C++).

#include "xed-interface.h"
#include "xed-examples-util.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h> //strcmp, memset
#include <assert.h> 

int main(int argc, char** argv);

int 
main(int argc, char** argv)
{
    xed_error_enum_t xed_error;

    xed_bool_t long_mode = 0;
    unsigned int bytes = 0;
    unsigned char itext[XED_MAX_INSTRUCTION_BYTES];
    int i;
    unsigned int u;
    xed_decoded_inst_t xedd;
#define BUFLEN  1000
    char buffer[BUFLEN];
    xed_bool_t ok;
    unsigned int isyntax;
    xed_syntax_enum_t syntax;
    xed_machine_mode_enum_t mmode;
    xed_address_width_enum_t stack_addr_width;
    xed_format_options_t format_options;

    // one time initialization 
    xed_tables_init();
    xed_set_verbosity( 99 );
    memset(&format_options,0, sizeof(format_options));
    format_options.hex_address_before_symbolic_name=0;
    format_options.xml_a=0;
    format_options.omit_unit_scale=0;
    format_options.no_sign_extend_signed_immediates=0;

    for(i=1;i<argc;i++) {
        if (strcmp(argv[i], "-xml") == 0) 
            format_options.xml_a=1;
        else if (strcmp(argv[i], "-no-unit-scale") == 0) 
            format_options.omit_unit_scale=1;
        else if (strcmp(argv[i], "-no-sign-extend") == 0) 
            format_options.no_sign_extend_signed_immediates=1;
        else if (strcmp(argv[i], "-64") == 0) 
            long_mode = 1;
        else 
            break;
    }

    xed_format_set_options( format_options );

    /// begin processing of instructions...

    if (long_mode) {
        mmode=XED_MACHINE_MODE_LONG_64;
        stack_addr_width =XED_ADDRESS_WIDTH_64b;
    }
    else {
        mmode=XED_MACHINE_MODE_LEGACY_32;
        stack_addr_width =XED_ADDRESS_WIDTH_32b;
    }

    xed_decoded_inst_zero(&xedd);
    xed_decoded_inst_set_mode(&xedd, mmode, stack_addr_width);

    for(  ;i < argc; i++)    {
        xed_uint8_t x = (xed_uint8_t)(xed_atoi_hex(argv[i]));
        assert(bytes < XED_MAX_INSTRUCTION_BYTES);
        itext[bytes++] = x;
    }
    if (bytes == 0)    {
        fprintf(stderr, "Must supply some hex bytes\n");
        exit(1);
    }

    printf("PARSING BYTES: ");
    for( u=0;u<bytes; u++) 
        printf("%02x ", XED_STATIC_CAST(unsigned int,itext[u]));
    printf("\n");

    xed_error = xed_decode(&xedd, 
                           XED_REINTERPRET_CAST(const xed_uint8_t*,itext),
                           bytes);
    switch(xed_error)
    {
      case XED_ERROR_NONE:
        break;
      case XED_ERROR_BUFFER_TOO_SHORT:
        fprintf(stderr,"Not enough bytes provided\n");
        exit(1);
      case XED_ERROR_GENERAL_ERROR:
        fprintf(stderr,"Could not decode given input.\n");
        exit(1);
      default:
        fprintf(stderr,"Unhandled error code %s\n", 
                xed_error_enum_t2str(xed_error));
        exit(1);
    }
        

    xed_decoded_inst_dump(&xedd,buffer, BUFLEN);
    printf("%s\n",buffer);


    for(isyntax=  XED_SYNTAX_XED; isyntax < XED_SYNTAX_LAST; isyntax++)    {
        syntax = XED_STATIC_CAST(xed_syntax_enum_t, isyntax);
        ok = xed_format(syntax, &xedd, buffer, BUFLEN, 0);
        if (ok)
            printf("%s syntax: %s\n", xed_syntax_enum_t2str(syntax), buffer);
        else
            printf("Error disassembling %s syntax\n", xed_syntax_enum_t2str(syntax));
    }
    return 0;
}
