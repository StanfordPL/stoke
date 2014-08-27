// Copyright 2014 eric schkufza
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

#include <iomanip>
#include <iostream>
#include <random>
#include <set>
#include <vector>

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/cpputil/include/io/filterstream.h"
#include "src/ext/cpputil/include/io/column.h"
#include "src/ext/cpputil/include/serialize/span_reader.h"
#include "src/ext/cpputil/include/signal/debug_handler.h"
#include "src/ext/x64asm/include/x64asm.h"

#include "src/args/init.h"

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;

auto& h1 = Heading::create("Input programs:");

auto& target = ValueArg<string>::create("target")
    .usage("<path/to/file>")
    .description("Target")
    .default_val("target");

auto& h2 = Heading::create("Output options:");

auto& out = ValueArg<string>::create("out")
    .alternate("o")
    .usage("<path/to/directory>")
    .description("File to write successful results to")
    .default_val("results");

int main(int argc, char** argv) {
  CommandLineConfig::strict_with_convenience(argc, argv);

  // STEP 1: run objdump on the binary

  // STEP 2: create list of functions we're working on

  // STEP 3: extract the basic blocks

  // STEP 4: run the normalization routine

  // STEP 5: write the results out to disk

  return 0;
}
