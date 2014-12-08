// Copyright 2013-2015 Eric Schkufza, Rahul Sharma, Berkeley Churchill, Stefan Heule
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
#include "src/ext/cpputil/include/signal/debug_handler.h"
#include "src/ext/cpputil/include/system/terminal.h"
#include "src/ext/x64asm/include/x64asm.h"

#include "src/disassembler/disassembler.h"
#include "src/disassembler/function_callback.h"
#include "tools/args/rewrite.h"
#include "tools/io/tunit.h"
#include "tools/ui/console.h"

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

map<string, uint64_t> section_offsets;
uint64_t fxn_offset;
size_t fxn_size;
bool found;

void callback(const FunctionCallbackData& data, void* arg) {
  // Check if we've found the function
  if (data.tunit.name == rewrite_arg.value().name) {
    found = true;
    fxn_offset = data.offset;
    /* This is an underapproximation; we can do better. */
    fxn_size = 1 + data.instruction_offsets.back();
  }
}

bool replace(uint64_t offset, size_t size) {
  // Assemble the new function
  Assembler assm;
  auto fxn = assm.assemble(rewrite_arg.value().code);

  // Fail if the new function is larger than the old
  if (fxn.size() > size) {
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
    Console::error(1) << "Couldn't find function " << rewrite_arg.value().name << " in the binary." << endl;
  } else if (!replace(fxn_offset, fxn_size)) {
    Console::error(1) << "Unable to replace function text!" << endl;
  }

  return 0;
}
