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
#include "src/specgen/support.h"
#include "src/validator/handlers.h"
#include "src/symstate/simplify.h"
#include "src/ext/cpputil/include/io/console.h"
#include "src/validator/error.h"

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

/** Take a gp register and convert it into a 64 bit register. */
R64 r_to_r64(const R& reg) {
  size_t idx = reg;
  if (reg.type() == Type::RH) {
    return Constants::r64s()[idx - 4];
  }
  return Constants::r64s()[idx];
}
/** Take an sse register and convert it into a 256 bit register. */
Ymm sse_to_ymm(const Sse& reg) {
  size_t idx = reg;
  return Constants::ymms()[idx];
}

/**
 * Given two instructions with the same opcode, and a register from the context
 * of one of these instructions, translate it into a register in the context
 * of instr_to (translates operands, but leaves other registers).
 */
const R translate_gp_register(const R& operand_from, const Instruction& instr_from, const Instruction& instr_to) {
  for (size_t i = 0; i < instr_from.arity(); i++) {
    // direct match?
    if (operand_from == instr_from.get_operand<Operand>(i)) {
      return instr_to.get_operand<R>(i);
    }
    // same full register?
    if (instr_from.get_operand<Operand>(i).is_gp_register()) {
      if (r_to_r64(operand_from) == r_to_r64(instr_from.get_operand<R>(i))) {
        return r_to_r64(instr_to.get_operand<R>(i));
      }
    }
  }
  // no translation necessary
  return operand_from;
};
const Sse translate_sse_register(const Sse& operand_from, const Instruction& instr_from, const Instruction& instr_to) {
  for (size_t i = 0; i < instr_from.arity(); i++) {
    // direct match?
    if (operand_from == instr_from.get_operand<Operand>(i)) {
      return instr_to.get_operand<Sse>(i);
    }
    // same full register?
    if (instr_from.get_operand<Operand>(i).is_sse_register()) {
      if (sse_to_ymm(operand_from) == sse_to_ymm(instr_from.get_operand<Sse>(i))) {
        return sse_to_ymm(instr_to.get_operand<Sse>(i));
      }
    }
  }
  // no translation necessary
  return operand_from;
};

/**
 * Like translate_register, but the operand_from is a ymm/r64 register that may
 * correspond to one of the operands.
 */
Operand translate_max_register(const Operand& operand_from, const Instruction& instr_from, const Instruction& instr_to) {
  for (size_t i = 0; i < instr_from.arity(); i++) {
    // same 64 bit register?
    if (operand_from.type() == Type::R_64 || operand_from.type() == Type::RAX) {
      if (operand_from == r_to_r64(instr_from.get_operand<R>(i))) {
        return r_to_r64(instr_to.get_operand<R>(i));
      }
    } else

      // same 256 bit register?
      if (operand_from.type() == Type::YMM) {
        if (operand_from == sse_to_ymm(instr_from.get_operand<Sse>(i))) {
          return sse_to_ymm(instr_to.get_operand<Sse>(i));
        }
      }
  }
  // no translation necessary
  return operand_from;
};


// #define DEBUG_STRATA_HANDLER
#ifdef DEBUG_STRATA_HANDLER

void print_state(SymState& state, RegSet rs) {
  SymPrettyVisitor pretty(cout);

  auto print = [&pretty](const auto c) {
    pretty(c);
  };

  // print symbolic state
  bool printed = false;
  rs = rs & ((RegSet::all_gps() | RegSet::all_ymms()) +
             Constants::eflags_cf() +
             Constants::eflags_sf() +
             Constants::eflags_zf() +
             Constants::eflags_of() +
             Constants::eflags_pf() +
             Constants::eflags_af());
  for (auto gp_it = rs.gp_begin(); gp_it != rs.gp_end(); ++gp_it) {
    auto widened = r_to_r64(*gp_it);
    auto val = state.lookup(widened);
    Console::msg() << widened << "/" << (*gp_it) << ": ";
    print(val);
    Console::msg() << endl;
    printed = true;
  }
  if (printed) cout << endl;
  printed = false;
  for (auto sse_it = rs.sse_begin(); sse_it != rs.sse_end(); ++sse_it) {
    auto val = state.lookup(*sse_it);
    Console::msg() << (*sse_it) << ": ";
    print(val);
    Console::msg() << endl;
    printed = true;
  }
  if (printed) cout << endl;
  printed = false;
  for (auto flag_it = rs.flags_begin(); flag_it != rs.flags_end(); ++flag_it) {
    SymBool val = state[*flag_it];
    Console::msg() << (*flag_it) << ": ";
    print(val);
    Console::msg() << endl;
    printed = true;
  }
  if (printed) cout << endl;
  printed = false;
  // Console::msg() << "sigfpe  : ";
  // print(state.sigfpe);
  // Console::msg() << endl;
  // Console::msg() << "sigbus  : ";
  // print(state.sigbus);
  // Console::msg() << endl;
  // Console::msg() << "sigsegv : ";
  // print(state.sigsegv);
  // Console::msg() << endl;
}
#endif

} // end namespace

bool is_register_only(Opcode opcode) {
  Instruction instr(opcode);
  for (size_t j = 0; j < instr.arity(); j++) {
    switch (instr.type(j)) {
    case x64asm::Type::RH:
    case x64asm::Type::AL:
    case x64asm::Type::CL:
    case x64asm::Type::R_8:
    case x64asm::Type::AX:
    case x64asm::Type::DX:
    case x64asm::Type::R_16:
    case x64asm::Type::EAX:
    case x64asm::Type::R_32:
    case x64asm::Type::RAX:
    case x64asm::Type::R_64:
    case x64asm::Type::XMM_0:
    case x64asm::Type::XMM:
    case x64asm::Type::YMM:

    // also allow some non-register but fixed operands
    case x64asm::Type::ZERO:
    case x64asm::Type::ONE:
    case x64asm::Type::THREE:
      break;
    default:
      return false;
    }
  }
  return true;
}

bool is_register_type(const Type& t) {
  switch (t) {
  case x64asm::Type::RH:
  case x64asm::Type::AL:
  case x64asm::Type::CL:
  case x64asm::Type::R_8:
  case x64asm::Type::AX:
  case x64asm::Type::DX:
  case x64asm::Type::R_16:
  case x64asm::Type::EAX:
  case x64asm::Type::R_32:
  case x64asm::Type::RAX:
  case x64asm::Type::R_64:
  case x64asm::Type::XMM_0:
  case x64asm::Type::XMM:
  case x64asm::Type::YMM:
    break;
  default:
    return false;
  }
  return true;
}

bool is_imm_type(const Type& t) {
  switch (t) {
  case x64asm::Type::IMM_8:
  case x64asm::Type::IMM_16:
  case x64asm::Type::IMM_32:
  case x64asm::Type::IMM_64:
    return true;
  default:
    break;
  }
  return false;
}

bool is_sse_type(const Type& t) {
  switch (t) {
  case x64asm::Type::XMM_0:
  case x64asm::Type::XMM:
  case x64asm::Type::YMM:
    return true;
  default:
    break;
  }
  return false;
}

bool is_sse_mem_type(const Type& t) {
  switch (t) {
  case x64asm::Type::M_32:
  case x64asm::Type::M_64:
    return true;
  default:
    break;
  }
  return false;
}

bool both_or_none_rh(const Type& t0, const Type& t1) {
  if (t0 == Type::RH || t1 == Type::RH) {
    return t0 == t1;
  }
  return true;
}

void StrataHandler::init() {

  reg_only_alternative_.clear();

  // map from mnenomic to all register-only instructions
  map<string, vector<Opcode>> str_to_opcode;
  for (auto i = 0; i < X64ASM_NUM_OPCODES; ++i) {
    auto opcode = (Opcode)i;
    string text = opcode_write_att(opcode);

    if (is_register_only(opcode)) {
      auto& vector = str_to_opcode[text];
      vector.push_back(opcode);
    }
  }

  // first map duplicates to their _1 version
  for (auto i = 0; i < X64ASM_NUM_OPCODES; ++i) {
    auto opcode = (Opcode)i;
    if (specgen_is_duplicate(opcode)) {
      string text = opcode_write_att(opcode);
      auto& options = str_to_opcode[text];
      Instruction instr(opcode);
      for (auto& option : options) {
        Instruction alt(option);
        if (alt.arity() != instr.arity()) continue;
        bool all_same = true;
        for (size_t j = 0; j < instr.arity(); j++) {
          if (instr.type(j) != alt.type(j)) {
            all_same = false;
            break;
          }
        }

        if (all_same) {
          reg_only_alternative_[opcode] = option;
          break;
        }
      }
    }
  }

  // now determine for every instruction the corresponding reg-only opcode
  for (auto i = 0; i < X64ASM_NUM_OPCODES; ++i) {
    auto opcode = (Opcode)i;

    if (is_register_only(opcode)) continue;

    string text = opcode_write_att(opcode);
    auto& options = str_to_opcode[text];
    Instruction instr(opcode);

    // check if there is an opcode with the same width operands
    bool found = false;
    for (auto& option : options) {
      Instruction alt(option);
      if (alt.arity() != instr.arity()) continue;
      bool same_widths = true;
      for (size_t j = 0; j < instr.arity(); j++) {
        auto notsame = bit_width_of_type(instr.type(j)) != bit_width_of_type(alt.type(j));
        auto rhok = both_or_none_rh(instr.type(j), alt.type(j));
        if (notsame || !rhok) {
          same_widths = false;
          break;
        }
      }

      if (same_widths) {
        found = true;
        // cout << opcode << "->" << option << endl;
        reg_only_alternative_[opcode] = option;
        break;
      }
    }

    if (!found) {
      // check for an imm instruction that has one with larger width
      for (auto& option : options) {
        Instruction alt(option);
        if (alt.arity() != instr.arity()) continue;
        bool larger_widths = true;
        for (size_t j = 0; j < instr.arity(); j++) {
          bool larger = bit_width_of_type(instr.type(j)) <= bit_width_of_type(alt.type(j));
          bool same = bit_width_of_type(instr.type(j)) == bit_width_of_type(alt.type(j));
          bool imm_type = is_imm_type(instr.type(j));
          auto rhok = both_or_none_rh(instr.type(j), alt.type(j));
          if (!(same || (larger && imm_type)) || !rhok) {
            larger_widths = false;
            break;
          }
        }

        if (larger_widths) {
          found = true;
          // cout << opcode << " -> " << option << endl;
          // reg_only_alternative_[opcode] = option;
          break;
        }
      }
    }

    if (!found) {
      // check for an float memory instruction
      for (auto& option : options) {
        Instruction alt(option);
        if (alt.arity() != instr.arity()) continue;
        bool larger_widths = true;
        for (size_t j = 0; j < instr.arity(); j++) {
          bool same = bit_width_of_type(instr.type(j)) == bit_width_of_type(alt.type(j));
          bool ymm_type = is_sse_type(alt.type(j));
          bool float_mem_type = is_sse_mem_type(instr.type(j));
          auto rhok = both_or_none_rh(instr.type(j), alt.type(j));
          if (!(same || (ymm_type && float_mem_type)) || !rhok) {
            larger_widths = false;
            break;
          }
        }

        if (larger_widths) {
          found = true;
          // cout << opcode << " -> " << option << endl;
          // reg_only_alternative_[opcode] = option;
          break;
        }
      }
    }

    if (!found) {
      if (!specgen_is_system(opcode) &&
          !specgen_is_float(opcode) &&
          !specgen_is_jump(opcode) &&
          !specgen_is_crypto(opcode) &&
          !specgen_is_sandbox_unsupported(opcode)) {
        // cout << opcode << endl;
      }
    }
  }

  // for (auto i = 0; i < X64ASM_NUM_OPCODES; ++i) {
  //   auto opcode = (Opcode)i;
  //   if (reg_only_alternative_.find(opcode) != reg_only_alternative_.end()) {
  //     //cout << opcode << " -> " << reg_only_alternative_[opcode] << endl;
  //     cout << "-> " << opcode << endl;
  //     cout << "   " << reg_only_alternative_[opcode] << endl;
  //   }
  // }
}

bool StrataHandler::is_supported(const x64asm::Opcode& opcode) {
  stringstream ss;
  ss << opcode;
  auto opcode_str = ss.str();
  auto candidate_file = strata_path_ + "/" + opcode_str + ".s";

  // we have a learned circuit
  if (filesystem::exists(candidate_file)) {
    return true;
  }

  // can we convert this into a register only instruction?
  if (reg_only_alternative_.find(opcode) != reg_only_alternative_.end()) {
    auto alt = reg_only_alternative_[opcode];
    if (specgen_is_base(alt)) return true;
    return is_supported(alt);
  }

  return false;
}

Handler::SupportLevel StrataHandler::get_support(const x64asm::Instruction& instr) {
  if (!operands_supported(instr)) {
    return Handler::NONE;
  }
  auto opcode = instr.get_opcode();
  if (is_supported(opcode)) {
    return (Handler::SupportLevel)(Handler::BASIC | Handler::CEG | Handler::ANALYSIS);
  }
  return Handler::NONE;
}

void StrataHandler::build_circuit(const x64asm::Instruction& instr, SymState& final) {
  ComboHandler ch_;
  SymTypecheckVisitor tc;

  SymSimplify simplifier;

  auto opcode = instr.get_opcode();
  stringstream ss;
  ss << opcode;
  auto opcode_str = ss.str();
  auto candidate_file = strata_path_ + "/" + opcode_str + ".s";

  error_ = "";

  if (specgen_is_base(opcode) || opcode == Opcode::CALL_LABEL) {
    ch_.build_circuit(instr, final);
    if (ch_.has_error()) {
      error_ = "ComboHandler encountered an error: " + ch_.error();
      return;
    }
#ifdef DEBUG_STRATA_HANDLER
    cout << "-------------------------------------" << endl;
    cout << "Getting base circuit for " << instr << endl << endl;
    cout << "Final state:" << endl;
    print_state(final, instr.maybe_write_set());
    cout << "-------------------------------------" << endl;
#endif
    return;
  }

  // keep a copy of the start state
  SymState start = final;

  // handle imm instructions
  if (reg_only_alternative_.find(opcode) != reg_only_alternative_.end()) {
    // get circuit for register only opcode
    Instruction alt = get_instruction(reg_only_alternative_[opcode]);
    ch_.build_circuit(alt, start);
    if (ch_.has_error()) {
      error_ = "StrataHandler encountered an error: " + ch_.error();
      return;
    }
  }

  auto typecheck = [&tc, this](auto circuit, size_t exptected_size) {
    auto actual = tc(circuit);
    if (tc.has_error()) {
      error_ = "Encountered error during type-checking of: " + tc.error();
      return false;
    }
    if (actual != exptected_size) {
      stringstream ss;
      ss << "Expected " << exptected_size << " bits, but got " << actual << " instead for ";
      SymPrettyVisitor pretty(ss);
      pretty(circuit);
      ss << ".";
      error_ = ss.str();
      return false;
    }
    return true;
  };

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

#ifdef DEBUG_STRATA_HANDLER
  cout << "=====================================" << endl;
  cout << "Computing circuit for " << instr << endl << endl;
  cout << t.get_code() << endl << endl;
  cout << "Initial state:" << endl;
  print_state(start, instr.maybe_write_set());
  cout << "State for specgen instruction: " << specgen_instr << ":" << endl;
  print_state(tmp, specgen_instr.maybe_write_set());
#endif

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
      auto translated_reg = translate_max_register(gp, specgen_instr, instr);
      return (SymBitVectorAbstract*)start.lookup(translated_reg).ptr;
    } else if (stringstream(real_name) >> ymm) {
      auto translated_reg = translate_max_register(ymm, specgen_instr, instr);
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
  auto liveouts = specgen_instr.maybe_write_set();
  if (opcode_str.size() > 4 && opcode_str.substr(0, 4) == "xadd") {
    // for xadd, we need to hard-code the order of registers
    auto op0 = specgen_instr.get_operand<R>(0);
    auto op1 = specgen_instr.get_operand<R>(1);
    if (opcode == Opcode::XADD_R32_R32) {
      // 64 bit extension
      op0 = Constants::r64s()[(size_t)op0];
      op1 = Constants::r64s()[(size_t)op1];
    }
    for (auto iter : {
           op1, op0
         }) {
      auto iter_translated = translate_gp_register(iter, specgen_instr, instr);
      // look up live out in tmp state
      auto val = tmp[iter];
      if (!typecheck(val, (iter).size())) return;
      // rename variables in the tmp state to the values in start
      auto val_renamed = simplifier.simplify(translate_circuit(val));
      if (!typecheck(val_renamed, (iter).size())) return;
      // update the start state with the circuits from tmp
      final.set(iter_translated, val_renamed, false, true);
    }
  } else {
    for (auto iter = liveouts.gp_begin(); iter != liveouts.gp_end(); ++iter) {
      auto iter_translated = translate_gp_register(*iter, specgen_instr, instr);
      // look up live out in tmp state
      auto val = tmp[*iter];
#ifdef DEBUG_STRATA_HANDLER
      cout << "Register        -> " << (*iter) << endl;
      cout << "  translates to => " << iter_translated << endl;
#endif
      if (!typecheck(val, (*iter).size())) return;
      // rename variables in the tmp state to the values in start
      auto val_renamed = simplifier.simplify(translate_circuit(val));
#ifdef DEBUG_STRATA_HANDLER
      cout << "Value is               -> " << simplifier.simplify(val) << endl;
      cout << "  after renaming it is => " << simplifier.simplify(val_renamed) << endl;
      cout << endl;
#endif
      if (!typecheck(val_renamed, (*iter).size())) return;
      // update the start state with the circuits from tmp
      final.set(iter_translated, val_renamed, false, true);
    }
  }
  for (auto iter = liveouts.sse_begin(); iter != liveouts.sse_end(); ++iter) {
    auto iter_translated = translate_sse_register(*iter, specgen_instr, instr);
    // look up live out in tmp state (after translating operators as necessary)
    auto val = tmp[*iter];
    if (!typecheck(val, (*iter).size())) return;
    // rename variables in the tmp state to the values in start
    auto val_renamed = simplifier.simplify(translate_circuit(val));
    if (!typecheck(val_renamed, (*iter).size())) return;
    // update the start state with the circuits from tmp
    final.set(iter_translated, val_renamed, false, true);
  }
  for (auto iter = liveouts.flags_begin(); iter != liveouts.flags_end(); ++iter) {
    auto iter_translated = *iter;
    // look up live out in tmp state (no translation necessary for flags)
    auto val = tmp[*iter];
    if (!typecheck(val, 1)) return;
    // rename variables in the tmp state to the values in start
    auto val_renamed = simplifier.simplify(translate_circuit(val));
    if (!typecheck(val_renamed, 1)) return;
    // update the start state with the circuits from tmp
    final.set(iter_translated, val_renamed);
  }

#ifdef DEBUG_STRATA_HANDLER
  cout << "Final state" << endl;
  print_state(final, instr.maybe_write_set());
  cout << "=====================================" << endl;
#endif
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
