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

#ifndef STOKE_TOOLS_GADGETS_SEARCH_H
#define STOKE_TOOLS_GADGETS_SEARCH_H

#include <random>

#include "src/search/move.h"
#include "src/search/search.h"
#include "src/search/transforms.h"
#include "tools/args/search.h"

namespace stoke {

class SearchGadget : public Search {
public:
  SearchGadget(Transforms* tforms, std::default_random_engine::result_type seed) :
    Search(tforms) {
    set_seed(seed);
    set_max_instrs(max_instrs_arg);
    set_timeout_itr(timeout_itr_arg);
    set_timeout_sec(timeout_sec_arg);
    set_beta(beta_arg);
    set_mass(Move::OPCODE, opcode_mass_arg);
    set_mass(Move::OPERAND, operand_mass_arg);
    set_mass(Move::INSTRUCTION, instruction_mass_arg);
    set_mass(Move::LOCAL_SWAP, local_swap_mass_arg);
    set_mass(Move::GLOBAL_SWAP, global_swap_mass_arg);
    set_mass(Move::RESIZE, resize_mass_arg);
    set_mass(Move::EXTENSION, extension_mass_arg);
  }
};

} // namespace stoke

#endif
