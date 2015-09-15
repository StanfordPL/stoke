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


#ifndef STOKE_SRC_VALIDATOR_HANDLER_PSEUDO_HANDLER_H
#define STOKE_SRC_VALIDATOR_HANDLER_PSEUDO_HANDLER_H

#include <map>

#include "src/validator/handler.h"

namespace stoke {

/** Supports variants of mov, movz, movs */
class PseudoHandler : public Handler {

public:
  SupportLevel get_support(const x64asm::Instruction& instr);

  void build_circuit(const x64asm::Instruction& instr, SymState& start);

private:

  static const std::vector<std::string> supported_regex_;

};

} //namespace stoke


#endif
