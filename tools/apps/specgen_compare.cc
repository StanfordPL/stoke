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

#include "src/symstate/simplify.h"

#include "src/validator/straight_line.h"
#include "src/validator/handlers/combo_handler.h"

#include "tools/gadgets/functions.h"
#include "tools/gadgets/solver.h"
#include "tools/gadgets/validator.h"

#include "tools/apps/base.h"
#include "src/specgen/specgen.h"
#include "tools/apps/support.h"

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


void print_state(RegSet regs, SymState& state);

template <typename T>
void print_circuit(const T& c) {
  SymPrettyVisitor pretty(Console::msg());
  // cout << "normal: ";
  // pretty((c));
  // cout << endl;
  // cout << "simple: ";
  pretty(SymSimplify::simplify(c));
  // cout << endl;
}

template <typename T>
string out_padded(const T& t, size_t min_length, char pad = ' ') {
  stringstream ss;
  ss << t;
  size_t len = ss.str().size();
  for (size_t i = 0; i < (min_length - len); i++) {
    ss << pad;
  }
  return ss.str();
}

int main(int argc, char** argv) {

  // not actually required here
  target_arg.required(false);

  CommandLineConfig::strict_with_convenience(argc, argv);

  SolverGadget solver;

  auto strata_path = circuits_arg.value();

  cout << "Comparing strata circuits with hand-written circuits" << endl;
  cout << endl;

  auto errors = 0;
  auto n = 0;
  filesystem::directory_iterator itr(strata_path);
  filesystem::directory_iterator end_itr;
  auto strata_handler = StrataHandler(strata_path);
  auto stoke_handler = ComboHandler();
  for (; itr != end_itr; itr++) {
    auto file = itr->path().filename().string();
    assert(file.size() > 2);
    auto opcode_str = file.substr(0, file.size()-2);
    Opcode opcode;
    if (!(stringstream(opcode_str) >> opcode)) {
      assert(false);
      continue;
    }
    auto instr = get_instruction(opcode);
    cout << "Circuit for '" << instr << "' (opcode " << opcode << "): ";

    SymState strata_state("", true);
    SymState stoke_state("", true);
    strata_handler.build_circuit(instr, strata_state);
    stoke_handler.build_circuit(instr, stoke_state);

    std::vector<SymBool> constraints;
    for (auto it : strata_state.equality_constraints(stoke_state))
      constraints.push_back(it);
    bool b = solver.is_sat(constraints);
    if (solver.has_error()) {
      cout << "✗" << endl;
      cout << "  solver encountered error: " << solver.get_error() << endl;
      errors += 1;
      continue;
    }

    if (b) {
      cout << "✓" << endl;
    } else {
      cout << "✗" << endl;
      cout << "  circuits are not equivalent" << endl;
      errors += 1;
    }

    n += 1;
  }

  cout << endl;
  if (errors == 0) {
    cout << "SUCCESS: Compared " << n << " circuits without error!" << endl;
  } else {
    cout << "ERROR: Compared " << n << " circuits with " << errors << " error!" << endl;
  }

  FunctionsGadget aux_fxns;
  // Code code = target.get_code();
  // if (code_arg.has_been_provided()) {
  //   code = code_arg.value();
  // }
  // auto instr = code.size() > 1 ? code[1] : code[0];

  // Console::msg() << "Instruction:       " << instr << endl;
  // Console::msg() << "Opcode:            " << instr.get_opcode() << endl;
  // Console::msg() << "Maybe written to:  " << instr.maybe_write_set() << endl;
  // Console::msg() << endl;

  // SymState state("", true);
  // build_circuit(instr, state);

  // Console::msg() << "Circuits:" << endl;
  // Console::msg() << endl;
}

void print_state(RegSet regs, SymState& state) {

  // print symbolic state
  bool printed = false;
  auto pad = 7;

  RegSet rs = regs;
  for (auto gp_it = rs.gp_begin(); gp_it != rs.gp_end(); ++gp_it) {
    auto fullreg = Constants::r64s()[*gp_it];
    if ((*gp_it).type() == Type::RH) {
      fullreg = Constants::r64s()[((size_t)*gp_it) - 4];
    }
    auto val = state.lookup(fullreg);
    Console::msg() << out_padded(fullreg, pad) << ": ";
    print_circuit(val);
    Console::msg() << endl;
    printed = true;
  }
  if (printed) cout << endl;
  printed = false;
  for (auto sse_it = rs.sse_begin(); sse_it != rs.sse_end(); ++sse_it) {
    auto fullreg = Constants::ymms()[*sse_it];
    auto val = state.lookup(fullreg);
    Console::msg() << out_padded(fullreg, pad) << ": ";
    print_circuit(val);
    Console::msg() << endl;
    printed = true;
  }
  if (printed) cout << endl;
  printed = false;
  for (auto flag_it = rs.flags_begin(); flag_it != rs.flags_end(); ++flag_it) {
    SymBool val = state[*flag_it];
    Console::msg() << out_padded(*flag_it, pad) << ": ";
    print_circuit(val);
    Console::msg() << endl;
    printed = true;
  }
  if (printed) cout << endl;
  printed = false;

  Console::msg() << "sigfpe :     ";
  print_circuit(state.sigfpe);
  Console::msg() << endl;
  Console::msg() << "sigbus :     ";
  print_circuit(state.sigbus);
  Console::msg() << endl;
  Console::msg() << "sigsegv:     ";
  print_circuit(state.sigsegv);
  Console::msg() << endl;
}