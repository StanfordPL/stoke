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

#include <chrono>
#include <iostream>

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/cpputil/include/signal/debug_handler.h"
#include "src/ext/x64asm/include/x64asm.h"

#include "src/args/cpu_states.h"
#include "src/args/tunit.h"
#include "src/state/cpu_state.h"
#include "src/state/cpu_states.h"
#include "src/sandbox/sandbox.h"

using namespace cpputil;
using namespace std;
using namespace std::chrono;
using namespace stoke;
using namespace x64asm;

auto& h1 = Heading::create("Input program:");

auto& target = FileArg<TUnit, TUnitReader, TUnitWriter>::create("target")
    .usage("<path/to/file>")
    .description("Target code")
    .default_val({"auto", {{RET}}});

auto& h2 = Heading::create("Testcases:");

auto& testcases = FileArg<CpuStates, CpuStatesReader, CpuStatesWriter>::create("testcases")
    .usage("<path/to/file>")
    .description("Testcases");

auto& h3 = Heading::create("Sandboxing options:");

auto& abi_check = FlagArg::create("abi_check")
		.description("Report SIGSEGV for abi violations");

auto& max_jumps = ValueArg<size_t>::create("max_jumps")
    .usage("<int>")
    .description("Maximum jumps before exit due to infinite loop")
    .default_val(1024);

auto& h4 = Heading::create("Measurement options:");

auto& itr = ValueArg<size_t>::create("iterations")
    .description("Number of iterations to run for")
    .default_val(1000000);

int main(int argc, char** argv) {
  CommandLineConfig::strict_with_convenience(argc, argv);
  DebugHandler::install_sigsegv();
  DebugHandler::install_sigill();

  Sandbox sb;
  sb.set_abi_check(abi_check)
		.set_max_jumps(max_jumps);
  for (const auto& tc : testcases.value()) {
    sb.insert_input(tc);
  }

  Cfg cfg {target.value().code, RegSet::empty(), RegSet::empty()};

  cout << "Sandbox::run()..." << endl;

  const auto start = steady_clock::now();
  for (size_t i = 0; i < itr; ++i) {
    sb.run(cfg);
  }
  const auto dur = duration_cast<duration<double>>(steady_clock::now() - start);
  const auto rps = itr / dur.count();

  cout << "Runtime:    " << dur.count() << " seconds" << endl;
  cout << "Throughput: " << rps << " / second" << endl;

  return 0;
}

