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
  .default_val("/home/sheule/dev/circuits");

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

  auto strata_path = circuits_arg.value();

  auto strata_handler = StrataHandler(strata_path, false);
  auto strata_handler_simple = StrataHandler(strata_path, true);
  auto stoke_handler = ComboHandler();
  auto validator = StraightLineValidator(solver);

  auto get_strata_circuits = false;

  auto sep = ",";
  x64asm::RegSet supported =
    (x64asm::RegSet::all_gps() | x64asm::RegSet::all_ymms()) +
    x64asm::eflags_cf + x64asm::eflags_of + x64asm::eflags_pf +
    x64asm::eflags_zf + x64asm::eflags_sf;
  size_t nodes = 0;
  size_t uifs = 0;
  size_t muls = 0;
  for (auto i = 0; i < X64ASM_NUM_OPCODES; ++i) {
    auto opcode = (Opcode)i;
    auto strata_support = strata_handler.is_supported(opcode) || specgen_is_base(opcode);
    auto stoke_support = validator.is_supported(opcode);
    auto could_support = !specgen_is_system(opcode) &&
                         !specgen_is_float(opcode) &&
                         !specgen_is_jump(opcode) &&
                         !specgen_is_mm(opcode) &&
                         !specgen_is_crypto(opcode) &&
                         !specgen_is_sandbox_unsupported(opcode);
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
    if (!could_support) continue;
    Instruction instr(XOR_R8_R8);
    RegSet rs;
    if (strata_support || stoke_support) {
      instr = get_random_instruction(opcode, gen);
      rs = supported & instr.maybe_write_set();
    }
    SymState stoke_state("", true);
    if (stoke_support) {
      stoke_handler.build_circuit(instr, stoke_state);
      if (stoke_handler.has_error()) {
        // this is necessary because stoke lies about support
        stoke_support = false;
      }
    }
    cout << "{ ";
    cout << " \"instr\":\"" << opcode << "\"" << sep;
    cout << " \"is_base\":" << (specgen_is_base(opcode)?"true":"false") << sep;
    cout << " \"strata_support\":" << (strata_support?"true":"false") << sep;
    cout << " \"stoke_support\":" << (stoke_support?"true":"false") << sep;
    if (strata_support && get_strata_circuits) {
      SymState state("", true);
      strata_handler.build_circuit(instr, state);
      if (strata_handler.has_error()) {
        cout << instr << endl;
        cout << "strata handler produced an error: " << strata_handler.error() << endl;
        exit(1);
      }
      SymState state_simple("", true);
      strata_handler_simple.build_circuit(instr, state_simple);
      if (strata_handler_simple.has_error()) {
        cout << instr << endl;
        cout << "strata handler produced an error: " << strata_handler_simple.error() << endl;
        exit(1);
      }

      measure_complexity(state, rs, &nodes, &uifs, &muls);
      cout << "\"strata_long\":{";
      cout << "\"uif\":" << uifs << sep;
      cout << "\"mult\":" << muls << sep;
      cout << "\"nodes\":" << nodes;
      cout << "},";
      measure_complexity(state_simple, rs, &nodes, &uifs, &muls, true);
      cout << "\"strata\":{";
      cout << "\"uif\":" << uifs << sep;
      cout << "\"mult\":" << muls << sep;
      cout << "\"nodes\":" << nodes;
      cout << "},";
    }
    if (stoke_support && strata_support) {
      measure_complexity(stoke_state, rs, &nodes, &uifs, &muls);
      cout << "\"stoke\":{";
      cout << "\"uif\":" << uifs << sep;
      cout << "\"mult\":" << muls << sep;
      cout << "\"nodes\":" << nodes;
      cout << "},";
    }
    cout << "\"delim\": 0";
    cout << "  }";
    cout << endl;
  }
}
