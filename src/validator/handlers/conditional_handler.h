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


#ifndef STOKE_SRC_VALIDATOR_HANDLER_CONDITIONAL_HANDLER_H
#define STOKE_SRC_VALIDATOR_HANDLER_CONDITIONAL_HANDLER_H

#include <map>

#include "src/validator/handler.h"

namespace stoke {

/** Supports lea[wlq] */
class ConditionalHandler : public Handler {

public:
  SupportLevel get_support(const x64asm::Instruction& instr);

  void build_circuit(const x64asm::Instruction& instr, SymState& start);

  std::vector<std::string> full_support_opcodes() {
    std::vector<std::string> opcodes;

    std::vector<std::string> suffixes = {"a", "nbe", "ae", "nb", "nc", "b", "c", "nae",
                                         "be", "na", "e", "z", "g", "nle", "ge", "nl",
                                         "l", "nge", "le", "ng", "ne", "nz", "no", "np",
                                         "po", "ns", "o", "p", "pe", "s"
                                        };
    std::vector<std::string> suffix2 =  {"b", "w", "l", "q"};
 
    for(auto y : suffixes)
      opcodes.push_back("set"+y);

    for(auto y : suffixes)
      for(auto z : suffix2)
        opcodes.push_back("cmov"+y+z);



    return opcodes;
  }

  /** Returns the condition associated with an instruction */
  static SymBool condition_predicate(const std::string& cc, const SymState& ss);

};

} //namespace stoke


#endif
