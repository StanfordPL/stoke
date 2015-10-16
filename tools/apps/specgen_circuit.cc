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
#include "tools/gadgets/target.h"
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
using namespace boost::filesystem;

#define ASSERT(s) do { if (!(s)) { Console::error() << "Failed at in " << __FILE__ << ":" << __LINE__ << std::endl; } } while (false)

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

class SymRenamer : public SymTransformVisitor {
public:
  SymRenamer(const function<SymBitVectorAbstract*(SymBitVectorVar*)>& bv_rename, const function<SymBoolAbstract*(SymBoolVar*)>& b_rename) : bv_rename_(bv_rename), b_rename_(b_rename) {}

  SymBitVectorAbstract* visit(const SymBitVectorVar * const bv) {
    return bv_rename_((SymBitVectorVar*)bv);
  }

  SymBoolAbstract* visit(const SymBoolVar * const bv) {
    return b_rename_((SymBoolVar*)bv);
  }

  const function<SymBitVectorAbstract*(SymBitVectorVar*)> bv_rename_;
  const function<SymBoolAbstract*(SymBoolVar*)> b_rename_;
};

const auto circuit_dir = string(getenv("HOME")) + "/dev/circuits/";

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

/** Take the i-th operand (assumed to be a GP register) and return it's 64 bit variant. */
R64 get_r64_operand(const Instruction& instr, size_t i) {
  if (instr.type(i) == Type::RH) {
    size_t idx = instr.get_operand<Rh>(i) - 4;
    return Constants::r64s()[idx];
  }
  return instr.get_operand<R64>(i);
};

/**
 * Given two instructions with the same opcode, and a register from the context
 * of one of these instructions, translate it into a register in the context
 * of instr_to.
 */
Operand translate_gp_register(const R& operand_from, const Instruction& instr_from, const Instruction& instr_to) {
  for (size_t i = 0; i < instr_from.arity(); i++) {
    if (!instr_from.get_operand<Operand>(i).is_gp_register()) continue;
    // direct match?
    if (operand_from == instr_from.get_operand<Operand>(i)) {
      return instr_to.get_operand<Operand>(i);
    }
    // same 64bit reg?
    size_t idx = operand_from;
    auto operand_from_r64 = Constants::r64s()[idx];
    if (operand_from.type() == Type::RH) {
      operand_from_r64 = Constants::r64s()[idx - 4];
    }
    if (operand_from_r64 == get_r64_operand(instr_from, i)) {
      return get_r64_operand(instr_to, i);
    }
  }
  // no translation necessary
  return operand_from;
};

/** Like translate_gp_register, but for sse registers */
Operand translate_sse_register(const Sse& operand_from, const Instruction& instr_from, const Instruction& instr_to) {
  for (size_t i = 0; i < instr_from.arity(); i++) {
    if (!instr_from.get_operand<Operand>(i).is_sse_register()) continue;
    // direct match?
    if (operand_from == instr_from.get_operand<Operand>(i)) {
      return instr_to.get_operand<Operand>(i);
    }
    // same ymm reg?
    if (Constants::ymms()[(size_t) operand_from] == instr_from.get_operand<Ymm>(i)) {
      return instr_to.get_operand<Ymm>(i);
    }
  }
  // no translation necessary
  return operand_from;
};

void build_circuit(const x64asm::Instruction& instr, SymState& final) {
  ComboHandler ch;

  auto opcode = instr.get_opcode();
  stringstream ss;
  ss << opcode;
  auto opcode_str = ss.str();
  auto candidate_file = circuit_dir + opcode_str + ".s";

  // base instruction: use handwritten formula
  if (find(instr_cat_base_.begin(), instr_cat_base_.end(), opcode) != instr_cat_base_.end()) {
    ch.build_circuit(instr, final);
    if (ch.has_error()) {
      Console::error() << "Symbolic execution failed: " << ch.error() << endl;
    }
    return;
  }

  // we have a program for this instruction
  else if (filesystem::exists(candidate_file)) {
    // keep a copy of the start state
    SymState start = final;

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

    // cout << "----------" << endl;
    // print_state(specgen_instr.maybe_write_set(), tmp);
    // cout << "----------" << endl;

    // take a formula for specgen_instr in state tmp, and convert it to one that
    // makes sense for instr in state
    SymRenamer translate_circuit([&instr, &specgen_instr, &start, &opcode_str](SymBitVectorVar* var) -> SymBitVectorAbstract* {
      auto name = var->name_;
      if (name.size() <= opcode_str.size() || name.substr(name.size() - opcode_str.size()) != opcode_str) {
        // no renaming for variable of unfamiliar names
        return var;
      }
      auto real_name = name.substr(0, name.size() - opcode_str.size() - 1);
      R64 gp = Constants::rax();
      Ymm ymm = Constants::ymm0();
      if (stringstream(real_name) >> gp) {
        auto translated_reg = translate_gp_register((R)gp, specgen_instr, instr);
        return (SymBitVectorAbstract*)start.lookup(translated_reg).ptr;
      } else if (stringstream(real_name) >> ymm) {
        auto translated_reg = translate_sse_register((Sse)ymm, specgen_instr, instr);
        return (SymBitVectorAbstract*)start.lookup(translated_reg).ptr;
      }
      ASSERT(false);
      return NULL;
    }, [&start, &opcode_str](SymBoolVar* var) -> SymBoolAbstract* {
      auto name = var->name_;
      if (name.size() <= opcode_str.size() || name.substr(name.size() - opcode_str.size()) != opcode_str) {
        // no renaming for variable of unfamiliar names
        return var;
      }
      auto real_name = name.substr(0, name.size() - opcode_str.size() - 1);
      Eflags reg = Constants::eflags_cf();
      if (stringstream(real_name) >> reg) {
        return (SymBoolAbstract*)start[reg].ptr;
      }
      ASSERT(false);
      return NULL;
    });

    // loop over all live outs and update the final state
    auto liveouts = instr.maybe_write_set();
    for (auto iter = liveouts.gp_begin(); iter != liveouts.gp_end(); ++iter) {
      // look up live out in tmp state (after translating operators as necessary)
      auto val = tmp[translate_gp_register(*iter, instr, specgen_instr)];
      // rename variables in the tmp state to the values in start
      auto val_renamed = translate_circuit(val);
      // update the start state with the circuits from tmp
      final.set(*iter, val_renamed, false, true);
    }
    for (auto iter = liveouts.sse_begin(); iter != liveouts.sse_end(); ++iter) {
      // look up live out in tmp state (after translating operators as necessary)
      auto val = tmp[translate_sse_register(*iter, instr, specgen_instr)];
      // rename variables in the tmp state to the values in start
      auto val_renamed = translate_circuit(val);
      // update the start state with the circuits from tmp
      final.set(*iter, val_renamed, false, true);
    }
    for (auto iter = liveouts.flags_begin(); iter != liveouts.flags_end(); ++iter) {
      // look up live out in tmp state (no translation necessary for flags)
      auto val = tmp[*iter];
      // rename variables in the tmp state to the values in start
      auto val_renamed = translate_circuit(val);
      // update the start state with the circuits from tmp
      final.set(*iter, val_renamed);
    }
  }

  // unknown instruction
  else {
    Console::error() << "Unknown instruction '" << instr << "'." << endl;
  }
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
    // if (!has_changed(gp_it, val)) continue;
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
    // if (!has_changed(sse_it, val)) continue;
    Console::msg() << out_padded(fullreg, pad) << ": ";
    print_circuit(val);
    Console::msg() << endl;
    printed = true;
  }
  if (printed) cout << endl;
  printed = false;
  for (auto flag_it = rs.flags_begin(); flag_it != rs.flags_end(); ++flag_it) {
    SymBool val = state[*flag_it];
    // if (!has_changed(flag_it, val)) continue;
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
