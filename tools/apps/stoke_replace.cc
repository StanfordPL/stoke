// Copyright 2013-2015 Stanford University
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#include <fstream>
#include <iostream>
#include <map>
#include <sstream>
#include <string>

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/cpputil/include/io/console.h"
#include "src/ext/cpputil/include/signal/debug_handler.h"
#include "src/ext/cpputil/include/system/terminal.h"
#include "src/ext/x64asm/include/x64asm.h"

#include "src/cfg/cfg_transforms.h"
#include "src/disassembler/disassembler.h"
#include "src/disassembler/function_callback.h"

#include "tools/args/rewrite.inc"
#include "tools/io/tunit.h"

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;

auto& io = Heading::create("I/O options:");
auto& in = ValueArg<string>::create("i")
           .alternate("in")
           .usage("<path/to/bin>")
           .description("Binary file to extract code from")
           .default_val("./a.out");
auto& out = ValueArg<string>::create("o")
            .alternate("out")
            .usage("<path/to/dir>")
            .description("File to write changes to; default is to overwrite")
            .default_val("");

auto& input_offset = FlagArg::create("input_offset")
                     .description("Don't disassemble or look for corresponding function name.  Use offset in input file instead.  Skips linking.");

auto& do_not_link_arg = FlagArg::create("do_not_link")
                        .description("Don't run linker.  Could avoid errors if no function calls are being made.");


bool found = false;
uint64_t fxn_offset = 0;
size_t fxn_size = 0;
uint64_t fxn_rip_offset = 0;


void callback(const FunctionCallbackData& data, void* arg) {

  auto linker = (Linker*)arg;

  // Check if we've found the function
  if (data.tunit.get_name() == rewrite_arg.value().get_name()) {
    found = true;
    fxn_offset = data.tunit.get_file_offset();
    fxn_size = data.tunit.hex_capacity();
    fxn_rip_offset = data.tunit.get_rip_offset();
  } else if (linker) {
    auto label = data.tunit.get_leading_label();
    if(label.get_text()[0] != '.') {
      stringstream ss;
      ss << "." << label.get_text();
      label = Label(ss.str());
    }
    linker->link(label, data.tunit.get_rip_offset());
  }
}

bool replace(uint64_t offset, size_t size, Linker* linker) {
  // def-in/live-out aren't really important here
  // check_invariants() will fail here, but all we're trying to do is make types match
  Cfg cfg(rewrite_arg.value(), RegSet::empty(), RegSet::empty());

  // Assemble the new function
  Assembler assm;
  Function fxn;
  assm.start(fxn);
  auto code = cfg.get_code();
  fxn.reserve(fxn.size() + 15*code.size());
  for(size_t i = 0; i < code.size(); ++i) {
    size_t nop_bytes = 0;
    while(code[i].is_nop() && i < code.size() &&
          (((fxn.size() + nop_bytes + assm.hex_size(code[i])) & 0x1f) >= (fxn.size() & 0x1f))) {
      nop_bytes += assm.hex_size(code[i]);
      i++;
    }

    //assemble these nops
    while(nop_bytes > 0) {
      switch(nop_bytes) {
      case 1:
        fxn.emit_byte(0x90);
        nop_bytes = 0;
        break;
      case 2:
        fxn.emit_byte(0x66);
        fxn.emit_byte(0x90);
        nop_bytes = 0;
        break;
      case 3:
        fxn.emit_byte(0x0f);
        fxn.emit_byte(0x1f);
        fxn.emit_byte(0x00);
        nop_bytes = 0;
        break;
      case 4:
        fxn.emit_byte(0x0f);
        fxn.emit_byte(0x1f);
        fxn.emit_byte(0x40);
        fxn.emit_byte(0x00);
        nop_bytes = 0;
        break;
      case 5:
        fxn.emit_byte(0x0f);
        fxn.emit_byte(0x1f);
        fxn.emit_byte(0x44);
        fxn.emit_byte(0x00);
        fxn.emit_byte(0x00);
        nop_bytes = 0;
        break;
      case 6:
        fxn.emit_byte(0x0f);
        fxn.emit_byte(0x1f);
        fxn.emit_byte(0x00);
        fxn.emit_byte(0x0f);
        fxn.emit_byte(0x1f);
        fxn.emit_byte(0x00);
        nop_bytes = 0;
        break;
      case 7:
        fxn.emit_byte(0x0f);
        fxn.emit_byte(0x1f);
        fxn.emit_byte(0x80);
        fxn.emit_byte(0x00);
        fxn.emit_byte(0x00);
        fxn.emit_byte(0x00);
        fxn.emit_byte(0x00);
        nop_bytes = 0;
        break;
      case 8:
        fxn.emit_byte(0x0f);
        fxn.emit_byte(0x1f);
        fxn.emit_byte(0x84);
        fxn.emit_byte(0x00);
        fxn.emit_byte(0x00);
        fxn.emit_byte(0x00);
        fxn.emit_byte(0x00);
        fxn.emit_byte(0x00);
        nop_bytes = 0;
        break;
      default:
        fxn.emit_byte(0x66);
        fxn.emit_byte(0x0f);
        fxn.emit_byte(0x1f);
        fxn.emit_byte(0x84);
        fxn.emit_byte(0x00);
        fxn.emit_byte(0x00);
        fxn.emit_byte(0x00);
        fxn.emit_byte(0x00);
        fxn.emit_byte(0x00);
        nop_bytes -= 9;
        break;
      }
    }

    if(i < code.size()) {
      assm.assemble(code[i]);
    }
  }

  bool ok = assm.finish();

  if (!ok) {
    Console::msg() << "Could not assemble rewrite; ";
    Console::msg() << "Requested 8-bit jump offset but jump target is too far." << endl;
    return false;
  }


  // Fail if the new function is larger than the old
  if (fxn.size() > size) {
    Console::msg() << "New function has " << fxn.size() << " bytes, but the old one had " << size;
    Console::msg() << "." << endl;
    return false;
  }

  // Perform linking
  if(linker) {
    linker->link(fxn, fxn_rip_offset);
    linker->finish();

    if(linker->multiple_def()) {
      Console::msg() << "Multiple definition error for function \"" << linker->get_multiple_def() << "\"" << endl;
      return false;
    }
    if(linker->undef_symbol()) {
      Console::msg() << "Undefined symbol \"" << linker->get_undef_symbol() << "\"" << endl;
      return false;
    }
    if(linker->jump_too_far()) {
      Console::msg() << "Distance for jump exceeded 4-byte offset limit." << endl;
      return false;
    }
    if(!linker->good()) {
      Console::msg() << "Unexpected linker error." << endl;
      return false;
    }
  }

  // Copy binary to new destination if path was specified
  string dest = in.value();
  if (out.value() != "") {
    dest = out.value();
    ifstream ifs(in.value(), ios::binary);
    ofstream ofs(out.value(), ios::binary);
    ofs << ifs.rdbuf();
    ofs.close();
  }

  // Overwrite the old function (fingers crossed!)
  fstream fs(dest, ios::binary | ios::in | ios::out);
  fs.seekg(offset);
  for (size_t i = 0; i < fxn.size(); ++i) {
    fs.put(fxn.get_buffer()[i]);
  }
  // Add no-ops so that we don't write garbage and confuse
  // the disassembler.  See #452.
  for (size_t i = fxn.size(); i < size; ++i) {
    fs.put(0x90);
  }

  return true;
}

int main(int argc, char** argv) {
  CommandLineConfig::strict_with_convenience(argc, argv);
  DebugHandler::install_sigsegv();
  DebugHandler::install_sigill();

  if(input_offset.value()) {
    // Get offset from input tunit
    fxn_offset = rewrite_arg.value().get_file_offset();
    fxn_size = rewrite_arg.value().hex_capacity();

    if (!replace(fxn_offset, fxn_size, nullptr)) {
      Console::error(1) << "Unable to replace function text!" << endl;
    }


  } else {
    //Disassemble and find matching function

    Linker linker;
    Linker* linker_ptr = &linker;
    if(do_not_link_arg.value())
      linker_ptr = nullptr;

    Disassembler d;
    d.set_function_callback(callback, linker_ptr);
    found = false;
    d.disassemble(in.value());

    if(d.has_error()) {
      Console::error(1) << "disassemble: " << d.get_error() << endl;
      return 1;
    }
    if (!found) {
      Console::error(1) << "Couldn't find function " << rewrite_arg.value().get_name() << " in the binary." << endl;
      return 1;
    }

    if (!replace(fxn_offset, fxn_size, linker_ptr)) {
      Console::error(1) << "Unable to replace function text!" << endl;
    }

  }

  return 0;
}
