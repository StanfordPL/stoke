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


#ifndef STOKE_SRC_VALIDATOR_HANDLER_STRATA_HANDLER_H
#define STOKE_SRC_VALIDATOR_HANDLER_STRATA_HANDLER_H

#include <map>

#include "src/validator/handler.h"
#include "src/validator/handlers/combo_handler.h"
#include "src/symstate/typecheck_visitor.h"
#include "src/symstate/simplify.h"

namespace stoke {

enum SupportReason : int32_t {
  BASESET = 0,
  LEARNED = 1,
  GENERALIZE_SAME = 2,
  GENERALIZE_EXTEND = 3,
  GENERALIZE_SHRINK = 4,
  IMM8 = 5,
  NONE = -1
};

/** Uses the strata circuits found in a given directory. */
class StrataHandler : public Handler {

public:

  StrataHandler(const std::string& strata_path, const bool simplify = true) :
    strata_path_(strata_path), simplify_(simplify) {
    init();
  }

  SupportLevel get_support(const x64asm::Instruction& instr);

  bool is_supported(const x64asm::Opcode& opcode);

  SupportReason support_reason(const x64asm::Opcode& opcode);

  void build_circuit(const x64asm::Instruction& instr, SymState& start);

  int used_for(const x64asm::Opcode& op);

  std::vector<x64asm::Opcode> full_support_opcodes();

private:

  void init();

  const std::string& strata_path_;

  /** Should circuits be simplified on the fly. */
  const bool simplify_;

  /** A map that gives the equivalent, register-only variant for an opcode. */
  std::map<x64asm::Opcode, x64asm::Opcode> reg_only_alternative_;
  std::map<x64asm::Opcode, x64asm::Opcode> reg_only_alternative_duplicate_;
  std::map<x64asm::Opcode, x64asm::Opcode> reg_only_alternative_mem_reduce_;
  std::map<x64asm::Opcode, x64asm::Opcode> reg_only_alternative_extend_;

  /** The regular STOKE handler for the base set. */
  ComboHandler ch_;

  /** A type-checker. */
  SymTypecheckVisitor tc_;

  /** A simplifier. */
  SymSimplify simplifier_;

  /** A cache for learned formulas (to avoid having to load them from disk over and over again). */
  std::map<x64asm::Opcode, SymState> formula_cache_;

};

} //namespace stoke


#endif
