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
#include <random>

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/x64asm/include/x64asm.h"

#include "src/args/flag_set.h"
#include "src/args/move.h"
#include "src/args/tunit.h"
#include "src/cfg/cfg.h"
#include "src/search/move.h"
#include "src/search/transforms.h"

using namespace cpputil;
using namespace std;
using namespace std::chrono;
using namespace stoke;
using namespace x64asm;

auto& h1 = Heading::create("Input programs:");

auto& target = FileArg<TUnit, TUnitReader, TUnitWriter>::create("target")
    .usage("<path/to/file>")
    .description("Target")
    .default_val({"anon", {{RET}}});

auto& h2 = Heading::create("Transform options:");

auto& flags = ValueArg<FlagSet, FlagSetReader, FlagSetWriter>::create("cpu_flags")
    .usage("{ flag1 flag2 ... flagn }")
    .description("Propose instruction and opcode moves that use this CPU ID flag set")
    .default_val(FlagSet::empty());

auto& nop_percent = ValueArg<size_t>::create("nop_percent")
    .usage("<percent>")
    .description("Percent of instruction moves that produce nops")
    .default_val(0);

auto& mem_read = FlagArg::create("mem_read")
    .description("Propose instruction and opcode moves that read memory?");

auto& mem_write = FlagArg::create("mem_write")
    .description("Propose instruction and opcode moves that write memory?");

auto& callee_save = FlagArg::create("callee_save")
    .description("Propose instruction and operand moves that use callee save registers?");

auto& move = ValueArg<Move, MoveReader, MoveWriter>::create("move")
    .usage("<move_type>")
    .description("Move type to use")
    .default_val(Move::INSTRUCTION);

auto& h3 = Heading::create("Random number generator options");

auto& seed = ValueArg<default_random_engine::result_type>::create("seed")
    .usage("<int>")
    .description("Seed for random number generator; set to zero for random")
    .default_val(0);

auto& h4 = Heading::create("Measurement options:");

auto& itr = ValueArg<size_t>::create("iterations")
    .description("Number of iterations to run for")
    .default_val(1000000);

// Add user-defined extensions here ...

auto& h5 = Heading::create("Extension options:");

auto& ext = ValueArg<int>::create("extension")
		.usage("<int>")
		.description("User-defined extension")
		.default_val(0);

int main(int argc, char** argv) {
  CommandLineConfig::strict_with_convenience(argc, argv);

  if (seed == 0) {
    const auto time = system_clock::now().time_since_epoch().count();
    default_random_engine gen(time);
    seed.value() = gen();
  }

  Cfg cfg(target.value().code, RegSet::empty(), RegSet::empty());

  Transforms transforms;
  transforms.set_seed(seed)
  .set_opcode_pool(flags, nop_percent, mem_read, mem_write)
  .set_operand_pool(target.value().code, callee_save);

  cout << "Transforms::modify()..." << endl;

  const auto start = steady_clock::now();
  for (size_t i = 0; i < itr; ++i) {
    transforms.modify(cfg, ::move);
  }
  const auto dur = duration_cast<duration<double>>(steady_clock::now() - start);
  const auto mps = itr / dur.count();

  cout << "Runtime:    " << dur.count() << " seconds" << endl;
  cout << "Throughput: " << mps << " / second" << endl;

  return 0;
}
