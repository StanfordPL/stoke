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
/// @file xed.cpp


////////////////////////////////////////////////////////////////////////////
extern "C" {
#include "xed-interface.h"
#include "xed-immdis.h"
#include "xed-portability.h"
#include "xed-examples-util.h"
//void xed_decode_traverse_dump_profile();
}

#include "xed-disas-elf.H"
#include "xed-disas-macho.H"
#include "xed-disas-pecoff.H"
#include "xed-disas-raw.H"
#if defined(XED_ENCODER)
#include "xed-enc-lang.H"
#endif

#include <vector>
#include <iostream>
#include <iomanip>
#include <sstream>
#include <cstring>
#include <cstdlib>

using namespace std;


int main(int argc, char** argv);
static int intel_asm_emit = 0;

////////////////////////////////////////////////////////////////////////////

static xed_uint_t disas_decode(const xed_state_t* dstate,
                               const char* decode_text,
                               xed_decoded_inst_t* xedd,
                               xed_uint64_t runtime_address) {
    xed_uint8_t hex_decode_text[XED_MAX_INSTRUCTION_BYTES];
    xed_uint_t bytes = xed_convert_ascii_to_hex(decode_text, hex_decode_text,XED_MAX_INSTRUCTION_BYTES);
    return  disas_decode_binary(dstate, hex_decode_text, bytes, xedd, runtime_address);
}

#if defined(XED_DECODER) && defined(XED_ENCODER)
static unsigned int disas_decode_encode(const xed_state_t* dstate,
                                        const char* decode_text,
                                        xed_decoded_inst_t* xedd,
                                        xed_uint64_t runtime_address) {
    xed_uint8_t hex_decode_text[XED_MAX_INSTRUCTION_BYTES];
    xed_uint_t bytes = xed_convert_ascii_to_hex(decode_text,
                                            hex_decode_text, 
                                            XED_MAX_INSTRUCTION_BYTES);
    return disas_decode_encode_binary(dstate, hex_decode_text, bytes, xedd, runtime_address);
}
#endif
#if defined(XED_ENCODER)
static void print_bytes_pseudo_op(const xed_uint8_t* array, unsigned int olen) {
    unsigned int i;
    printf(".byte ");
    for(i=0;i<olen;i++) {
        if (i>0)
            printf(",");
        printf("0x%02x",static_cast<xed_uint32_t>(array[i]));
    }
    printf("\n");
}
static void print_intel_asm_emit(const xed_uint8_t* array, unsigned int olen) {
    unsigned int i;
    for(i=0;i<olen;i++) 
        printf("     __emit 0x%02x\n",static_cast<xed_uint32_t>(array[i]));
}
#endif
#if defined(XED_ENCODER)
static unsigned int disas_encode(const xed_state_t* dstate,
                                 const char* encode_text) {
    unsigned int olen=0;
    ascii_encode_request_t areq;
    areq.dstate = *dstate;
    areq.command = encode_text;
    xed_encoder_request_t req = parse_encode_request(areq);
    char buf[5000];
    xed_encode_request_print(&req, buf, 5000);
    printf("Request: %s", buf);

    xed_uint8_t array[XED_MAX_INSTRUCTION_BYTES];
    unsigned int ilen = XED_MAX_INSTRUCTION_BYTES;
    xed_error_enum_t r = xed_encode(&req, array, ilen, &olen);
    if (r != XED_ERROR_NONE)     {
        printf("Could not encode: %s\n", encode_text);
        printf("Error code was: %s\n", xed_error_enum_t2str(r));
        xedex_derror("Dieing");
    }
    else if (CLIENT_VERBOSE)   {
        char buf2[XED_HEX_BUFLEN];
        xed_print_hex_line(buf2,array, olen,XED_HEX_BUFLEN);
        printf("Encodable! %s\n", buf2);
        if (intel_asm_emit) 
            print_intel_asm_emit(array,olen);
        else
            print_bytes_pseudo_op(array,olen);
    }
    return olen;
}

static void no_comments(char* buf) {
    size_t len = strlen(buf);
    for(size_t i=0;i<len;i++) {
        if (buf[i] == ';' || buf[i] == '#') {
            buf[i]= 0; // stomp on it
            return;
        }
    }
}
#endif

#include <fstream>
#if defined(XED_ENCODER)
static void xed_assemble(const xed_state_t* dstate,
                         const char* encode_file_name) {
    ifstream infile(encode_file_name);
    if (!infile) {
        printf("Could not open %s\n", encode_file_name);
        xedex_derror("Dieing");
    }
    char buf[1024];
    while(infile.getline(buf,sizeof(buf))) {
        printf("; %s\n",buf);
        no_comments(buf);
        if (strlen(buf) == 0)
            continue;
        unsigned int olen=0;
        ascii_encode_request_t areq;
        areq.dstate = *dstate;
        areq.command = buf;
        xed_encoder_request_t req = parse_encode_request(areq);
 
        xed_uint8_t array[XED_MAX_INSTRUCTION_BYTES];
        unsigned int ilen = XED_MAX_INSTRUCTION_BYTES;
        xed_error_enum_t r = xed_encode(&req, array, ilen, &olen);
        if (r != XED_ERROR_NONE)     {
            printf("Could not encode: %s\n", buf);
            printf("Error code was: %s\n", xed_error_enum_t2str(r));
            xedex_derror("Dieing");
        }
        printf("      .byte ");
        for(unsigned int i=0;i<olen;i++) {
            if (i > 0)
                printf(", ");
            printf("0x%02x",array[i]);
        }
        printf("\n");
    }
}
#endif
static void usage(char* prog) {
    unsigned int i;
    static const char* usage_msg[] = {
      "One of the following is required:",
      "\t-i input_file             (decode file)",
      "\t-ir raw_input_file        (decode a raw unformatted binary file)",
      "\t-d hex-string             (decode one instruction, must be last)",
#if defined(XED_ENCODER)
      "\t-ide input_file           (decode/encode file)",
      "\t-e instruction            (encode, must be last)",
      "\t-ie file-to-assemble      (assemble the contents of the file)",
      "\t-de hex-string            (decode-then-encode, must be last)",
#endif
      "",
      "Optional arguments:",
      "",
      "\t-v N          (0=quiet, 1=errors, 2=useful-info, 3=trace,",
      "\t               5=very verbose)",
      "\t-xv N         (XED engine verbosity, 0...99)",
      "\t-s section    (target section for file disassembly,",
      "\t               PECOFF and ELF formats only)",
      "",
      "\t-n N          (number of instructions to decode. Default 100M,",
      "\t               accepts K/M/G qualifiers)",
      " ",
      "\t-perftail N   (number of instructions to skip in performance " ,
      "\t               measurements. Default 0, accepts K/M/G qualifiers)",
      " ",
      "\t-b addr       (Base address offset, for DLLs/shared libraries.",
      "\t               Use 0x for hex addresses)",
      "\t-as addr      (Address to start disassembling.",
      "\t               Use 0x for hex addresses)",
      "\t-ae addr      (Address to end   disassembling.",
      "\t               Use 0x for hex addresses)",
      "\t-no-resync    (Disable symbol-based resynchronization algorithm",
      "\t               for disassembly)",
      "\t-ast          (Show the AVX/SSE transition classfication)",
      "",
      "\t-I            (Intel syntax for disassembly)",
      "\t-A            (ATT SYSV syntax for disassembly)",
      "\t-xml          (XML formatting)",
      "\t-emit         (Output __emit statements for the Intel compiler)",
#if defined(XED_DWARF) 
      "\t-line         (Emit line number information, if present)",
#endif
      "\t-dot FN       (Emit a register dependence graph file in dot format.",
      "\t               Best used with -as ADDR -ae ADDR to limit graph size.)",
      "",
      "\t-r            (for REAL_16 mode, 16b addressing (20b addresses),",
      "\t               16b default data size)",
      "\t-16           (for LEGACY_16 mode, 16b addressing,",
      "\t               16b default data size)",
      "\t-32           (for LEGACY_32 mode, 32b addressing,",
      "\t               32b default data size -- default)",
      "\t-64           (for LONG_64 mode w/64b addressing",
      "\t               Optional on windows/linux)",
      "\t-s32          (32b stack addressing, default, not in LONG_64 mode)",
      "\t-s16          (16b stack addressing, not in LONG_64 mode)",
      " ",
      0
    };      

    printf("%s\n", xed_get_copyright());
    printf("XED version: [%s]\n\n", xed_get_version());
    cout << "Usage: " << prog << " [options]" << endl;
    for(i=0; usage_msg[i]  ; i++)
        cout << usage_msg[i] << endl;
}
 
#if 1
void test_immdis() {
    char buf[1000];
    xed_int64_t sv;
    xed_immdis_t i;
    xed_uint64_t v = 0x11223344;
    xed_uint32_t uv =0;

    xed_immdis_init(&i,8);
    xed_immdis_add_shortest_width_signed(&i,v,4);
    xed_immdis_print(&i,buf,1000);
    printf("%s\n",buf);

    xed_immdis_zero(&i);
    xed_immdis_add_shortest_width_unsigned(&i,uv,5);
    xed_immdis_print(&i,buf,1000);
    printf("%s\n",buf);

    xed_immdis_zero(&i);

    sv = 0x90;
    xed_immdis_add_shortest_width_signed(&i,sv,5);
    xed_immdis_print(&i,buf,1000);
    printf("%s\n",buf);
    
    xed_immdis_zero(&i);

    sv = -128;
    xed_immdis_add_shortest_width_signed(&i,sv,5);
    xed_immdis_print(&i,buf,1000);
    printf("%s\n",buf);
    
    xed_immdis_zero(&i);

    sv = -127;
    xed_immdis_add_shortest_width_signed(&i,sv,5);
    xed_immdis_print(&i,buf,1000);
    printf("%s\n",buf);
    
    xed_immdis_zero(&i);
    uv = 0x80000000;
    xed_immdis_add_shortest_width_unsigned(&i,uv,5);
    xed_immdis_print(&i,buf,1000);
    printf("%s\n",buf);
    
#if (!defined(_MSC_VER)) &&  (!defined(__FreeBSD__)) // MSVS6 VC98 chokes on the LL. Just punt on MS compilers
    xed_immdis_zero(&i);

    sv = 0xffffffff81223344LL;
    xed_immdis_add_shortest_width_signed(&i,sv,4);
    xed_immdis_print(&i,buf,1000);
    printf("%s\n",buf);
        v = 0x1122334455667788ULL;
    xed_immdis_zero(&i);
    xed_immdis_add_shortest_width_signed(&i,sv,4);
    xed_immdis_print(&i,buf,1000);
    printf("%s\n",buf);
    #endif

    v = 0x11223344;
    xed_immdis_zero(&i);
    xed_immdis_add_shortest_width_signed(&i,v,4);
    xed_immdis_print(&i,buf,1000);
    printf("%s\n",buf);
    
    v = 0x112233;
    xed_immdis_zero(&i);
    xed_immdis_add_shortest_width_signed(&i,v,4);

    xed_immdis_print(&i,buf,1000);
    printf("%s\n",buf);
    
    v = 0x1122;
    xed_immdis_zero(&i);
    xed_immdis_add_shortest_width_signed(&i,v,4);

    xed_immdis_print(&i,buf,1000);
    printf("%s\n",buf);
    
    v = 0x11;
    xed_immdis_zero(&i);
    xed_immdis_add_shortest_width_signed(&i,v,4);

    xed_immdis_print(&i,buf,1000);
    printf("%s\n",buf);
    

    v = 0x1122;
    xed_immdis_zero(&i);
    xed_immdis_add_shortest_width_signed(&i,v,3);

    xed_immdis_print(&i,buf,1000);
    printf("%s\n",buf);
    
    v = 0xffff;
    xed_immdis_zero(&i);
    xed_immdis_add_shortest_width_signed(&i,v,2);

    xed_immdis_print(&i,buf,1000);
    printf("%s\n",buf);
    
    v = 0xff00;
    xed_immdis_zero(&i);
    xed_immdis_add_shortest_width_signed(&i,v,2);
    xed_immdis_print(&i,buf,1000);
    printf("%s\n",buf);
    

    v = 0xff77;
    xed_immdis_zero(&i);
    xed_immdis_add_shortest_width_signed(&i,v,7);
    xed_immdis_print(&i,buf,1000);
    printf("%s\n",buf);
    
    v = 0xff7777;
    xed_immdis_zero(&i);
    xed_immdis_add_shortest_width_signed(&i,v,5);
    xed_immdis_print(&i,buf,1000);
    printf("%s\n",buf);
    
    v = 0xff8000;
    xed_immdis_zero(&i);
    xed_immdis_add_shortest_width_signed(&i,v,7);
    xed_immdis_print(&i,buf,1000);
    printf("%s\n",buf);
    
    exit(1);
}
#endif


void remove_spaces(string& s) {
    string::size_type i,p=0,len = s.size();
    for(i=0;i<len;i++)
        if (s[i] != ' ')
            s[p++]=s[i];
    s = s.substr(0,p);
}

void test_argc(int i, int argc) {
    if (i+1 >= argc)
        xedex_derror("Need more arguments. Use \"xed -help\" for usage.");
}

void late_init(xed_decoded_inst_t* xedd) {
    /* add whatever special init you may require here */
    /* future expansion */
   (void) xedd; /* pacify compiler */
}
static FILE* fopen_portable(char const* const file_name,
                            char const* const mode)
{
    FILE* f = 0;
#if defined(XED_WINDOWS)
    errno_t error = fopen_s(&f, file_name, mode);
    if (error != 0)
        return 0;
#else
    f = fopen(file_name, mode);
#endif
    return f;
}
int main(int argc,     char** argv) {
    xed_bool_t sixty_four_bit = false;
    xed_bool_t decode_only = true;
    char* input_file_name = 0;
    string decode_text("");
    string encode_text("");
    xed_state_t dstate;
    xed_bool_t encode = false;
    unsigned int ninst = 100*1000*1000; // FIXME: should use maxint...
    //perf_tail is for skipping first insts in performance measure mode
    unsigned int perf_tail = 0;         
    xed_bool_t decode_encode = false;
    int i,j;
    unsigned int loop_decode = 0;
    xed_bool_t decode_raw = false;
    xed_bool_t assemble  = false;
    char* target_section = 0;
    xed_bool_t use_binary_mode = true;
    xed_int64_t addr_start = 0;
    xed_int64_t addr_end = 0;
    xed_int64_t fake_base = 0;
    xed_bool_t xml_format =0;
    xed_bool_t resync = 0;
    xed_bool_t ast = 0;
    int line_numbers = 0;

    char* dot_output_file_name = 0;
    xed_bool_t dot = 0;

    
    /* I have this here to test the functionality, if you are happy with
     * the XED formatting options, then you do not need to set this or call
     * xed_format_set_options() */

    xed_format_options_t format_options = {
#if defined(XED_NO_HEX_BEFORE_SYMBOLIC_NAMES)
        0 /* no hex number before symbolic names */ 
#else
        1 /* hex number before symbolic names -- default */ 
#endif
        , 0 /* normal formatting */
    };

    xed_example_utils_init();

    xed_state_init(&dstate,
                   XED_MACHINE_MODE_LEGACY_32,
                   XED_ADDRESS_WIDTH_32b,  /* 2nd parameter ignored */
                   XED_ADDRESS_WIDTH_32b);


    ast = 0;
    resync = 1;
    client_verbose = 3;
    xed_set_verbosity( client_verbose );
    for( i=1; i < argc ; i++ )    {
        if (strcmp(argv[i], "-no-resync") ==0)   {
            resync = 0;
	    continue;
        }
        if (strcmp(argv[i], "-ast") ==0)   {
            ast = 1;
	    continue;
        }
        else if (strcmp(argv[i],"-d")==0)         {
            test_argc(i,argc);
            for(j=i+1; j< argc;j++) 
                decode_text = decode_text + argv[j];
            break; // leave the i=1...argc loop
        }
        else if (strcmp(argv[i],"-i")==0)        {
            test_argc(i,argc);
            input_file_name = argv[i+1];
            i++;
        }
        else if (strcmp(argv[i],"-s")==0)        {
            test_argc(i,argc);
            target_section = argv[i+1];
            i++;
        }
        else if (strcmp(argv[i],"-xml")==0)      {
            format_options.xml_a = 1;
            format_options.xml_f = 1;
            xml_format = 1;
        }
#if defined(XED_DWARF) 
        else if (strcmp(argv[i],"-line")==0)      {
            line_numbers = 1;
        }
#endif
        else if (strcmp(argv[i],"-dot")==0)      {
            test_argc(i,argc);
            dot_output_file_name = argv[i+1];
            dot = 1;
            i++;
        }
        else if (strcmp(argv[i],"-ir")==0)        {
            test_argc(i,argc);
            input_file_name = argv[i+1];
            decode_raw = true;
            i++;
        }
#if defined(XED_ENCODER)
        else if (strcmp(argv[i],"-e") ==0)         {
            encode = true;
            test_argc(i,argc);
            // merge the rest of the args in to the encode_text string.
            for( j = i+1; j< argc; j++ ) 
                encode_text = encode_text + argv[j] + " ";
            break;  // leave the loop
        }
        else if (strcmp(argv[i],"-de")==0)        {
            test_argc(i,argc);
            decode_encode = true;
            for(j=i+1; j< argc;j++) 
                decode_text = decode_text + argv[j];
            break; // leave the i=1...argc loop
        }
        else if (strcmp(argv[i],"-ie")==0)        {
            test_argc(i,argc);
            input_file_name = argv[i+1];
            assemble = true;
            i++;
        }
        else if (strcmp(argv[i],"-ide")==0)        {
            test_argc(i,argc);
            input_file_name = argv[i+1];
            decode_only = false;
            i++;
        }
#endif
        else if (strcmp(argv[i],"-n") ==0)         {
            test_argc(i,argc);
            ninst = XED_STATIC_CAST(unsigned int,
                xed_atoi_general(argv[i+1],1000));
            i++;
        }
        else if (strcmp(argv[i],"-perftail") ==0)         {
            test_argc(i,argc);
            perf_tail = XED_STATIC_CAST(unsigned int,
                xed_atoi_general(argv[i+1],1000));
            i++;
        }
        else if (strcmp(argv[i],"-b") ==0)         {
            test_argc(i,argc);
            fake_base = xed_atoi_general(argv[i+1],1000);
            printf("ASSUMED BASE = " XED_FMT_LX "\n",fake_base);
            i++;
        }
        else if (strcmp(argv[i],"-as") == 0 || strcmp(argv[i],"-sa") == 0)    {
            test_argc(i,argc);
            addr_start = XED_STATIC_CAST(xed_int64_t,xed_atoi_general(argv[i+1],1000));
            i++;
        }
        else if (strcmp(argv[i],"-ae") == 0 || strcmp(argv[i],"-ea") == 0)    {
            test_argc(i,argc);
            addr_end = XED_STATIC_CAST(xed_int64_t,xed_atoi_general(argv[i+1],1000));
            i++;
        }

        else if (strcmp(argv[i],"-loop") ==0)         {
            test_argc(i,argc);
            loop_decode = XED_STATIC_CAST(unsigned int,xed_atoi_general(argv[i+1],1000));
            i++;
        }
        else if (strcmp(argv[i],"-v") ==0)         {
            test_argc(i,argc);
            client_verbose = XED_STATIC_CAST(int,xed_atoi_general(argv[i+1],1000));
            xed_set_verbosity(client_verbose);

            i++;
        }
        else if (strcmp(argv[i],"-xv") ==0)        {
            test_argc(i,argc);
            unsigned int xed_engine_verbose = XED_STATIC_CAST(unsigned int,xed_atoi_general(argv[i+1],1000));
            xed_set_verbosity(xed_engine_verbose);
            i++;
        }
        else if (strcmp(argv[i],"-A")==0)        {
            att_syntax = true;
            xed_syntax = intel_syntax = false;
        }
        else if (strcmp(argv[i],"-I")==0)        {
            intel_syntax = true;
            xed_syntax = att_syntax = false;
        }
        else if (strcmp(argv[i],"-X") == 0)  {  // undocumented
            xed_syntax = true;
            intel_syntax = true;
            att_syntax = true;
        }
        else if (strcmp(argv[i],"-r")==0)         {
            sixty_four_bit = false;
            dstate.mmode = XED_MACHINE_MODE_REAL_16;
            dstate.stack_addr_width = XED_ADDRESS_WIDTH_16b;
            use_binary_mode = false;
        }
        else if (strcmp(argv[i],"-16")==0)         {
            sixty_four_bit = false;
            dstate.mmode = XED_MACHINE_MODE_LEGACY_16;
            use_binary_mode = false;
        }
        else if (strcmp(argv[i],"-32")==0) { // default
            sixty_four_bit = false;
            dstate.mmode = XED_MACHINE_MODE_LEGACY_32;
            use_binary_mode = false;
        }
        else if (strcmp(argv[i],"-64")==0)         {
            sixty_four_bit = true;
            dstate.mmode = XED_MACHINE_MODE_LONG_64;
            use_binary_mode = false;
        }
        else if (strcmp(argv[i],"-s32")==0) {
            dstate.stack_addr_width = XED_ADDRESS_WIDTH_32b;
            use_binary_mode = false;
        }
        else if (strcmp(argv[i],"-s16")==0) {
            dstate.stack_addr_width = XED_ADDRESS_WIDTH_16b;
            use_binary_mode = false;
        }
        else if (strcmp(argv[i],"-ti") ==0)        {
            client_verbose = 5;
            xed_set_verbosity(5);
            test_immdis();
            exit(1);
        }
        else if (strcmp(argv[i],"-emit") ==0) {
            intel_asm_emit = 1;
        }
        else   {
            usage(argv[0]);
            exit(1);
        }
    }
    if (!encode)     {
        if (input_file_name == 0 && decode_text == "")        {
            cout << "ERROR: required argument(s) were missing" << endl;
            usage(argv[0]);
            exit(1);
        }
    }
    if (CLIENT_VERBOSE2)
        printf("Initializing XED tables...\n");

    xed_tables_init();

    if (CLIENT_VERBOSE2)
        printf("Done initialing XED tables.\n");

    xed_format_set_options(format_options);

    if (CLIENT_VERBOSE1) 
        printf("#XED version: [%s]\n", xed_get_version());
    xed_decoded_inst_t xedd;
    xed_decoded_inst_zero_set_mode(&xedd, &dstate);
    late_init(&xedd);
    xed_uint_t retval_okay = 1;
    unsigned int obytes=0;
    if (assemble) {
#if defined(XED_ENCODER)
        xed_assemble(&dstate, input_file_name);
#endif
    }
    else if (decode_encode)     {
#if defined(XED_ENCODER)
        obytes = disas_decode_encode(&dstate, decode_text.c_str(), &xedd, fake_base);
#endif
        retval_okay = (obytes != 0) ? 1 : 0;
    }
    else if (encode) {
#if defined(XED_ENCODER)
        obytes = disas_encode(&dstate, encode_text.c_str());
#endif
    }
    else if (decode_text != "") {
        if (loop_decode) {
            unsigned int k;
            for(k=0;k<loop_decode;k++) {
                retval_okay = disas_decode(&dstate, decode_text.c_str(), &xedd, fake_base);
                xed_decoded_inst_zero_set_mode(&xedd, &dstate);
                late_init(&xedd);
                //xed_decode_traverse_dump_profile();
            }
        }
        else {
            remove_spaces(decode_text);
            const char* p = decode_text.c_str();
            int remaining = static_cast<int>(decode_text.size() / 2); // 2 bytes per nibble
            do {
                retval_okay = disas_decode(&dstate, p, &xedd, fake_base);
                unsigned int  len = xed_decoded_inst_get_length(&xedd);
                p+=len*2;
                remaining -= len;
            }
            while(retval_okay && remaining > 0);
        }
    }
    else {
        xed_decode_file_info_t decode_info;
        decode_info.input_file_name  = input_file_name;
        decode_info.dstate           = dstate;
        decode_info.ninst            = ninst;
        decode_info.decode_only      = decode_only;
        decode_info.sixty_four_bit   = sixty_four_bit;
        decode_info.target_section   = target_section;
        decode_info.use_binary_mode  = use_binary_mode;
        decode_info.addr_start       = addr_start;
        decode_info.addr_end         = addr_end;
        decode_info.late_init        = late_init;
        decode_info.xml_format       = xml_format;
        decode_info.fake_base        = fake_base;
        decode_info.resync           = resync;
        decode_info.line_numbers     = line_numbers;
        decode_info.dot_graph_output = 0;
        decode_info.perf_tail_start  = perf_tail;
        decode_info.ast              = ast;
        
        if (dot) {
            decode_info.dot_graph_output =
                fopen_portable(dot_output_file_name,"w");
            if (!decode_info.dot_graph_output) {
                printf("Could not open %s\n", dot_output_file_name);
                xedex_derror("Dieing");
            }
        }


        if (xml_format) {
            printf("<?xml version=\"1.0\"?>\n");
            printf("<XEDDISASM>\n");
            printf("<XEDFORMAT>1</XEDFORMAT>\n");
        }
        if (decode_raw) {
            xed_disas_raw(&decode_info);
        }
        else     {
#if defined(XED_MAC_OSX_FILE_READER)
            xed_disas_macho(&decode_info);
#elif defined(XED_ELF_READER)
            xed_disas_elf(&decode_info);
#elif defined(XED_PECOFF_FILE_READER)
            xed_disas_pecoff(&decode_info);
#else
            xedex_derror("No PECOFF, ELF or MACHO support compiled in");
#endif
        }
    }
    //xed_decode_traverse_dump_profile();
    if (xml_format) 
	printf("</XEDDISASM>\n");

    if (retval_okay==0) 
        exit(1);
    return 0;
    (void) obytes;
}
 

////////////////////////////////////////////////////////////////////////////
