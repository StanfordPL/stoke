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
#include <stdio.h>
#include <string.h>
#include "pin.H"
#include "instlib.H"
#include "portability.H"
#include <iostream>
#include <sstream>
#include <iomanip>
#include <fstream>
#include <cstdlib>
#include <map>

std::map<ADDRINT, std::string> disAssemblyMap;


static ADDRINT dl_debug_state_Addr = 0;
static ADDRINT dl_debug_state_AddrEnd = 0;
static BOOL justFoundDlDebugState = FALSE;




static char nibble_to_ascii_hex(UINT8 i) {
    if (i<10) return i+'0';
    if (i<16) return i-10+'A';
    return '?';
}

static void print_hex_line(char* buf, const UINT8* array, const int length) {
  int n = length;
  int i=0;
  if (length == 0)
      n = XED_MAX_INSTRUCTION_BYTES;
  for( i=0 ; i< n; i++)     {
      buf[2*i+0] = nibble_to_ascii_hex(array[i]>>4);
      buf[2*i+1] = nibble_to_ascii_hex(array[i]&0xF);
  }
  buf[2*i]=0;
}

static string
disassemble(UINT64 start, UINT64 stop) {
    UINT64 pc = start;
    xed_state_t dstate;
    xed_syntax_enum_t syntax = XED_SYNTAX_INTEL;
    xed_error_enum_t xed_error;
    xed_decoded_inst_t xedd;
    ostringstream os;
    if (sizeof(ADDRINT) == 4) 
        xed_state_init(&dstate,     
                       XED_MACHINE_MODE_LEGACY_32,
                       XED_ADDRESS_WIDTH_32b, 
                       XED_ADDRESS_WIDTH_32b);
    else
        xed_state_init(&dstate,
                       XED_MACHINE_MODE_LONG_64,
                       XED_ADDRESS_WIDTH_64b, 
                       XED_ADDRESS_WIDTH_64b);

    /*while( pc < stop )*/ {
        xed_decoded_inst_zero_set_mode(&xedd, &dstate);
        UINT32 len = 15;
        if (stop - pc < 15)
            len = stop-pc;

        xed_error = xed_decode(&xedd, reinterpret_cast<const UINT8*>(pc), len);
        bool okay = (xed_error == XED_ERROR_NONE);
        iostream::fmtflags fmt = os.flags();
        os << std::setfill('0')
           << "XDIS "
           << std::hex
           << std::setw(sizeof(ADDRINT)*2)
           << pc
           << std::dec
           << ": "
           << std::setfill(' ')
           << std::setw(4);

        if (okay) {
            char buffer[200];
            unsigned int dec_len, sp;

            os << xed_extension_enum_t2str(xed_decoded_inst_get_extension(&xedd));
            dec_len = xed_decoded_inst_get_length(&xedd);
            print_hex_line(buffer, reinterpret_cast<UINT8*>(pc), dec_len);
            os << " " << buffer;
            for ( sp=dec_len; sp < 12; sp++)     // pad out the instruction bytes
                os << "  ";
            os << " ";
            memset(buffer,0,200);
            int dis_okay = xed_format(syntax, &xedd, buffer, 200, pc);
            if (dis_okay) 
                os << buffer << endl;
            else
                os << "Error disasassembling pc 0x" << std::hex << pc << std::dec << endl;
            pc += dec_len;
        }
        else { // print the byte and keep going.
            UINT8 memval = *reinterpret_cast<UINT8*>(pc);
            os << "???? " // no extension
               << std::hex
               << std::setw(2)
               << std::setfill('0')
               << static_cast<UINT32>(memval)
               << std::endl;
            pc += 1;
        }
        os.flags(fmt);
    }
    return os.str();
}

VOID ImageLoad(IMG img, VOID *v)
{
    
    printf ("ImageLoad %s\n", IMG_Name(img).c_str());
    for (SEC sec = IMG_SecHead(img); SEC_Valid(sec); sec = SEC_Next(sec))
    {
        for (RTN rtn = SEC_RtnHead(sec); RTN_Valid(rtn); rtn = RTN_Next(rtn))
        {
             if (strcmp(RTN_Name(rtn).c_str(), "_dl_debug_state") == 0)
             {
                 printf ("  RTN %s at %p\n", RTN_Name(rtn).c_str(),  reinterpret_cast<void *>(RTN_Address(rtn)));
                 printf ("    ** found _dl_debug_state\n");
                 dl_debug_state_Addr = RTN_Address(rtn);
                 justFoundDlDebugState = TRUE;
             }
             else if (justFoundDlDebugState)
             {
                 printf ("  RTN %s at %p\n", RTN_Name(rtn).c_str(),  reinterpret_cast<void *>(RTN_Address(rtn)));
                 dl_debug_state_AddrEnd =  RTN_Address(rtn);
                 justFoundDlDebugState = FALSE;
                 printf ("    ** _dl_debug_state from %p to %p\n", reinterpret_cast<void *>(dl_debug_state_Addr), reinterpret_cast<void *>(dl_debug_state_AddrEnd));
             }
        }
    }
}

static VOID AtBranch(ADDRINT ip, ADDRINT target, BOOL taken)
{
    
    if (target >= dl_debug_state_Addr && target < dl_debug_state_AddrEnd)
    {
        string s = disassemble ((ip),(ip)+15);
        
        printf ("  branch %s   branches to range of interest %p  taken %d\n", s.c_str(), reinterpret_cast<void *>(target), taken);
        fflush (stdout);
    }
    if (ip >= dl_debug_state_Addr && ip < dl_debug_state_AddrEnd)
    {
        string s = disassemble ((ip),(ip)+15);
        printf ("  instruction in range of interest executed %s\n", s.c_str());
        fflush (stdout);
    }
    
}


static VOID AtNonBranch(ADDRINT ip)
{
    
    if (ip >= dl_debug_state_Addr && ip < dl_debug_state_AddrEnd)
    {
        string s = disassemble ((ip),(ip)+15);
        printf ("  instruction in range of interest executed %s\n", s.c_str());
        fflush (stdout);
    }
}

static VOID Instruction(INS ins, VOID *v)
{
    //disAssemblyMap[INS_Address(ins)] = INS_Disassemble(ins);
    if (INS_IsBranchOrCall(ins))
        INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)AtBranch, IARG_INST_PTR, IARG_BRANCH_TARGET_ADDR, IARG_BRANCH_TAKEN, IARG_END);
    else
        INS_InsertCall(ins, IPOINT_BEFORE, (AFUNPTR)AtNonBranch, IARG_INST_PTR, IARG_END);
}

int main(INT32 argc, CHAR **argv)
{
    PIN_Init(argc, argv);
    PIN_InitSymbols();

    INS_AddInstrumentFunction(Instruction, 0);
    IMG_AddInstrumentFunction(ImageLoad, 0);

    PIN_StartProgram();
    return 0;
}
