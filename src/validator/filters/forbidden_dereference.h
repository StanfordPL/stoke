// Copyright 2013-2016 Stanford University
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


#ifndef STOKE_SRC_VALIDATOR_FILTERS_FORBIDDENDEREFERENCE_H
#define STOKE_SRC_VALIDATOR_FILTERS_FORBIDDENDEREFERENCE_H

#include <string>
#include <sstream>
#include <vector>

#include "src/ext/x64asm/include/x64asm.h"
#include "src/symstate/state.h"
#include "src/validator/filter.h"

namespace stoke {

class ForbiddenDereferenceFilter : public Filter {

public:

  ForbiddenDereferenceFilter(Handler& handler,
                             const std::vector<uint64_t>& low,
                             const std::vector<uint64_t>& high) :
    Filter(handler), low_(low), high_(high) { }

  /** Apply handler, and any custom logic; modify the symbolic state appropriately, and also
    generate any needed additional constraints. */
  virtual std::vector<SymBool> operator()(const x64asm::Instruction& instr, SymState& state) {
    std::vector<SymBool> constraints;
    error_ = "";

    // Require memory dereferences to not touch forbidden address
    if (instr.is_explicit_memory_dereference()) {
      auto mem = instr.get_operand<x64asm::M8>(instr.mem_index());
      auto addr = state.get_addr(mem);

      for (size_t i = 0; i < low_.size(); ++i) {
        assert(i < high_.size());
        constraints.push_back((addr < SymBitVector::constant(64, low_[i])) |
                              (addr > SymBitVector::constant(64, high_[i])));
      }
    }

    handler_.build_circuit(instr, state);

    if (handler_.has_error()) {
      std::stringstream ss;
      ss << "Error building circuit for: " << instr << ".";
      ss << "Handler says: " << handler_.error();
      error_ = ss.str();
    }

    return constraints;
  }

private:

  std::vector<uint64_t> low_;
  std::vector<uint64_t> high_;

};

} //namespace

#endif
