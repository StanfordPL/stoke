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
/// @file xed-ex3.cpp
/// Encoder example


extern "C" {
#include "xed-interface.h"
#include "xed-examples-util.h"
}
#include "xed-enc-lang.H"
#include <iostream>
#include <iomanip>
#include <string>
#include <sstream>
#include <cstdlib>
#include <cstring>
using namespace std;

int main(int argc, char** argv);


void
usage(char* progname)
{
    cerr << "Usage: " << progname << " [-16|-32|-64] [-s16|-s32] encode-string" << endl;
    exit(1);
}

ascii_encode_request_t
parse_args(unsigned int argc, char** argv)
{
    if (argc == 1)
        usage(argv[0]);

    ascii_encode_request_t r;
    r.dstate.mmode = XED_MACHINE_MODE_LEGACY_32;
    r.dstate.stack_addr_width = XED_ADDRESS_WIDTH_32b;
    string c = "";
    unsigned int i = 1;
    
    for( ; i< argc; i++)
        if (strcmp(argv[i],"-16")==0) 
            r.dstate.mmode = XED_MACHINE_MODE_LEGACY_16;
        else if (strcmp(argv[i],"-32")==0) 
            r.dstate.mmode = XED_MACHINE_MODE_LEGACY_32;
        else if (strcmp("-64", argv[i]) == 0) {
            r.dstate.mmode = XED_MACHINE_MODE_LONG_64;
        }
        else if (strcmp("-32", argv[i]) == 0)
            r.dstate.mmode = XED_MACHINE_MODE_LEGACY_32;
        else if (strcmp("-16", argv[i]) == 0)
            r.dstate.mmode = XED_MACHINE_MODE_LEGACY_16;
        else if (strcmp(argv[i],"-s32")==0) 
            r.dstate.stack_addr_width = XED_ADDRESS_WIDTH_32b;
        else if (strcmp(argv[i],"-s16")==0) 
            r.dstate.stack_addr_width = XED_ADDRESS_WIDTH_16b;
        else
            break;

    if (i == argc)
        usage(argv[0]);

    for( ;i<argc;i++)
        c = c + " " + argv[i];

    r.command = c.c_str();
    return r;
}

int main(int argc, char** argv) {
#define XED_EX3_BUFLEN 5000
    char buf[XED_EX3_BUFLEN];
    xed_tables_init();
    ascii_encode_request_t areq = parse_args(argc,argv);
    xed_encoder_request_t req = parse_encode_request(areq);
    
    cout << "Encode request:" << endl;
    xed_encode_request_print(&req, buf, XED_EX3_BUFLEN);
    cout << buf << endl;
    
    unsigned int ilen = XED_MAX_INSTRUCTION_BYTES;
    unsigned int olen;
    xed_uint8_t array[XED_MAX_INSTRUCTION_BYTES];

    xed_error_enum_t xed_error =  xed_encode(&req, array, ilen, &olen);
    xed_bool_t encode_okay = ( xed_error == XED_ERROR_NONE);
    if (!encode_okay)     {
        cout << "Could not encode" << endl;
        return 1;
    }
    xed_print_hex_line(buf, array, olen, XED_EX3_BUFLEN);
    cout << "Encodable! " << buf << endl;

//#define TEST_DISPLACEMENT_MODIFICATION
//#define TEST_IMMEDIATE_MODIFICATION
#if defined(TEST_DISPLACEMENT_MODIFICATION) || defined(TEST_IMMEDIATE_MODIFICATION)
# if defined(TEST_DISPLACEMENT_MODIFICATION)
    if (req.has_disp())
    {
        INT64 new_disp = 0x11223344;
        unsigned int new_disp_length = 4;
        xed_bool_t update_okay = req.update_displacement(new_disp, new_disp_length, array);
# elif defined(TEST_IMMEDIATE_MODIFICATION)
    if (req.has_immed())
    {
        INT64 new_immed = 0x11223344;
        unsigned int new_immed_length = 4;
        xed_bool_t update_okay = req.update_immediate(new_immed, new_immed_length, array);
# endif
        if (update_okay)
        {
            cout << "Update succeeded" << endl;
            ostringstream os;
            print_hex_line(os, array, olen);
            cout << os.str() << endl;
        }
        else
            cout << "Update failed" << endl;
    }
#endif
    return 0;
}
