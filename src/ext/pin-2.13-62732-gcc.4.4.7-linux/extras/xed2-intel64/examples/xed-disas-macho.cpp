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
/// @file xed-disas-macho.cpp
#include "xed-disas-macho.H"

#if defined(XED_MAC_OSX_FILE_READER)

// mac specific headers
#include <mach-o/fat.h>
#include <mach-o/loader.h>
#include <mach-o/stab.h>
#include <mach-o/nlist.h>

extern "C" {
#include "xed-interface.h"
#include "xed-examples-util.h"
}
extern "C" {
#include "xed-interface.h"
#include "xed-examples-util.h"
}
#include "xed-symbol-table.H"
#include <string.h>
#include <iostream>
using namespace std;

////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////
xed_uint32_t 
swap_endian(xed_uint32_t x)
{
    xed_uint32_t r = 0;
    xed_uint32_t t = x;
    xed_uint_t i; 
    for(i=0;i<4;i++)
    {
        xed_uint8_t b = t;
        r =(r << 8)  | b;
        t = t >> 8;
    }
    return r;
}

xed_bool_t
read_fat_header(xed_uint8_t*&current_position, xed_uint32_t& offset, xed_uint32_t& size)
{
    struct fat_header* fh =
        XED_REINTERPRET_CAST(struct fat_header*,current_position);
    
    // we are little endian looking at big endian data
    if (fh->magic == FAT_CIGAM)
    {
        xed_uint32_t narch = swap_endian(fh->nfat_arch);
        unsigned int i;
        for( i=0 ;i< narch; i++)
        {
            struct fat_arch* fa = 
                XED_REINTERPRET_CAST(struct fat_arch*,current_position + 
                                              sizeof(struct fat_header) + 
                                              i*sizeof(struct fat_arch) );
            const cpu_type_t cpu_type = swap_endian(fa->cputype);

            if (cpu_type == CPU_TYPE_I386)
            {
                offset  = swap_endian(fa->offset);   
                size   = swap_endian(fa->size);   
                return true;
            }
        }
    }
    return false;
}


static xed_bool_t 
executable(xed_uint32_t flags)
{
    return ( (flags & S_ATTR_PURE_INSTRUCTIONS) !=0  || 
             (flags & S_ATTR_SOME_INSTRUCTIONS) !=0  );
}

void
process_segment32( xed_uint_t segno,
                   xed_decode_file_info_t& decode_info,
                   xed_uint8_t* start,
                   xed_uint8_t* segment_position,
                   unsigned int bytes,
                   xed_symbol_table_t& symbol_table,
                   xed_uint64_t vmaddr)
{
    struct segment_command* sc = XED_REINTERPRET_CAST(struct segment_command*,segment_position);
    xed_uint8_t* start_of_section_data = segment_position + sizeof(struct segment_command);
    unsigned int i;
    //cout << sc->nsects << " sections" << endl;  
    // look through the array of section headers for this segment.
    for( i=0; i< sc->nsects;i++)
    {
        struct section* sp = 
            XED_REINTERPRET_CAST(struct section*,start_of_section_data + i *sizeof(struct section));
        if (executable(sp->flags))
        {
          //if  (sp->flags & S_ATTR_PURE_INSTRUCTIONS)
          //  cout << "FLAGS: PURE INSTRUCTIONS" << endl;
          //if  (sp->flags & S_ATTR_SOME_INSTRUCTIONS) 
          //  cout << "FLAGS: SOME INSTRUCTIONS" << endl;

            // this section is executable. Go get it and process it.
            xed_uint8_t* section_text = start + sp->offset;
            xed_uint32_t runtime_vaddr = sp->addr;
	    if (0 && decode_info.xml_format == 0) {
              
		cout << "\tProcessing executable section "
		     << i 
		     << " addr in mem: " 
		     << hex;
#if defined(__LP64__)
		cout << XED_REINTERPRET_CAST(xed_uint64_t,section_text);
#else
		cout << XED_REINTERPRET_CAST(xed_uint32_t,section_text);
#endif
		cout << dec
		     << " len= " <<  sp->size 
		     << " at offset " << sp->offset
		     << " runtime addr " << hex << runtime_vaddr << dec
		     << endl;
	    }

          xed_disas_info_t di;
          di.s = start;
          di.a = section_text;
          di.q = section_text + sp->size;
          di.dstate = &decode_info.dstate;
          di.ninst  = decode_info.ninst;
          di.runtime_vaddr = runtime_vaddr + decode_info.fake_base;
          di.runtime_vaddr_disas_start = 0;
          di.runtime_vaddr_disas_end = 0;
          di.decode_only = decode_info.decode_only;
          di.symfn = get_symbol;
          di.caller_symbol_data = &symbol_table;
          di.input_file_name   = decode_info.input_file_name;
          di.line_number_info_fn = 0;
          symbol_table.set_current_table(segno);
          xed_copy_info(&di, &decode_info);
          xed_disas_test(&di);

        }

    }
}


void
process_segment64( xed_uint_t segno,
                   xed_decode_file_info_t& decode_info,
                   xed_uint8_t* start,
                   xed_uint8_t* segment_position,
                   unsigned int bytes,
                   xed_symbol_table_t& symbol_table,
                   xed_uint64_t vmaddr)
{
    struct segment_command_64* sc = 
        XED_REINTERPRET_CAST(struct segment_command_64*,segment_position);
    xed_uint8_t* start_of_section_data = 
        segment_position + sizeof(struct segment_command_64);
    unsigned int i;
    xed_state_t local_dstate = decode_info.dstate;
    /* modify the default dstate values because we were not expecting a
     * 64b binary */
    local_dstate.mmode = XED_MACHINE_MODE_LONG_64;
    //cout << "segment name: " << sc->segname << endl;    
    //cout << sc->nsects << " sections" << endl; 
    // look through the array of section headers for this segment.
    for( i=0; i< sc->nsects;i++)
    {
        struct section_64* sp = 
            XED_REINTERPRET_CAST(struct section_64*,
                    start_of_section_data + i *sizeof(struct section_64));
        //cout << "SECTION NAME: " << sp->sectname << endl;
        //cout << "   in SEGMENT NAME: " << sp->segname << endl;
        if (executable(sp->flags))
        {

          //if  (sp->flags & S_ATTR_PURE_INSTRUCTIONS)
          //  cout << "FLAGS: PURE INSTRUCTIONS" << endl;
          //if  (sp->flags & S_ATTR_SOME_INSTRUCTIONS) 
          //  cout << "FLAGS: SOME INSTRUCTIONS" << endl;

            // this section is executable. Go get it and process it.
            xed_uint8_t* section_text = start + sp->offset;
            xed_uint64_t runtime_vaddr = sp->addr;

	    if (0 && decode_info.xml_format == 0) {
		cout << "\tProcessing executable section "
		     << i 
		     << " addr in mem: " 
		     << hex;
#if defined(__LP64__)
		cout << XED_REINTERPRET_CAST(xed_uint64_t,section_text);
#else
		cout << XED_REINTERPRET_CAST(xed_uint32_t,section_text);
#endif
		cout << dec
		     << " len= " <<  sp->size 
		     << " at offset " << sp->offset
		     << " runtime addr " << hex << runtime_vaddr << dec
		     << endl;
	    }



          xed_disas_info_t di;
          di.s = start;
          di.a = section_text;
          di.q = section_text + sp->size;
          di.dstate = &local_dstate;
          di.ninst  = decode_info.ninst;
          di.runtime_vaddr = runtime_vaddr;
          di.runtime_vaddr_disas_start = 0;
          di.runtime_vaddr_disas_end = 0;
          di.decode_only = decode_info.decode_only;
          di.symfn = get_symbol;
          di.caller_symbol_data = &symbol_table;
          di.input_file_name   = decode_info.input_file_name;
          di.line_number_info_fn = 0;
          symbol_table.set_current_table(segno);
          xed_copy_info(&di, &decode_info);
          xed_disas_test(&di);


        }

    }
}

////////////////////////////////////////////////////////////////////////////


void process_symbols32(xed_decode_file_info_t& decode_info,
		       xed_uint8_t* pos,
                       xed_uint8_t* current_position,
                       xed_symbol_table_t& symbol_table) {
    struct symtab_command* symtab  = XED_REINTERPRET_CAST(struct symtab_command*,current_position);
    /* symbols */
    xed_uint32_t nsyms = symtab->nsyms;
    xed_uint8_t* symoff = pos + symtab->symoff;
    /* strings table */
    xed_uint8_t* stroff = pos + symtab->stroff;
    /* xed_uint8_t* stroff_end = stroff + symtab->strsize; */
    xed_uint32_t i;
    struct nlist* p;

    p = XED_REINTERPRET_CAST(struct nlist*, symoff);
    //printf("Nsymbols = %d\n", nsyms);
    for(i=0;i<nsyms;i++) {
        char* str=0;
        //printf("strx:%d ntype:%d nsect:%d ndesc:%d nval%x   -- ",
        //       p->n_un.n_strx, p->n_type,
        //       p->n_sect, p->n_desc,
        //       p->n_value);
        str = reinterpret_cast<char*>(stroff + p->n_un.n_strx);
        //printf("[%s]\n", str); 
        symbol_table.add_local_symbol(static_cast<xed_uint64_t>(p->n_value), 
                                      str, p->n_sect);
        p++;
    }
    make_symbol_vector(&symbol_table);
}

void process_symbols64(xed_decode_file_info_t& decode_info,
		       xed_uint8_t* pos,
                       xed_uint8_t* current_position,
                       xed_symbol_table_t& symbol_table) {
    struct symtab_command* symtab  = XED_REINTERPRET_CAST(struct symtab_command*,current_position);
    /* symbols */
    xed_uint32_t nsyms = symtab->nsyms;
    xed_uint8_t* symoff = pos + symtab->symoff;
    /* strings table */
    xed_uint8_t* stroff = pos + symtab->stroff;
    /* xed_uint8_t* stroff_end = stroff + symtab->strsize; */
    xed_uint32_t i;
    struct nlist_64* p;
    
    p = XED_REINTERPRET_CAST(struct nlist_64*, symoff);
    //printf("Nsymbols = %d\n", nsyms);
    for(i=0;i<nsyms;i++) {
        char* str=0;

        //printf("strx:%d ntype:%d nsect:%d ndesc:%d nval:%llx   -- ",
        //       p->n_un.n_strx, p->n_type,
        //       p->n_sect, p->n_desc,
        //       p->n_value);
        str = reinterpret_cast<char*>(stroff + p->n_un.n_strx);
        //printf("[%s]\n", str); 
        symbol_table.add_local_symbol(static_cast<xed_uint64_t>(p->n_value), 
                                      str, p->n_sect);

        p++;
    }
    make_symbol_vector(&symbol_table);
}


void process32(xed_decode_file_info_t& decode_info,
               xed_uint8_t* current_position,
               struct mach_header* mh,
               xed_uint8_t* pos,
               xed_symbol_table_t& symbol_table) {
    xed_uint_t i;
    if (CLIENT_VERBOSE2)
        printf("Number of load command sections = %d\n", mh->ncmds);
    // load commands point to segments which contain sections.
    xed_uint8_t* tmp_current_position = current_position;
    for( i=0;i< mh->ncmds; i++)    {
        struct load_command* lc = 
            XED_REINTERPRET_CAST(struct load_command*,tmp_current_position);
        // FIXME: not handling LD_DYSYMTAB
        if (lc->cmd == LC_SYMTAB) {
            process_symbols32(decode_info, pos,tmp_current_position, symbol_table);
        }
        tmp_current_position += lc->cmdsize;
    }

    for(i=0;i< mh->ncmds; i++)    {
        struct load_command* lc = 
            XED_REINTERPRET_CAST(struct load_command*,current_position);
    
        if (CLIENT_VERBOSE2)
            printf("load command %d\n",i );
        if (lc->cmd == LC_SEGMENT)    {
            if (CLIENT_VERBOSE2)
                printf("\tload command %d is a LC_SEGMENT\n", i);
            // we add the FAT offset to the start pointer to get to the relative start point.
            struct segment_command* sc = XED_REINTERPRET_CAST(struct segment_command*,lc);
            process_segment32( i,
                               decode_info,
                               pos,
                               current_position,
                               lc->cmdsize ,
                               symbol_table,
                               sc->vmaddr);
        }
        current_position += lc->cmdsize;
    }
}
void process64(xed_decode_file_info_t& decode_info,
               xed_uint8_t* current_position,
               struct mach_header_64* mh,
               xed_uint8_t* pos,
               xed_symbol_table_t& symbol_table) {
    xed_uint_t i;
    if (CLIENT_VERBOSE2)
        printf("Number of load command sections = %d\n", mh->ncmds);
    // load commands point to segments which contain sections.

    xed_uint8_t* tmp_current_position = current_position;
    for( i=0;i< mh->ncmds; i++)    {
        struct load_command* lc = 
            XED_REINTERPRET_CAST(struct load_command*,tmp_current_position);
        // FIXME: not handling LD_DYSYMTAB                                      
        if ( lc->cmd == LC_SYMTAB ) {
            process_symbols64(decode_info, pos,tmp_current_position, symbol_table);
        }
        tmp_current_position += lc->cmdsize;
    }

    for( i=0;i< mh->ncmds; i++)  {
        struct load_command* lc = 
            XED_REINTERPRET_CAST(struct load_command*,current_position);
        
        if (CLIENT_VERBOSE2)
            printf("load command %d\n",i );
        if (lc->cmd == LC_SEGMENT_64)    {
            if (CLIENT_VERBOSE2)
                printf("\tload command %d is a LC_SEGMENT\n", i);
            // we add the FAT offset to the start pointer to get to the relative start point.
            struct segment_command_64* sc = XED_REINTERPRET_CAST(struct segment_command_64*,lc);
            process_segment64( i,
                               decode_info,
                               pos,
                               current_position,
                               lc->cmdsize,
                               symbol_table,
                               sc->vmaddr );
        }
        current_position += lc->cmdsize;
    }
}


void
process_macho(xed_uint8_t* start,
              unsigned int length,
              xed_decode_file_info_t& decode_info,
              xed_symbol_table_t& symbol_table)
{
    xed_uint8_t* current_position = start;
    //current_position is updated when each section is read

    // the fat header reader bumps current_position to the value for the
    // correct architecture.
    xed_uint32_t offset=0; // offset to  of load commands for this architecture
    xed_uint32_t size;
    xed_bool_t okay = read_fat_header(current_position, offset, size);
    if (!okay)
    {
	if (decode_info.xml_format == 0)
	    xedex_dwarn("Could not find x86 section of fat binary -- checking for mach header");
    }
    if (CLIENT_VERBOSE2)
        printf("Offset of load sections = %x\n", offset);

    // skip to the correct architecture
    current_position += offset;

    struct mach_header* mh = XED_REINTERPRET_CAST(struct mach_header*,current_position);
    struct mach_header_64* mh64 = XED_REINTERPRET_CAST(struct mach_header_64*,current_position);
     if (mh->magic == MH_MAGIC) {
         /* printf("mach header: 32b\n"); */
        current_position += sizeof(struct mach_header);
        process32(decode_info,current_position, mh, start+offset, symbol_table);
    }
    else if (mh64->magic == MH_MAGIC_64) {
        /* printf("mach header: 64b\n"); */
        current_position += sizeof(struct mach_header_64);
        process64(decode_info,current_position,mh64, start+offset,symbol_table);
    }
    else    {
         xedex_derror("Could not find mach header");
    }

}

void xed_disas_macho_init() {
    xed_register_disassembly_callback(xed_disassembly_callback_function);
}


void
xed_disas_macho(xed_decode_file_info_t* fi)
{
    xed_uint8_t* region = 0;
    void* vregion = 0;
    unsigned int len = 0;
    xed_symbol_table_t symbol_table;

    xed_disas_macho_init();
    xed_map_region(fi->input_file_name, &vregion, &len);

    region = XED_REINTERPRET_CAST(xed_uint8_t*,vregion);
    process_macho(region, len, *fi, symbol_table); 
    if (fi->xml_format == 0)
        xed_print_decode_stats();
}
 


#endif
