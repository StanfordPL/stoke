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


#ifndef STOKE_SRC_VALIDATOR_FILTER_H
#define STOKE_SRC_VALIDATOR_FILTER_H

#include <string>

#include "src/ext/x64asm/include/x64asm.h"
#include "src/symstate/state.h"
#include "src/validator/handler.h"

namespace stoke {

class Filter {

public:

  Filter(Handler& h) : handler_(h) { }

  virtual ~Filter() {}

  /** Apply handler, and any custom logic; modify the symbolic state appropriately, and also
    generate any needed additional constraints. */
  virtual std::vector<SymBool> operator()(const x64asm::Instruction& i, SymState& start) = 0;

  /** Check for an error in building the circuit */
  bool has_error() const {
    return error_.size() > 0;
  }
  /** Get the current error message */
  std::string error() const {
    return error_;
  }

  Handler& get_handler() {
    return handler_;
  }

protected:

  std::string error_;

  Handler& handler_;


};

} //namespace

#endif
