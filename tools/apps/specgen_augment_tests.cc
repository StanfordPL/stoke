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

#include <chrono>
#include <fstream>
#include <iostream>
#include <random>
#include <string>
#include <vector>
#include <streambuf>
#include <regex>

#include "src/ext/cpputil/include/command_line/command_line.h"

#include "tools/io/opc_set.h"

#include "src/search/search.h"
#include "src/validator/validator.h"
#include "src/solver/z3solver.h"

#include "tools/apps/base.h"
#include "tools/apps/specgen.h"
#include "tools/apps/support.h"

#include "src/state/cpu_states.h"
#include "tools/io/cpu_states.h"

#define BOOST_NO_CXX11_SCOPED_ENUMS
#include <boost/filesystem.hpp>

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;
using namespace boost;

auto& io_opt = Heading::create("Main option:");

auto& testcases_arg = FileArg<CpuStates, CpuStatesReader, CpuStatesWriter>::create("testcases")
                      .usage("<path/to/file>")
                      .required()
                      .description("Testcases");

auto& out_arg = ValueArg<string>::create("out")
                .usage("<path/to/file.tc>")
                .description("File to write augmented testcases to.")
                .required();


int main(int argc, char** argv) {
  CommandLineConfig::strict_with_convenience(argc, argv);

  auto tests = testcases_arg.value();

  CpuState state;
  tests.push_back(state);

  ofstream f;
  f.open(out_arg.value());
  CpuStatesWriter()(f, tests);
  f.close();
}
