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

#include <cctype>
#include <cstdlib>
#include <fstream>
#include <iostream>
#include <string>

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/cpputil/include/signal/debug_handler.h"

#include "src/disassembler/disassembler.h"
#include "src/disassembler/function_callback.h"
#include "tools/ui/console.h"

using namespace cpputil;
using namespace stoke;
using namespace std;

auto& io = Heading::create("I/O options:");
auto& in = ValueArg<string>::create("i")
           .alternate("in")
           .usage("<path/to/bin>")
           .description("Binary file to extract code from")
           .default_val("./a.out");
auto& out = ValueArg<string>::create("o")
            .alternate("out")
            .usage("<path/to/dir>")
            .description("Directory to write results to")
            .default_val("out");

bool make_dir() {
  /* The permission is guarded by user's umask, which is why
     we set the mode to 0777.  We ignore the result, because mkdir will fail if
     the directory already exists.  We check for success later. */
  mkdir(out.value().c_str(), 0777);

  /* All said and done, check if the directory exists. */
  struct stat st;
  int result = stat(out.value().c_str(), &st);

  if (result) {
    // We couldn't even stat the file/directory.
    return false;
  }

  return S_ISDIR(st.st_mode);
}

void callback(const FunctionCallbackData& data, void* arg) {
  ofstream ofs(out.value() + "/" + data.tunit.name + ".s");
  ofs << data.tunit << endl;
}

int main(int argc, char** argv) {
  CommandLineConfig::strict_with_convenience(argc, argv);
  DebugHandler::install_sigsegv();
  DebugHandler::install_sigill();

  if (!make_dir()) {
		Console::error(1) << "Unable to create output directory " << out.value() << "!" << endl;
  }

  Disassembler d;
  d.set_function_callback(callback, nullptr);
  d.disassemble(in.value());

  if (d.has_error()) {
		Console::error(1) << "Error: " << d.get_error() << endl;
  }

  return 0;
}

