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
/// @file xed-enc-lang.cpp

// This is an example of how to use the encoder from scratch in the context
// of parsing a string from the command line.  


#include <iostream>
#include <iomanip>
#include <vector>
#include <sstream>
#include <cassert>
#include <cstring>
#include <cstdlib>
extern "C" {
#include "xed-interface.h"
#include "xed-portability.h"
#include "xed-examples-util.h"
}
#include "xed-enc-lang.H"




using namespace std;
static char xed_enc_lang_toupper(char c) {
    if (c >= 'a' && c <= 'z')
        return c-'a'+'A';
    return c;
}

static string upcase(string s) {
    string t = "";
    xed_uint_t len = static_cast<xed_uint_t>(s.size());
    xed_uint_t i;
    for(i=0 ; i < len ; i++ ) 
        t = t + xed_enc_lang_toupper(s[i]);
    return t;
}

unsigned int
xed_split_args(const string& sep, 
               const string& input, 
               vector<string>& output_array)
{
    // returns the number of args
    // rip off the separator characters and split the src string based on separators.
    
    // find the string between last_pos and pos. pos is after last_pos
    string::size_type last_pos = input.find_first_not_of(sep, 0);
    string::size_type pos = input.find_first_of(sep, last_pos);  
    if (CLIENT_VERBOSE3)
        printf("input %s\tlast_pos " XED_FMT_U " pos " XED_FMT_U "\n", 
               input.c_str() , XED_STATIC_CAST(xed_uint_t,last_pos), XED_STATIC_CAST(xed_uint_t,pos));
    int i=0;
    while( pos != string::npos && last_pos != string::npos ) 
    {
        string a = input.substr(last_pos, pos-last_pos);
        output_array.push_back(a); 
        if (CLIENT_VERBOSE3)
            printf("\t\tlast_pos " XED_FMT_U " pos " XED_FMT_U " i %d\n", 
                   XED_STATIC_CAST(xed_uint_t,last_pos),
                   XED_STATIC_CAST(xed_uint_t,pos),
                   i);
        last_pos = input.find_first_not_of(sep, pos);
        pos = input.find_first_of(sep, last_pos);  
        i++;
    }
    if (last_pos != string::npos && pos == string::npos)
    {
        if (CLIENT_VERBOSE3)
            printf("\t\tGetting last substring at " XED_FMT_U "\n", XED_STATIC_CAST(xed_uint_t,last_pos));
        string a = input.substr(last_pos); // get the rest of the string
        output_array.push_back(a);
        i++;
    }
    if (CLIENT_VERBOSE3)
        printf("\t returning %d\n",i);
    return i;
}

vector<string> 
tokenize(const string& s,
	 const string& delimiter) {
    vector<string> v;
    (void) xed_split_args(delimiter, s, v);
    return v;
}


void slash_split(const string& src,
                 string& first, // output
                 string&  second) //output
{
  string::size_type p = src.find("/");
  if (p == string::npos) {
    first = src;
    second = "";
  }
  else {
    first = src.substr(0,p);
    second = src.substr(p+1);
  }
}

class immed_parser_t {
  public:
    xed_bool_t valid;
    string immed;
    unsigned int width_bits;
    xed_uint64_t immed_val;
    string tok0;

    immed_parser_t(const string& s, 
                   const string& arg_tok0) //CONS
        : valid(false),
          tok0(arg_tok0)
    {
        vector<string> vs = tokenize(s,":");
        if (vs.size() == 2) {
            if (vs[0] == tok0) {
                string immed_str = vs[1];
                immed_val = convert_ascii_hex_to_int(immed_str.c_str());
                width_bits = static_cast<unsigned int>(immed_str.size()*4); // nibbles to bits
                valid = true;
            }
        }
    }

    void
    print(ostream& o) const {
        o << tok0 
          << "(" ;
        if (valid)  {
            // not printing immed_val directly because VC98 (MSVS6) cannot print uint64's
            xed_union64_t u;
	    u.u64 = immed_val;
            o << std::hex;
            o << setfill('0');
            o << std::setw(8);
            o << (int) u.s.hi32;
            o << std::setw(8);
            o << (int) u.s.lo32;
            o << setfill(' ');
            o << std::dec;
        }
        else 
            o << "???";
        o << ")";
    }

};

ostream& operator<<(ostream& o, const immed_parser_t& x) 
{
    x.print(o);
    return o;
}


class seg_parser_t
{
  public:
    xed_bool_t valid;
    xed_reg_enum_t segment_reg;
    string segment;
    xed_uint_t segno;

    seg_parser_t(const string& s) // CONS
        : valid(false),
          segment_reg(XED_REG_INVALID),
          segno(0)
    {
        vector<string> vs = tokenize(s,":");
        xed_uint_t ntokens = static_cast<xed_uint_t>(vs.size());
        if (ntokens == 2) {
            if (vs[0] == "SEG" || vs[0] == "SEG0") {
                segment = vs[1];
                segno = 0;
                segment_reg = str2xed_reg_enum_t(segment.c_str());
                if (segment_reg != XED_REG_INVALID && xed_reg_class(segment_reg) == XED_REG_CLASS_SR) {
                    valid=true;
                }
            }
            if (vs[0] == "SEG1") {
                segment = vs[1];
                segno = 1;
                segment_reg = str2xed_reg_enum_t(segment.c_str());
                if (segment_reg != XED_REG_INVALID && xed_reg_class(segment_reg) == XED_REG_CLASS_SR) {
                    valid=true;
                }
            }
        }
    }

};

class mem_bis_parser_t 
{
    // parse: MEMlength:[segment:]base,index,scale[,displacement]
    // parse: AGEN:base,index,scale[,displacement]
    // The displacement is optional


    // split on colons first
    // MEM4:FS:EAX,EBX,4,223344   mem4 fs eax,ebx,4,22334455  -> 3 tokens
    // MEM4:FS:EAX,EBX,4          mem4 fs eax,ebx,4   -> 3 tokens
    // MEM4:EAX,EBX,4,223344      mem4 eax,ebx,4,223344..  -> 2 tokens
    // MEM4:FS:EAX,EBX,4          mem4 fs  eas,ebx,4     -> 3 tokens
    

  public:
    xed_bool_t valid;
    xed_bool_t mem;
    xed_bool_t agen;
    xed_bool_t disp_valid;
    string segment;
    string base;
    string index;
    string scale;
    string disp; //displacement
    xed_reg_enum_t segment_reg;
    xed_reg_enum_t base_reg;
    xed_reg_enum_t index_reg;
    xed_uint8_t scale_val;


    xed_int64_t disp_val;
    unsigned int disp_width_bits;

    unsigned int mem_len;

    void
    print(ostream& o) const {
        if (agen) 
            o << "AGEN"; 
        if (mem) 
            o << "MEM"; 
        if (mem_len) 
            o << setw(1) << mem_len;
        o << "(";
        if (segment_reg != XED_REG_INVALID)
            o << segment_reg << ":";
        o << base_reg;
        o << "," << index_reg 
          << "," 
          << (unsigned int) scale_val;
        if (disp_valid) 
            o <<  "," << disp;
        o << ")";
     
    }
  
    mem_bis_parser_t(const string& s) //CONS
        : valid(false),
          mem(false),
          agen(false),
          disp_valid(false),
          base("INVALID"),
          index("INVALID"),
          scale("1"),
          segment_reg(XED_REG_INVALID),
          base_reg(XED_REG_INVALID),
          index_reg(XED_REG_INVALID),
          disp_val(0),
          disp_width_bits(0),
          mem_len(0)
    {
        string t = upcase(s);
        // split on colon first
        vector<string> vs = tokenize(t,":"); 
        xed_uint_t ntokens = static_cast<xed_uint_t>(vs.size());
        vector<string> astr;
        xed_uint_t n_addr_tokens;
        string main_token, addr_token;
        
        if (ntokens == 3) { /* has a segment base */
            main_token = vs[0];
            segment = vs[1];
            addr_token = vs[2];
        }
        else if (ntokens == 2) {
            main_token = vs[0];
            segment = "INVALID";
            addr_token = vs[1];
        }
        else 
            return;
        size_t n=0;
        if (main_token == "AGEN")
            agen=true;
        else if (main_token.substr(0,3) == "MEM") {
            mem = true;
            n = 3;
        }
        else 
            return;
        if (mem && main_token.size() > n) {
            string len = main_token.substr(n);
            mem_len = strtol(len.c_str(),0,0);
            //printf("mem_len  = " XED_FMT_U "\n", mem_len);
        }

        if (agen && segment != "INVALID")
            xedex_derror("AGENs cannot have segment overrides");

        astr = tokenize(addr_token,",");
        n_addr_tokens = static_cast<xed_uint_t>(astr.size());
        if (n_addr_tokens == 0 || n_addr_tokens > 4)
            xedex_derror("Bad addressing mode syntax for memop");

        base = astr[0];
        if (base == "-" || base == "NA") 
            base = "INVALID";

        if (n_addr_tokens > 2) 
            index = astr[1];
        if (index == "-" || index == "NA") 
            index = "INVALID";

        if (n_addr_tokens > 2) 
            scale = astr[2];
        if (scale == "-" || scale == "NA") 
            scale = "1";

        if (scale == "1" || scale == "2" || scale == "4" || scale == "8") {
            valid=true;
            scale_val = XED_STATIC_CAST(xed_uint8_t,strtol(scale.c_str(), 0, 10));
            segment_reg = str2xed_reg_enum_t(segment.c_str());
            base_reg = str2xed_reg_enum_t(base.c_str());
            index_reg = str2xed_reg_enum_t(index.c_str());

            // look for a displacement
            if (n_addr_tokens == 4 && astr[3] != "-") {
                disp = astr[3];
                disp_valid = true;
                unsigned int nibbles = XED_STATIC_CAST(int,disp.size());
                if (nibbles & 1) {
                    // ensure an even number of nibbles
                    string zero("0");
                    disp = zero + disp;
                    nibbles++;
                }
                xed_uint64_t unsigned64_disp;
                unsigned64_disp = convert_ascii_hex_to_int(disp.c_str());
                disp_width_bits = nibbles*4; // nibbles to bits
                switch (disp_width_bits){
                case 8:  disp_val = xed_sign_extend8_64(unsigned64_disp); break;
                case 16: disp_val = xed_sign_extend16_64(unsigned64_disp); break;
                case 32: disp_val = xed_sign_extend32_64(unsigned64_disp); break;
                case 64: disp_val = unsigned64_disp; break;
                }               
            }
        }
    }
};

ostream& operator<<(ostream& o, const mem_bis_parser_t& x) {
  x.print(o);
  return o;
}

xed_encoder_request_t parse_encode_request(ascii_encode_request_t& areq) {
    unsigned int i;
    xed_encoder_request_t req;
    
    // this calls xed_encoder_request_zero()
    xed_encoder_request_zero_set_mode(&req,&(areq.dstate));

    /* This is the important function here. This encodes an instruction
       from scratch.
       
    You must set:
    the machine mode (machine width, addressing widths)
    the iclass
    for some instructions you need to specify prefixes (like REP or LOCK).
    the operands:
    
           operand kind (XED_OPERAND_{AGEN,MEM0,MEM1,IMM0,IMM1,
           RELBR,PTR,REG0...REG15}
           
           operand order
           
              xed_encoder_request_set_operand_order(&req,operand_index,
                                                       XED_OPERAND_*);
              where the operand_index is a sequential index starting at zero.

           operand details 
                     FOR MEMOPS: base,segment,index,scale,
                                         displacement for memops, 
                  FOR REGISTERS: register name
                 FOR IMMEDIATES: immediate values
       
     */
    

    vector<string> tokens = tokenize(areq.command," ");
    // first token has the operand and our temporary hack for the immediate

    string first, second;
    unsigned int token_index = 0;

    while(token_index < tokens.size()) {
        slash_split(tokens[token_index], first, second);
        if (CLIENT_VERBOSE3)
            printf( "[%s][%s][%s]\n",
                    tokens[0].c_str(), first.c_str(), second.c_str());

        if (token_index == 0 && first == "REP") {
            xed_encoder_request_set_rep(&req);
            token_index++;
            continue;
        }
        else if (token_index == 0 && first == "REPNE") {
            xed_encoder_request_set_repne(&req);
            token_index++;
            continue;
        }
  
        token_index++;
        break;
    }

    // we can attempt to override the mode 
    if (second == "8") 
        xed_encoder_request_set_effective_operand_width(&req, 8);
    else if (second == "16") 
        xed_encoder_request_set_effective_operand_width(&req, 16);
    else if (second == "32") 
        xed_encoder_request_set_effective_operand_width(&req, 32);
    else if (second == "64") 
        xed_encoder_request_set_effective_operand_width(&req, 64);

    first = upcase(first);
    xed_iclass_enum_t iclass =  str2xed_iclass_enum_t(first.c_str());
    if (iclass == XED_ICLASS_INVALID) {
        ostringstream os;
        os << "Bad instruction name: " << first;
        xedex_derror(os.str().c_str());
    }
    xed_encoder_request_set_iclass(&req, iclass );

    xed_uint_t memop = 0;
    xed_uint_t regnum = 0;
    // put the operands in the request. Loop through tokens 
    // (skip the opcode iclass, handled above)
    xed_uint_t operand_index = 0;
    for( i=token_index; i < tokens.size(); i++, operand_index++ ) {
        string str_res_reg, second_x;
        slash_split(tokens[i], str_res_reg, second_x);
        str_res_reg = upcase(str_res_reg);
        // prune the AGEN or MEM(base,index,scale[,displacement]) text from
        // str_res_reg
        
        // FIXME: add MEM(immed) for the OC1_A and OC1_O types????
        mem_bis_parser_t mem_bis(str_res_reg);
        if (mem_bis.valid) {
            if (mem_bis.mem) {
                if (memop == 0) {
                    // Tell XED that we have a memory operand
                    xed_encoder_request_set_mem0(&req);
                    // Tell XED that the mem0 operand is the next operand:
                    xed_encoder_request_set_operand_order(
                        &req,operand_index, XED_OPERAND_MEM0);
                }
                else {
                    xed_encoder_request_set_mem1(&req);
                    // Tell XED that the mem1 operand is the next operand:
                    xed_encoder_request_set_operand_order(
                        &req,operand_index, XED_OPERAND_MEM1);
                }
                memop++;
            }
            else if (mem_bis.agen) {
                // Tell XED we have an AGEN
                xed_encoder_request_set_agen(&req);
                // The AGEN is the next operand
                xed_encoder_request_set_operand_order(
                    &req,operand_index, XED_OPERAND_AGEN);
            }
            else 
                assert(mem_bis.agen || mem_bis.mem);

            xed_reg_class_enum_t rc = xed_gpr_reg_class(mem_bis.base_reg);
            xed_reg_class_enum_t rci = xed_gpr_reg_class(mem_bis.index_reg);
            
            if (rc == XED_REG_CLASS_GPR32 || rci == XED_REG_CLASS_GPR32) 
                xed_encoder_request_set_effective_address_size(&req, 32);
            if (rc == XED_REG_CLASS_GPR16 || rci == XED_REG_CLASS_GPR16) 
                xed_encoder_request_set_effective_address_size(&req, 16);

            // fill in the memory fields
            xed_encoder_request_set_base0(&req, mem_bis.base_reg);
            xed_encoder_request_set_index(&req, mem_bis.index_reg);
            xed_encoder_request_set_scale(&req, mem_bis.scale_val);
            xed_encoder_request_set_seg0(&req, mem_bis.segment_reg);

            if (mem_bis.mem_len) 
                xed_encoder_request_set_memory_operand_length(
                    &req,
                    mem_bis.mem_len ); // BYTES
            if (mem_bis.disp_valid)
                xed_encoder_request_set_memory_displacement(
                    &req,
                    mem_bis.disp_val,
                    mem_bis.disp_width_bits/8);
            continue;
        }

        seg_parser_t seg_parser(str_res_reg);
        if (seg_parser.valid) {
            if (CLIENT_VERBOSE3) 
                printf("Setting segment to %s\n",
                       xed_reg_enum_t2str(seg_parser.segment_reg));
            if (seg_parser.segno == 0)
                xed_encoder_request_set_seg0(&req, seg_parser.segment_reg);
            else
                /*  need SEG1 for MOVS[BWDQ]*/
                xed_encoder_request_set_seg1(&req, seg_parser.segment_reg);

            /* SEG/SEG0/SEG1 is NOT a normal operand. It is a setting, like
             * the lock prefix. Normally the segment will be specified with
             * normal memory operations. With memops without MODRM, or
             * impliclit memops, we need a way of specifying the segment
             * when it is not the default. This is the way. it does not
             * change encoding forms. (When segments are "moved", they are
             * REG operands, not SEG0/1, and are specified by name like EAX
             * is.) */
            continue;
        }

        immed_parser_t imm(str_res_reg, "IMM");
        if (imm.valid) {
            if (CLIENT_VERBOSE3) 
                printf("Setting immediate value to " XED_FMT_LX "\n",
                       imm.immed_val);
            xed_encoder_request_set_uimm0_bits(&req, 
                                               imm.immed_val,
                                               imm.width_bits);
            xed_encoder_request_set_operand_order(&req,
                                                  operand_index,
                                                  XED_OPERAND_IMM0);
            continue;
        }
        immed_parser_t simm(str_res_reg, "SIMM");
        if (simm.valid) {
            if (CLIENT_VERBOSE3) 
                printf("Setting immediate value to " XED_FMT_LX "\n",
                       simm.immed_val);
            xed_encoder_request_set_simm(
                &req, 
                XED_STATIC_CAST(xed_int32_t,simm.immed_val),
                simm.width_bits/8); //FIXME
            xed_encoder_request_set_operand_order(&req,
                                                  operand_index,
                                                  XED_OPERAND_IMM0);
            continue;
        }
        immed_parser_t imm2(str_res_reg, "IMM2");
        if (imm2.valid) {
            if (imm2.width_bits != 8)
                xedex_derror("2nd immediate must be just 1 byte long");
            xed_encoder_request_set_uimm1(&req, imm2.immed_val);
            xed_encoder_request_set_operand_order(&req,
                                                  operand_index,
                                                  XED_OPERAND_IMM1);
            continue;
        }

        immed_parser_t disp(str_res_reg, "BRDISP");
        if (disp.valid) {
            if (CLIENT_VERBOSE3) 
                printf("Setting  displacement value to " XED_FMT_LX "\n",
                       disp.immed_val);
            xed_encoder_request_set_branch_displacement(
                &req,
                XED_STATIC_CAST(xed_uint32_t,disp.immed_val),
                disp.width_bits/8); //FIXME
            xed_encoder_request_set_operand_order(&req,
                                                  operand_index,
                                                  XED_OPERAND_RELBR);
            xed_encoder_request_set_relbr(&req);
            continue;
        }

        immed_parser_t ptr_disp(str_res_reg, "PTR");
        if (ptr_disp.valid) {
            if (CLIENT_VERBOSE3) 
                printf("Setting pointer displacement value to " XED_FMT_LX "\n",
                       ptr_disp.immed_val);
            xed_encoder_request_set_branch_displacement(
                &req,
                XED_STATIC_CAST(xed_uint32_t,ptr_disp.immed_val),
                ptr_disp.width_bits/8); //FIXME
            xed_encoder_request_set_operand_order(&req,
                                                  operand_index,
                                                  XED_OPERAND_PTR);
            xed_encoder_request_set_ptr(&req);
            continue;
        }

        xed_reg_enum_t reg = str2xed_reg_enum_t(str_res_reg.c_str());
        if (reg == XED_REG_INVALID) {
            ostringstream os;
            os << "Bad register name: " << str_res_reg << " on operand " << i;
            xedex_derror(os.str().c_str()); // dies
        }
        // The registers operands aer numbered starting from the first one
        // as XED_OPERAND_REG0. We incremenet regnum (below) every time we add a
        // register operands.
        xed_operand_enum_t r =
            XED_STATIC_CAST(xed_operand_enum_t,XED_OPERAND_REG0 + regnum);
        // store the register identifer in the operand storage field
        xed_encoder_request_set_reg(&req, r, reg);
        // store the operand storage field name in the encode-order array
        xed_encoder_request_set_operand_order(&req, operand_index, r);
        regnum++;
    } // for loop

    return req;
}
