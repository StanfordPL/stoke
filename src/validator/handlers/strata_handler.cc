// Copyright 2013-2015 Stanford University
//
// Licensed under the Apache License, Version 2.0 (the License);
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an AS IS BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.


#include "src/validator/handlers/strata_handler.h"
#include "src/tunit/tunit.h"
#include "src/specgen/specgen.h"

#define BOOST_NO_CXX11_SCOPED_ENUMS
#include <boost/filesystem.hpp>

using namespace std;
using namespace stoke;
using namespace x64asm;
using namespace cpputil;
using namespace boost;

namespace {

/** A class to rename variables in symbolic formulas. */
class SymVarRenamer : public SymTransformVisitor {
public:
  SymVarRenamer(const function<SymBitVectorAbstract*(SymBitVectorVar*)>& bv_rename, const function<SymBoolAbstract*(SymBoolVar*)>& b_rename) : bv_rename_(bv_rename), b_rename_(b_rename) {}

  SymBitVectorAbstract* visit(const SymBitVectorVar * const bv) {
    return bv_rename_((SymBitVectorVar*)bv);
  }

  SymBoolAbstract* visit(const SymBoolVar * const bv) {
    return b_rename_((SymBoolVar*)bv);
  }

  const function<SymBitVectorAbstract*(SymBitVectorVar*)> bv_rename_;
  const function<SymBoolAbstract*(SymBoolVar*)> b_rename_;
};

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

} // end namespace

Handler::SupportLevel StrataHandler::get_support(const x64asm::Instruction& instr) {

  if (!operands_supported(instr)) {
    return Handler::NONE;
  }

  auto opcode = instr.get_opcode();
  stringstream ss;
  ss << opcode;
  auto opcode_str = ss.str();
  auto candidate_file = strata_path_ + "/" + opcode_str + ".s";

  if (filesystem::exists(candidate_file)) {
    return (Handler::SupportLevel)(Handler::BASIC | Handler::CEG);
  }

  return Handler::NONE;

}

void StrataHandler::build_circuit(const x64asm::Instruction& instr, SymState& final) {

  auto opcode = instr.get_opcode();
  stringstream ss;
  ss << opcode;
  auto opcode_str = ss.str();
  auto candidate_file = strata_path_ + "/" + opcode_str + ".s";

  // Sanity check for support
  error_ = "";

  if (!get_support(instr)) {
    error_ = "Instruction not supported.";
    return;
  }

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

  // take a formula for specgen_instr in state tmp, and convert it to one that
  // makes sense for instr in state
  SymVarRenamer translate_circuit([&instr, &specgen_instr, &start, &opcode_str](SymBitVectorVar* var) -> SymBitVectorAbstract* {
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
    assert(false);
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
    assert(false);
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

vector<string> StrataHandler::full_support_opcodes() {
  vector<string> res;
  filesystem::directory_iterator itr(strata_path_);
  filesystem::directory_iterator end_itr;
  for (; itr != end_itr; itr++) {
    auto file = itr->path().filename().string();
    assert(file.size() > 2);
    auto opcode_str = file.substr(0, file.size()-2);
    Opcode opcode;
    if (!(stringstream(opcode_str) >> opcode)) {
      assert(false);
      continue;
    }
    res.push_back(get_opcode(opcode));
  }
  return res;
}
