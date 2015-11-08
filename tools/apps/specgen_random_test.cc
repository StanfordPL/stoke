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
#include <map>
#include <string>
#include <vector>
#include <cassert>

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/cpputil/include/signal/debug_handler.h"
#include "src/ext/cpputil/include/io/filterstream.h"
#include "src/ext/cpputil/include/io/column.h"
#include "src/ext/cpputil/include/io/console.h"

#include "src/ext/x64asm/src/reg_set.h"

#include "src/state/cpu_states.h"
#include "src/stategen/stategen.h"
#include "src/tunit/tunit.h"

#include "src/symstate/simplify.h"

#include "src/validator/straight_line.h"
#include "src/validator/handler.h"
#include "src/validator/handlers/combo_handler.h"

#include "tools/gadgets/functions.h"
#include "tools/gadgets/solver.h"
#include "tools/gadgets/seed.h"
#include "tools/gadgets/validator.h"
#include "tools/gadgets/sandbox.h"

#include "src/specgen/specgen.h"
#include "src/specgen/support.h"

#define BOOST_NO_CXX11_SCOPED_ENUMS
#include <boost/filesystem.hpp>

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;
using namespace std::chrono;
using namespace boost;


Heading& functions_heading =
  cpputil::Heading::create("Auxiliary Function Options:");

auto& circuits_arg =
  ValueArg<string>::create("circuit_dir")
  .usage("<path/to/dir>")
  .description("Directory containing the strata circuits")
  .required();


int main(int argc, char** argv) {

  // not actually required here
  target_arg.required(false);

  CommandLineConfig::strict_with_convenience(argc, argv);

  SeedGadget seed;
  FunctionsGadget aux_fxns;
  SandboxGadget sb({}, aux_fxns);

  // setup the stategen class
  StateGen sg(&sb, 30);
  sg.set_max_attempts(10)
  .set_max_memory(30)
  .set_allow_unaligned(false)
  .set_seed(seed);

  SolverGadget solver;
  default_random_engine gen((size_t)seed);

  auto col_reset = "\033[0m";
  auto col_red = "\033[31m";
  auto col_green = "\033[32m";

  auto strata_path = circuits_arg.value();

  auto errors = 0;
  auto n = 0;
  auto strata_handler = StrataHandler(strata_path);
  auto validator = StraightLineValidator(solver);

  int strata_count = 0;
  int stoke_count = 0;
  for (auto i = 0; i < X64ASM_NUM_OPCODES; ++i) {
    auto opcode = (Opcode)i;
    if (strata_handler.is_supported(opcode)) {
      strata_count++;
    }
    if (validator.is_supported(opcode)) {
      stoke_count++;
    }
  }
  cout << "strata supports " << strata_count << " instructions" << endl;
  cout << "stoke supports " << stoke_count << " instructions" << endl;

  Opcode opcode = Opcode::XOR_R8_IMM8;
  auto instr = get_random_instruction(opcode, gen);

  cout << instr << endl;

  // set up cfg for stategen
  Code code;
  code.push_back(instr);
  code.push_back(Instruction(RET));
  TUnit fxn(code);
  Cfg cfg(fxn, RegSet::universe(), RegSet::empty());

  CpuState cs;
  if (!sg.get(cs, cfg)) {
    cout << "Could not generate state: " << sg.get_error() << endl;
    return 1;
  }

  Sandbox sb2(sb);
  sb2.insert_input(cs);
  sb2.run(cfg);
  CpuState concrete = *sb2.get_result(0);

  if (concrete.code != stoke::ErrorCode::NORMAL) {
    cout << "Error code not normal: " << (int)concrete.code << endl;
    return 1;
  }

  if (strata_handler.get_support(instr) == Handler::SupportLevel::NONE) {
    cout << "strata does not support '" << instr << "'." << endl;
    exit(1);
  }

  // build circuits
  SymState strata_state("", true);
  SymState concrete_sym(concrete);
  strata_handler.build_circuit(instr, strata_state);

  vector<SymBool> constraints;
  for (auto it : strata_state.constraints)
    constraints.push_back(it);
  for (auto it : strata_state.equality_constraints(concrete_sym))
    constraints.push_back(it);

  bool res = solver.is_sat(constraints);
  if (solver.has_error()) {
    cout << "Solver encountered error: " << solver.get_error() << endl;
    exit(1);
  }
  if (!res) {
    cout << "Concrete and symbolic state disagree!" << endl;
    exit(1);
  } else {
    cout << "OK" << endl;
  }

  // if (strata_handler.get_support(instr) == Handler::SupportLevel::NONE) {
  //   cout << "strata does not support '" << instr << "'." << endl;
  //   exit(3);
  // }

  // // build circuits for strata and stoke
  // SymState strata_state("", true);
  // SymState stoke_state("", true);
  // strata_handler.build_circuit(instr, strata_state);
  // stoke_handler.build_circuit(instr, stoke_state);

  // if (stoke_handler.has_error()) {
  //   cout << "STOKE handler produced an error: " << stoke_handler.error() << endl;
  //   exit(5);
  // }
  // if (strata_handler.has_error()) {
  //   cout << "strata handler produced an error: " << strata_handler.error() << endl;
  //   exit(6);
  // }

  // // check equivalence of two circuits for a given register
  // auto is_eq = [&solver](auto& reg, auto a_in, auto b_in, stringstream& explanation) {
  //   auto a = (a_in);
  //   auto b = (b_in);
  //   SymBool eq = a == b;
  //   SymPrettyVisitor pretty(explanation);
  //   bool res = solver.is_sat({ !eq });
  //   if (solver.has_error()) {
  //     explanation << "  solver encountered error: " << solver.get_error() << endl;
  //     return false;
  //   }
  //   if (!res) {
  //     return true;
  //   } else {
  //     explanation << "  not equivalent for '" << (*reg) << "':" << endl;
  //     explanation << "    strata: ";
  //     pretty(a);
  //     explanation << endl;
  //     explanation << "    stoke:  ";
  //     pretty(b);
  //     explanation << endl;
  //     return false;
  //   }
  // };

  // auto rs = instr.must_write_set();
  // // the base circuits don't have %af at the moment
  // rs -= (RegSet::empty() + Constants::eflags_af());
  // auto eq = true;
  // stringstream ss;
  // for (auto gp_it = rs.gp_begin(); gp_it != rs.gp_end(); ++gp_it) {
  //   eq = eq && is_eq(gp_it, strata_state.lookup(*gp_it), stoke_state.lookup(*gp_it), ss);
  // }
  // for (auto sse_it = rs.sse_begin(); sse_it != rs.sse_end(); ++sse_it) {
  //   eq = eq && is_eq(sse_it, strata_state.lookup(*sse_it), stoke_state.lookup(*sse_it), ss);
  // }
  // for (auto flag_it = rs.flags_begin(); flag_it != rs.flags_end(); ++flag_it) {
  //   eq = eq && is_eq(flag_it, strata_state[*flag_it], stoke_state[*flag_it], ss);
  // }
  // if (!eq) {
  //   cout << "Circuit for '" << instr << "' (opcode " << opcode << ")" << endl;
  //   cout << ss.str();
  //   cout << endl << endl;
  //   exit(4);
  // }

  // cout << "Equivalent." << endl;
}
