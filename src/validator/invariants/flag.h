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

#ifndef STOKE_SRC_VALIDATOR_INVARIANT_FLAG_H
#define STOKE_SRC_VALIDATOR_INVARIANT_FLAG_H

#include "src/validator/handler.h"
#include "src/validator/handlers/conditional_handler.h"
#include "src/validator/invariant.h"


namespace stoke {

class FlagInvariant : public Invariant {

public:
  using Invariant::check;

  FlagInvariant(const x64asm::Instruction& instr, bool is_rewrite, bool fallthrough) {
    fallthrough_ = fallthrough;
    is_rewrite_ = is_rewrite_;

    if (instr.is_jump()) {
      // we always jump (never fallthrough)
      predicate_ == "";
      fallthrough_ = !fallthrough_;
    } else if (instr.is_jcc()) {
      // we sometimes jump
      std::string opcode = Handler::get_opcode(instr);
      predicate_ = opcode.substr(3, opcode.size() - 3);
    } else {
      // we never jump (always fallthrough)
      predicate_ == "";
    }
  }

  SymBool operator()(const SymState& left, const SymState& right) const {
    if (predicate_ == "") {
      // fallthrough is aways taken
      if (fallthrough_)
        return SymBool::_true();
      else {
        assert(false);  // I don't think this case should happen irl -- BRC
        return SymBool::_false();
      }
    }

    auto& state = is_rewrite_ ? right : left;
    auto pred = ConditionalHandler::condition_predicate(predicate_, state);
    if (fallthrough_)
      pred = !pred;
    return pred;
  }

  std::ostream& write(std::ostream& os) const {
    return os;
  }

private:

  std::string predicate_;
  bool fallthrough_;
  bool is_rewrite_;

};

} // namespace stoke



#endif
