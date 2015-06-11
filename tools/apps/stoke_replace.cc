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

auto& use_file_info_arg = FlagArg::create("use_input_offset")
                          .description("Use the file offset and capactiy specified in input");

bool found = false;
uint64_t fxn_offset = 0;
size_t fxn_size = 0;

void callback(const FunctionCallbackData& data, void* arg) {
  // Check if we've found the function
  if (data.tunit.get_name() == rewrite_arg.value().get_name()) {
    found = true;
    if(!use_file_info_arg) {
      fxn_offset = data.tunit.get_file_offset();
      fxn_size = data.tunit.hex_capacity();
    } else {
      fxn_offset = rewrite_arg.value().get_file_offset();
      fxn_size = rewrite_arg.value().hex_capacity();
    }
  }
}

bool replace(uint64_t offset, size_t size) {
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
    while(code[i].is_nop() && i < code.size()) {
      nop_bytes += assm.hex_size(code[i]);
      i++;
    }

    cout << "Emitting " << nop_bytes << " nop bytes" << endl;
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
        fxn.emit_byte(0x66);
        fxn.emit_byte(0x0f);
        fxn.emit_byte(0x1f);
        fxn.emit_byte(0x44);
        fxn.emit_byte(0x00);
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
  assm.finish();

  // Fail if the new function is larger than the old
  if (fxn.size() > size) {
    Console::msg() << "New function has " << fxn.size() << " bytes, but the old one had " << size;
    Console::msg() << "." << endl;
    return false;
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

  Disassembler d;
  d.set_function_callback(callback, nullptr);

  found = false;
  d.disassemble(in.value());

  if (d.has_error()) {
    Console::error(1) << "disassemble: " << d.get_error() << endl;
  } else if (!found) {
    Console::error(1) << "Couldn't find function " << rewrite_arg.value().get_name() << " in the binary." << endl;
  } else if (!replace(fxn_offset, fxn_size)) {
    Console::error(1) << "Unable to replace function text!" << endl;
  }

  return 0;
}
