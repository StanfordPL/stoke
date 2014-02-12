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
/// @file disas-elf.cpp

#include "xed-disas-elf.H"

#if defined(XED_ELF_READER)

////////////////////////////////////////////////////////////////////////////

extern "C" {
#include <elf.h>
#if defined(XED_DWARF)
#  include <dwarf.h>
#  include <libdwarf.h>
#  include <libelf.h>
#endif

#include "xed-interface.h"
#include "xed-portability.h"
#include "xed-examples-util.h"
}
#include "xed-symbol-table.H"

#include <string.h>
#include <stdlib.h>
#include <iostream>
#include <iomanip>
#include <map>
using namespace std;
////////////////////////////////////////////////////////////////////////////


// DWARF HANDLING

#if defined(XED_DWARF)
static void dwarf_handler(Dwarf_Error err, Dwarf_Ptr errarg)
{
}

/* file 0 does not exist */
class line_number_entry_t {
  public:
    line_number_entry_t(xed_uint32_t a_line,
                        xed_uint32_t a_file) :
        line(a_line),
        file(a_file)
    {}
    
    xed_uint32_t line;
    xed_uint32_t file;
};

/* addresses  -> line_number_entry_t values */
static map<xed_uint64_t,line_number_entry_t*> line_number_table;

/* start at 1, 0 means no file */
static xed_uint32_t global_file_num = 1;

/* global file num -> string */
static map<xed_uint32_t,string> global_file_name_table;

/* local file num -> global file num. This one is restarted for each
 * compilation unit. */
static map<xed_uint32_t,xed_uint32_t> file_name_table;

int find_line_number(xed_uint64_t addr, string& file,  xed_uint32_t& line) {
    map<xed_uint64_t,line_number_entry_t*>::iterator iter =
        line_number_table.find(addr);
    if (iter == line_number_table.end())
        return 0;
    if (iter->second->file) {
        file = global_file_name_table[iter->second->file];
    }
    else {
        file = "Unknown";
    }
    line = iter->second->line;
    return 1;
}

extern "C" void find_line_number_info(xed_uint64_t addr)
{
    string file_name;
    xed_uint32_t line_number;
    if (find_line_number(addr,
        file_name,
        line_number)) {
        printf("  # %s:%d\n",
               file_name.c_str(),
               line_number);
    }
}


static void read_dwarf_line_numbers(void* region,
                                    unsigned int region_bytes)
{
    int dres;
    Dwarf_Debug dbg;
    Dwarf_Unsigned next_cu_offset;;
    
    elf_version(EV_CURRENT);

    Elf* elf = elf_memory(XED_STATIC_CAST(char*,region), region_bytes);
    dres = dwarf_elf_init(elf, DW_DLC_READ, dwarf_handler, 0, &dbg, 0);
    if (dres != DW_DLV_OK) 
        return;
    
    while (1)
    {
        int i;
        Dwarf_Die cu_die;
        Dwarf_Half tag;
        Dwarf_Line* line_buf;
        Dwarf_Signed line_count;

        dres = dwarf_next_cu_header(dbg, 0, 0, 0, 0, &next_cu_offset, 0);
        if (dres != DW_DLV_OK) 
            break;
        // Doc says first die is compilation unit
        if (dwarf_siblingof(dbg, 0, &cu_die, 0) != DW_DLV_OK)
            continue;
        if ( (dwarf_tag(cu_die, &tag, 0) != DW_DLV_OK) ||
             (tag != DW_TAG_compile_unit))
        {
            dwarf_dealloc(dbg, cu_die, DW_DLA_DIE);
            continue;
        }
        dres = dwarf_srclines(cu_die, &line_buf, &line_count, 0);
        if (dres != DW_DLV_OK)
        {
            dwarf_dealloc(dbg, cu_die, DW_DLA_DIE);
            continue;
        }
        for (i = 0; i < line_count; i++)
        {
            Dwarf_Addr line_addr;
            Dwarf_Unsigned line_num, file_num;
            Dwarf_Signed line_off;
            Dwarf_Bool line_end;
            char* file_name;
            
            dwarf_lineaddr(line_buf[i], &line_addr, 0);
            dwarf_lineno(line_buf[i], &line_num, 0);
            dwarf_line_srcfileno(line_buf[i], &file_num, 0);
            dwarf_lineoff(line_buf[i], &line_off, 0);
            dwarf_lineendsequence(line_buf[i], &line_end, 0);

            if (file_num)
            {
                dres = dwarf_linesrc(line_buf[i], &file_name, 0);
                if (dres == DW_DLV_OK) {
                    if ( file_name_table.find(file_num) ==
                         file_name_table.end() )
                    {
                        file_name_table[file_num] = global_file_num;
                        global_file_name_table[global_file_num] = file_name;
                        global_file_num++;
                    }
                    dwarf_dealloc(dbg, file_name, DW_DLA_STRING);
                }
            }
            // FIXME: POTENTIALLY OVERWRITING -- MEMORY LEAK
            line_number_table[line_addr] =
                new line_number_entry_t(line_num, file_name_table[file_num]);

        } /* for */
        file_name_table.clear();
        dwarf_srclines_dealloc(dbg, line_buf, line_count);
        dwarf_dealloc(dbg, cu_die, DW_DLA_DIE);
    }  /* while */
    dwarf_finish(dbg, 0);
    elf_end(elf);
}

#endif
////////////////////////////////////////////////////////////////////////////


char* 
lookup32(Elf32_Word stoffset,
       void* start,
       Elf32_Off offset)
{
    char* p = (char*)start + offset;
    char* q = p + stoffset;
    // int i;
    //cout << "p = " << (unsigned int) p <<  endl;
    //cout << "q = " << (unsigned int) q <<  endl;
    //for(i=0;i<20;i++)
    //{
    //    cout << q[i];
    //}
    //cout << endl;
    return q;
}

char* 
lookup64(Elf64_Word stoffset,
	 void* start,
	 Elf64_Off offset)
{
  char* p = (char*)start + offset;
  char* q = p + stoffset;
  //int i;
  //cout << "p = " << (unsigned int) p <<  endl;
  //cout << "q = " << (unsigned int) q <<  endl;
  //for( i=0;i<20;i++)
  //{
  //    cout << q[i];
  //}
  //cout << endl;
  return q;
}

void xed_disas_elf_init() {
    xed_register_disassembly_callback(xed_disassembly_callback_function);
}



void
disas_test32(xed_decode_file_info_t* fi,
             const xed_state_t* dstate,
	     void* start, 
	     Elf32_Off offset,
	     Elf32_Word size, 
	     int ninst,
             Elf32_Addr runtime_vaddr,
             bool decode_only,
             xed_symbol_table_t& symbol_table,
             xed_int64_t start_addr,
             xed_int64_t end_addr)

{
  xed_disas_info_t di;
  di.s =  (unsigned char*)start;
  di.a = (unsigned char*)start + offset;
  di.q = di.a + size; // end of region
  di.dstate = dstate;
  di.ninst = ninst;
  di.runtime_vaddr = runtime_vaddr + fi->fake_base;
  di.runtime_vaddr_disas_start = start_addr;
  di.runtime_vaddr_disas_end = end_addr;
  di.decode_only = decode_only;
  di.symfn = get_symbol;
  di.caller_symbol_data = &symbol_table;
  di.line_number_info_fn = 0;
#if defined(XED_DWARF)
  di.line_number_info_fn = find_line_number_info;
#endif
  xed_copy_info(&di, fi);
  // pass in a function to retreive valid symbol names
  xed_disas_test(&di);
}

void
disas_test64(xed_decode_file_info_t* fi,
             const xed_state_t* dstate,
	     void* start, 
	     Elf64_Off offset,
	     Elf64_Word size,
	     int ninst,
             Elf64_Addr runtime_vaddr,
             bool decode_only,
             xed_symbol_table_t& symbol_table,
             xed_int64_t start_addr,
             xed_int64_t end_addr)
{
  xed_disas_info_t di;
  di.s =  (unsigned char*)start;
  di.a = (unsigned char*)start + offset;
  di.q = di.a + size; // end of region
  di.dstate = dstate;
  di.ninst = ninst;
  di.runtime_vaddr = runtime_vaddr + fi->fake_base;
  di.runtime_vaddr_disas_start = start_addr;
  di.runtime_vaddr_disas_end = end_addr;
  di.decode_only = decode_only;
  di.symfn = get_symbol;
  di.caller_symbol_data = &symbol_table;

  di.line_number_info_fn = 0;
#if defined(XED_DWARF)
  di.line_number_info_fn = find_line_number_info;
#endif
  xed_copy_info(&di, fi);
  // pass in a function to retreive valid symbol names
  xed_disas_test(&di);
}


void
process_elf32(xed_decode_file_info_t* fi,
              void* start,
	      unsigned int length,
	      const char* tgt_section,
	      const xed_state_t* dstate,
	      int ninst,
              xed_bool_t decode_only,
              xed_symbol_table_t& symbol_table,
              xed_int64_t start_addr,
              xed_int64_t end_addr)

{
    Elf32_Ehdr* elf_hdr = (Elf32_Ehdr*) start;
    if (elf_hdr->e_machine != EM_386) {
        cerr << "Not an IA32 binary. Consider using the -64 switch" << endl;
        exit(1);
    }

    Elf32_Off shoff = elf_hdr->e_shoff;  // section hdr table offset
    Elf32_Shdr* shp = (Elf32_Shdr*) ((char*)start + shoff);
    int sect_strings  = elf_hdr->e_shstrndx;
    //cout << "String section " << sect_strings << endl;
    int nsect = elf_hdr->e_shnum;
    int i;
    for(i=0;i<nsect;i++) {
        char* name = lookup32(shp[i].sh_name, start, 
                              shp[sect_strings].sh_offset);
        xed_bool_t text = false;
        if (shp[i].sh_type == SHT_PROGBITS) {
            if (tgt_section) {
                if (strcmp(tgt_section, name)==0) 
                    text = true;
            }
            else if (shp[i].sh_flags & SHF_EXECINSTR)
                text = true;
        }

        if (text) {
            if (fi->xml_format == 0) {
                printf("# SECTION " XED_FMT_D " ", i);
                printf("%25s ", name);
                printf("addr " XED_FMT_LX " ",
                       static_cast<xed_uint64_t>(shp[i].sh_addr)); 
                printf("offset " XED_FMT_LX " ",
                       static_cast<xed_uint64_t>(shp[i].sh_offset));
                printf("size " XED_FMT_LU " ", 
                       static_cast<xed_uint64_t>(shp[i].sh_size));
                printf("type " XED_FMT_LU "\n", 
                       static_cast<xed_uint64_t>(shp[i].sh_type));
            }

            symbol_table.set_current_table(i);
            disas_test32(fi,dstate,
                         start, shp[i].sh_offset, shp[i].sh_size,
                         ninst,
                         shp[i].sh_addr,
                         decode_only,
                         symbol_table,
                         start_addr,
                         end_addr);

	}

    }

    (void) length;// pacify compiler
}

/*-----------------------------------------------------------------*/

int check_binary_32b(void* start) {
    Elf32_Ehdr* elf_hdr = (Elf32_Ehdr*) start;
    if (elf_hdr->e_machine == EM_386) 
        return 1;
    return 0;
}

int check_binary_64b(void* start) {
#if !defined(EM_X86_64)  /* EM_X86_64 is not present on android */
# define EM_X86_64 62
#endif
#if !defined(EM_L1OM) /* Oh, not zero */
# define EM_L1OM  180
#endif
#if !defined(EM_K1OM) /* Oh, not zero */
# define EM_K1OM  181
#endif

    Elf64_Ehdr* elf_hdr = (Elf64_Ehdr*) start;
    if (elf_hdr->e_machine == EM_X86_64 ||
        elf_hdr->e_machine == EM_L1OM ||
        elf_hdr->e_machine == EM_K1OM) 
        return 1;
    return 0;
}

/*-----------------------------------------------------------------*/
void
process_elf64(xed_decode_file_info_t* fi,
              void* start,
	      unsigned int length,
	      const char* tgt_section,
	      const xed_state_t* dstate,
	      int ninst,
              xed_bool_t decode_only,
              xed_symbol_table_t& symbol_table,
              xed_int64_t start_addr,
              xed_int64_t end_addr)
{
    Elf64_Ehdr* elf_hdr = (Elf64_Ehdr*) start;
    if (check_binary_64b(start)==0) {
        cerr << "Not an x86-64  binary. Consider not using the -64 switch." 
             << endl;
        exit(1);
    }

    Elf64_Off shoff = elf_hdr->e_shoff;  // section hdr table offset
    Elf64_Shdr* shp = (Elf64_Shdr*) ((char*)start + shoff);
    Elf64_Half sect_strings  = elf_hdr->e_shstrndx;
    //cout << "String section " << sect_strings << endl;
    Elf64_Half nsect = elf_hdr->e_shnum;
    if (CLIENT_VERBOSE1) 
        printf("# sections %d\n" , nsect);
    unsigned int i;
    xed_bool_t text = false;
    for( i=0;i<nsect;i++)  {
        char* name = lookup64(shp[i].sh_name, start, 
                              shp[sect_strings].sh_offset);
        
        text = false;
        if (shp[i].sh_type == SHT_PROGBITS) {
            if (tgt_section) {
                if (strcmp(tgt_section, name)==0) 
                    text = true;
            }
            else if (shp[i].sh_flags & SHF_EXECINSTR)
                text = true;
        }

        if (text) {
            if (fi->xml_format == 0) {
                printf("# SECTION " XED_FMT_U " ", i);
                printf("%25s ", name);
                printf("addr " XED_FMT_LX " ",
                       static_cast<xed_uint64_t>(shp[i].sh_addr)); 
                printf("offset " XED_FMT_LX " ",
                       static_cast<xed_uint64_t>(shp[i].sh_offset));
                printf("size " XED_FMT_LU "\n", 
                       static_cast<xed_uint64_t>(shp[i].sh_size));
            }
            symbol_table.set_current_table(i);
            disas_test64(fi, dstate,
                         start, shp[i].sh_offset, shp[i].sh_size, 
                         ninst,
                         shp[i].sh_addr, decode_only, symbol_table,
                         start_addr, end_addr);

        }
    }
    (void) length;// pacify compiler
}


void read_symbols64(void* start, 
                    Elf64_Off offset,
                    Elf64_Word size,
                    Elf64_Off string_table_offset,
                    xed_symbol_table_t& symtab) {
    char* a = static_cast<char*>(start);
    Elf64_Sym* p = reinterpret_cast<Elf64_Sym*>(a + offset);
    Elf64_Sym* q = reinterpret_cast<Elf64_Sym*>(a + offset + size);
    while(p<q) {
        if (ELF64_ST_TYPE(p->st_info) == STT_FUNC) {
            char* name = lookup64(p->st_name, start, string_table_offset);
            if (xed_strlen(name) > 0) {
                symtab.add_local_symbol(static_cast<xed_uint64_t>(p->st_value), 
                                        name, p->st_shndx);
            }
        }
        p++; 
    }
}

/*-----------------------------------------------------------------*/


void symbols_elf64(xed_decode_file_info_t* fi, 
                   void* start,
                   xed_symbol_table_t& symtab) {
    Elf64_Ehdr* elf_hdr = (Elf64_Ehdr*) start;
    if (check_binary_64b(start)==0) {
        cerr << "Not an x86-64  binary. Consider not using the -64 switch." 
             << endl;
        exit(1);
    }

    Elf64_Off shoff = elf_hdr->e_shoff;  // section hdr table offset
    Elf64_Shdr* shp = (Elf64_Shdr*) ((char*)start + shoff);
    Elf64_Half nsect = elf_hdr->e_shnum;
    if (CLIENT_VERBOSE1) 
        printf("# sections %d\n" , nsect);
    unsigned int i;
    Elf64_Half sect_strings  = elf_hdr->e_shstrndx;
    Elf64_Off string_table_offset=0;
    Elf64_Off dynamic_string_table_offset=0;

    /* find the string_table_offset and the dynamic_string_table_offset */
    for( i=0;i<nsect;i++)  {
        if (shp[i].sh_type == SHT_STRTAB) {
            char* name = lookup32(shp[i].sh_name, start, 
                                  shp[sect_strings].sh_offset);
            if (strcmp(name,".strtab")==0) {
                if (fi->xml_format == 0) {
                    cout << "# Found strtab: " << i 
                         << " offset " <<shp[i].sh_offset
                         << " size " << shp[i].sh_size 
                         << endl;
                }
                string_table_offset = shp[i].sh_offset;
            }
            if (strcmp(name,".dynstr")==0) {
                if (fi->xml_format == 0) {
                    cout << "# Found dynamic strtab: " << i 
                         << " offset " <<shp[i].sh_offset
                         << " size " << shp[i].sh_size 
                         << endl;
                }
                dynamic_string_table_offset = shp[i].sh_offset;
            }
        }
    }

    /* now read the symbols */
    for( i=0;i<nsect;i++)  {
        if (shp[i].sh_type == SHT_SYMTAB) {
            if (fi->xml_format == 0) {
                cout << "# Found symtab: " << i 
                     << " offset " <<shp[i].sh_offset
                     << " size " << shp[i].sh_size 
                     << endl;
            }
            read_symbols64(start,shp[i].sh_offset, shp[i].sh_size, 
                           string_table_offset,symtab);
        }
        else if (shp[i].sh_type == SHT_DYNSYM) {
            if (fi->xml_format == 0) {
                cout << "# Found dynamic symtab: " << i 
                     << " offset " <<shp[i].sh_offset
                     << " size " << shp[i].sh_size 
                     << endl;
            }
            read_symbols64(start,shp[i].sh_offset, shp[i].sh_size,
                           dynamic_string_table_offset, symtab);
        }
    }
}



void read_symbols32(void* start, 
                    Elf32_Off offset,
                    Elf32_Word size,
                    Elf32_Off string_table_offset,
                    xed_symbol_table_t& symtab) {
    char* a = static_cast<char*>(start);
    Elf32_Sym* p = reinterpret_cast<Elf32_Sym*>(a + offset);
    Elf32_Sym* q = reinterpret_cast<Elf32_Sym*>(a + offset + size);
    while(p<q) {
        if (ELF32_ST_TYPE(p->st_info) == STT_FUNC) {
            char* name = lookup32(p->st_name, start, string_table_offset);
            if (xed_strlen(name) > 0) {
                symtab.add_local_symbol(static_cast<xed_uint64_t>(p->st_value), 
                                        name, p->st_shndx);
            }
        }
        p++; 
    }
}


void symbols_elf32(xed_decode_file_info_t* fi, 
                   void* start, 
                   xed_symbol_table_t& symtab) {
    Elf32_Ehdr* elf_hdr = (Elf32_Ehdr*) start;
    if (elf_hdr->e_machine != EM_386) {
        cerr << "Not an IA32 binary. Consider using the -64 switch" << endl;
        exit(1);
    }

    Elf32_Off shoff = elf_hdr->e_shoff;  // section hdr table offset
    Elf32_Shdr* shp = (Elf32_Shdr*) ((char*)start + shoff);
    Elf32_Half nsect = elf_hdr->e_shnum;
    if (CLIENT_VERBOSE1) 
        printf("# sections %d\n" , nsect);
    unsigned int i;
    Elf32_Off string_table_offset=0;
    Elf32_Off dynamic_string_table_offset=0;
    int sect_strings  = elf_hdr->e_shstrndx;

    /* find the string_table_offset and the dynamic_string_table_offset */
    for( i=0;i<nsect;i++)  {
        
        if (shp[i].sh_type == SHT_STRTAB) {
            char* name = lookup32(shp[i].sh_name, start, 
                                  shp[sect_strings].sh_offset);
            if (strcmp(name,".strtab")==0) {
                if (fi->xml_format == 0) {
                    cout << "# Found strtab: " << i 
                         << " offset " <<shp[i].sh_offset
                         << " size " << shp[i].sh_size 
                         << endl;
                }
                string_table_offset = shp[i].sh_offset;
            }
            if (strcmp(name,".dynstr")==0) {
                if (fi->xml_format == 0) {
                    cout << "# Found dynamic strtab: " << i 
                         << " offset " <<shp[i].sh_offset
                         << " size " << shp[i].sh_size 
                         << endl;
                }
                dynamic_string_table_offset = shp[i].sh_offset;
            }
        }
    }

    /* now read the symbols */
    for( i=0;i<nsect;i++)  {
        
        if (shp[i].sh_type == SHT_SYMTAB) {
            if (fi->xml_format == 0) {
                cout << "# Found symtab: " << i 
                     << " offset " <<shp[i].sh_offset
                     << " size " << shp[i].sh_size 
                     << endl;
            }
            read_symbols32(start,shp[i].sh_offset, shp[i].sh_size, 
                           string_table_offset, symtab);
        } 
        else if (shp[i].sh_type == SHT_DYNSYM) {
            if (fi->xml_format == 0) {
                cout << "# Found dynamic symtab: " << i 
                     << " offset " <<shp[i].sh_offset
                     << " size " << shp[i].sh_size 
                     << endl;
            }
            read_symbols32(start,shp[i].sh_offset, shp[i].sh_size,
                           dynamic_string_table_offset, symtab);
        }
    }
}


void
xed_disas_elf(xed_decode_file_info_t* fi) 
{
    void* region = 0;
    unsigned int len = 0;
    xed_disas_elf_init();
    xed_map_region(fi->input_file_name, &region, &len);
    xed_symbol_table_t symbol_table;

#if defined(XED_DWARF)
    if (fi->line_numbers)
        read_dwarf_line_numbers(region,len);
#endif
    
    if (check_binary_64b(region)) {
        xed_state_t local_dstate = fi->dstate;
        if (fi->sixty_four_bit == 0 && fi->use_binary_mode) {
            /* modify the default dstate values because we were not expecting a
             * 64b binary */
            local_dstate.mmode = XED_MACHINE_MODE_LONG_64;
        }

        symbols_elf64(fi,region, symbol_table);
        make_symbol_vector(&symbol_table);
        process_elf64(fi,region, len, fi->target_section, &local_dstate, 
                      fi->ninst, fi->decode_only, 
                      symbol_table, fi->addr_start, fi->addr_end);
    }
    else if (check_binary_32b(region)) {
        symbols_elf32(fi, region, symbol_table);
        make_symbol_vector(&symbol_table);
        process_elf32(fi,region, len, fi->target_section, &fi->dstate, 
                      fi->ninst, fi->decode_only,
                      symbol_table, fi->addr_start, fi->addr_end);
    }
    else {
        cerr << "Not a recognized 32b or 64b ELF binary." << endl;
        exit(1);
    }
    if (fi->xml_format == 0){
        xed_print_decode_stats();
        xed_print_encode_stats();
    }
}
 


#endif
////////////////////////////////////////////////////////////////////////////

