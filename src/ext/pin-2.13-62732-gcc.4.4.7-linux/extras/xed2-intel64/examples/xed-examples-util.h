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
/// @file xed-examples-util.H


#ifndef _XED_EXAMPLES_UTIL_H_
# define _XED_EXAMPLES_UTIL_H_

#include <stdio.h>
#include "xed-interface.h"

extern int intel_syntax;
extern int att_syntax;
extern int xed_syntax;
extern int client_verbose;

#define CLIENT_VERBOSE  (client_verbose > 1)
#define CLIENT_VERBOSE0 (client_verbose > 2)
#define CLIENT_VERBOSE1 (client_verbose > 3)
#define CLIENT_VERBOSE2 (client_verbose > 4)
#define CLIENT_VERBOSE3 (client_verbose > 5)

char* xed_upcase_buf(char* s);

/// Accepts K / M / G (or B) qualifiers ot multiply
xed_int64_t xed_atoi_general(char* buf, int mul);
xed_int64_t xed_atoi_hex(char* buf);

/// Converts "112233" in to 0x112233
xed_uint64_t convert_ascii_hex_to_int(const char* s);


unsigned int xed_convert_ascii_to_hex(const char* src, 
                                      xed_uint8_t* dst, 
                                      unsigned int max_bytes);

#define XED_HEX_BUFLEN 200
void xed_print_hex_line(char* buf, const xed_uint8_t* array, const int length, const int buflen); 

void xedex_derror(const char* s);
void xedex_dwarn(const char* s);

//////////////////////////////////////////////////////////////////////


typedef struct {
    xed_state_t dstate;
    int ninst;
    int decode_only;
    int sixty_four_bit;
    char* input_file_name;
    char* target_section;
    xed_bool_t use_binary_mode; 
    xed_int64_t addr_start;
    xed_int64_t addr_end;
    void (*late_init)(xed_decoded_inst_t*); /* a late initializer callback */
    xed_bool_t xml_format;
    xed_int64_t fake_base;
    xed_bool_t resync; /* turn on/off sybol-based resynchronization */
    xed_bool_t line_numbers;
    FILE* dot_graph_output;
    unsigned int perf_tail_start;
    xed_bool_t ast;
} xed_decode_file_info_t;

void xed_map_region(const char* path,
                    void** start,
                    unsigned int* length);


typedef struct {
    const xed_state_t* dstate;
    unsigned char* s; // start of image
    unsigned char* a; // start of instructions to decode region
    unsigned char* q; // end of region
    int ninst;
    
    // where this region would live at runtime
    xed_uint64_t runtime_vaddr;
    // where to start in program space, if not zero
    xed_uint64_t runtime_vaddr_disas_start;

    // where to stop in program space, if not zero
    xed_uint64_t runtime_vaddr_disas_end; 
    int decode_only;
    xed_bool_t xml_format;
    // a function to convert addresses to symbols
    char* (*symfn)(xed_uint64_t, void*); 
    void* caller_symbol_data;

     // a late initializer callback 
    void (*late_init)(xed_decoded_inst_t*);
    
    char* input_file_name;
    // turn on/off sybol-based resynchronization 
    xed_bool_t resync; 
    void (*line_number_info_fn)(xed_uint64_t addr);

    FILE* dot_graph_output;
    unsigned int perf_tail_start;
    xed_bool_t ast;
} xed_disas_info_t;


void xed_copy_info(xed_disas_info_t* dst,
                   xed_decode_file_info_t* src);
                   


void xed_disas_test(xed_disas_info_t* di);



// returns 1 on success, 0 on failure
xed_uint_t disas_decode_binary(const xed_state_t* dstate,
                               const xed_uint8_t* hex_decode_text,
                               const unsigned int bytes,
                               xed_decoded_inst_t* xedd,
                               xed_uint64_t runtime_address);

// returns encode length on success, 0 on failure
xed_uint_t disas_decode_encode_binary(const xed_state_t* dstate,
                                      const xed_uint8_t* decode_text_binary,
                                      const unsigned int bytes,
                                      xed_decoded_inst_t* xedd,
                                      xed_uint64_t runtime_address);


void xed_print_decode_stats(void);
void xed_print_encode_stats(void);

int
fn_disassemble_xed(xed_syntax_enum_t syntax,
                   char* buf,
                   int buflen,
                   xed_decoded_inst_t* xedd,
                   xed_uint64_t runtime_instruction_address,
                   void* caller_data);

void disassemble(char* buf,
                 int buflen,
                 xed_decoded_inst_t* xedd,
                 xed_uint64_t runtime_instruction_address,
                 void* caller_data);

// 64b version missing on some MS compilers so I wrap it for portability.
// This function is rather limited and only handles base 10 and base 16.
xed_int64_t xed_strtoll(const char* buf, int base);

char* xed_strdup(char const*  const src);

void xed_example_utils_init(void);
#endif // file
