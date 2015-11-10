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
  int only_strata = 0;
  int only_stoke = 0;
  for (auto i = 0; i < X64ASM_NUM_OPCODES; ++i) {
    auto opcode = (Opcode)i;
    auto strata_support = strata_handler.is_supported(opcode) || specgen_is_base(opcode);
    auto stoke_support = validator.is_supported(opcode);
    if (strata_support) {
      strata_count++;
    }
    if (stoke_support) {
      stoke_count++;
    }
    if (stoke_support && !strata_support) {
      only_stoke++;
    }
    if (strata_support && !stoke_support) {
      only_strata++;
    }
    if (!strata_support) {
      if (!specgen_is_system(opcode) &&
          !specgen_is_float(opcode) &&
          !specgen_is_jump(opcode) &&
          !specgen_is_mm(opcode) &&
          !specgen_is_crypto(opcode) &&
          !specgen_is_sandbox_unsupported(opcode)) {
        // cout << opcode << endl;
      }
    }
  }
  cout << "strata supports " << strata_count << " instructions" << endl;
  cout << "  only strata: " << only_strata << endl;
  cout << "stoke supports " << stoke_count << " instructions" << endl;
  cout << "  only stoke: " << only_stoke << endl;

  Opcode opcode = Opcode::ADC_R8_IMM8;
  auto instr = get_random_instruction(opcode, gen);

  cout << instr << endl;

  // set up cfg for stategen
  Code code;
  code.push_back(instr);
  code.push_back(Instruction(RET));
  TUnit fxn(code);
  Cfg cfg(fxn, RegSet::universe(), RegSet::empty());

  CpuState initial;
  if (!sg.get(initial, cfg)) {
    cout << "Could not generate state: " << sg.get_error() << endl;
    return 1;
  }

  Sandbox sb2(sb);
  sb2.insert_input(initial);
  sb2.run(cfg);
  CpuState final = *sb2.get_result(0);

  if (final.code != stoke::ErrorCode::NORMAL) {
    cout << "Error code not normal: " << (int)final.code << endl;
    return 1;
  }

  if (strata_handler.get_support(instr) == Handler::SupportLevel::NONE) {
    cout << "strata does not support '" << instr << "'." << endl;
    exit(1);
  }

  // build circuits
  SymState final_strata(initial);
  SymState final_sym(final);
  strata_handler.build_circuit(instr, final_strata);

  // check equivalence of two symbolic states for a given register
  auto is_eq = [&solver](auto& reg, auto a, auto b, stringstream& explanation) {
    SymBool eq = a == b;
    bool res = solver.is_sat({ eq });
    if (solver.has_error()) {
      explanation << "  solver encountered error: " << solver.get_error() << endl;
      return false;
    }
    if (!res) {
      explanation << "  states do not agree for '" << (*reg) << "':" << endl;
      explanation << "    strata: " << a << endl;
      explanation << "    stoke:  " << b << endl;
      return false;
    } else {
      return true;
    }
  };

  auto rs = RegSet::universe() - (RegSet::empty() + Constants::eflags_af());
  auto eq = true;
  stringstream ss;
  for (auto gp_it = rs.gp_begin(); gp_it != rs.gp_end(); ++gp_it) {
    eq = eq && is_eq(gp_it, final_strata.lookup(*gp_it), final_sym.lookup(*gp_it), ss);
  }
  for (auto sse_it = rs.sse_begin(); sse_it != rs.sse_end(); ++sse_it) {
    eq = eq && is_eq(sse_it, final_strata.lookup(*sse_it), final_sym.lookup(*sse_it), ss);
  }
  for (auto flag_it = rs.flags_begin(); flag_it != rs.flags_end(); ++flag_it) {
    eq = eq && is_eq(flag_it, final_strata[*flag_it], final_sym[*flag_it], ss);
  }
  if (!eq) {
    cout << "States do not agree for '" << instr << "' (opcode " << opcode << ")" << endl;
    cout << ss.str();
    cout << endl << endl;
    exit(1);
  }
}
