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

#include "src/validator/straight_line.h"
#include "src/validator/handlers/combo_handler.h"

#include "tools/gadgets/functions.h"
#include "tools/gadgets/solver.h"
#include "tools/gadgets/target.h"
#include "tools/gadgets/validator.h"

#include "tools/apps/base.h"
#include "tools/apps/specgen.h"
#include "tools/apps/support.h"

#define BOOST_NO_CXX11_SCOPED_ENUMS
#include <boost/filesystem.hpp>

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;
using namespace std::chrono;
using namespace boost;
using namespace boost::filesystem;

auto& io_opt = Heading::create("Main option:");

struct CodeReader {
  void operator()(std::istream& is, Code& t) {
    is >> t;
  }
};

struct CodeWriter {
  void operator()(std::ostream& os, const Code& t) {
    os << t;
  }
};

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

auto& input_header = Heading::create("More Input Formats:");

auto& code_arg = ValueArg<Code, CodeReader, CodeWriter>::create("code")
                 .description("Input code directly");


const auto circuit_dir = string(getenv("HOME")) + "/dev/circuits/";

void print_state(RegSet regs, SymState& state);

void build_circuit(const x64asm::Instruction& instr, SymState& start) {
  ComboHandler ch;

  auto opcode = instr.get_opcode();
  stringstream ss;
  ss << opcode;
  auto opcode_str = ss.str();
  auto candidate_file = circuit_dir + opcode_str + ".s";

  // base instruction: use handwritten formula
  if (find(instr_cat_base_.begin(), instr_cat_base_.end(), opcode) != instr_cat_base_.end()) {
    ch.build_circuit(instr, start);
    if (ch.has_error()) {
      Console::error() << "Symbolic execution failed: " << ch.error() << endl;
    }
    return;
  }

  // we have a program for this instruction
  else if (filesystem::exists(candidate_file)) {
    // read program
    ifstream file(candidate_file);
    TUnit t;
    file >> t;
    auto specgen_instr = get_instruction(opcode);

    // build formula for program
    SymState tmp(opcode_str);
    auto code = t.get_code();
    assert(code[0].get_opcode() == Opcode::LABEL_DEFN);
    assert(code[code.size() - 1].get_opcode() == Opcode::RET);
    for (size_t i = 1; i < code.size()-1; i++) {
      build_circuit(code[i], tmp);
    }

    cout << "--------------" << endl << endl;
    print_state(specgen_instr.maybe_write_set(), tmp);
    cout << "--------------" << endl << endl;

    // rename variables in the tmp state to the values in start

    // update the start state with the circuits from tmp
    
  }

  // unknown instruction
  else {
    Console::error() << "Unknown instruction '" << instr << "'." << endl;
  }
}

void print_state(RegSet regs, SymState& state) {
  SymPrettyVisitor print(Console::msg());

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
    // if (!has_changed(gp_it, val)) continue;
    Console::msg() << out_padded(fullreg, pad) << ": ";
    print(val);
    Console::msg() << endl;
    printed = true;
  }
  if (printed) cout << endl;
  printed = false;
  for (auto sse_it = rs.sse_begin(); sse_it != rs.sse_end(); ++sse_it) {
    auto fullreg = Constants::ymms()[*sse_it];
    auto val = state.lookup(fullreg);
    // if (!has_changed(sse_it, val)) continue;
    Console::msg() << out_padded(fullreg, pad) << ": ";
    print(val);
    Console::msg() << endl;
    printed = true;
  }
  if (printed) cout << endl;
  printed = false;
  for (auto flag_it = rs.flags_begin(); flag_it != rs.flags_end(); ++flag_it) {
    SymBool val = state[*flag_it];
    // if (!has_changed(flag_it, val)) continue;
    Console::msg() << out_padded(*flag_it, pad) << ": ";
    print(val);
    Console::msg() << endl;
    printed = true;
  }
  if (printed) cout << endl;
  printed = false;

  Console::msg() << "sigfpe :     ";
  print(state.sigfpe);
  Console::msg() << endl;
  Console::msg() << "sigbus :     ";
  print(state.sigbus);
  Console::msg() << endl;
  Console::msg() << "sigsegv:     ";
  print(state.sigsegv);
  Console::msg() << endl;
}

int main(int argc, char** argv) {
  // not actually required here
  target_arg.required(false);

  CommandLineConfig::strict_with_convenience(argc, argv);

  if (!code_arg.has_been_provided() && !target_arg.has_been_provided()) {
    Console::error() << "Either --code or --target required." << endl;
  }

  if (code_arg.has_been_provided() && target_arg.has_been_provided()) {
    Console::error() << "At most one of --code and --target can be provided." << endl;
  }

  FunctionsGadget aux_fxns;
  TargetGadget target(aux_fxns, false);
  Code code = target.get_code();
  if (code_arg.has_been_provided()) {
    code = code_arg.value();
  }
  auto instr = code.size() > 1 ? code[1] : code[0];

  Console::msg() << "Instruction:       " << instr << endl;
  Console::msg() << "Opcode:            " << instr.get_opcode() << endl;
  Console::msg() << "Maybe written to:  " << instr.maybe_write_set() << endl;
  Console::msg() << endl;

  SymState state("", true);
  build_circuit(instr, state);

  Console::msg() << "Circuits:" << endl;
  Console::msg() << endl;

  print_state(instr.maybe_write_set(), state);
}
