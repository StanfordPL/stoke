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

#ifndef STOKE_TOOLS_GADGETS_WEIGHTED_TRANSFORM_H
#define STOKE_TOOLS_GADGETS_WEIGHTED_TRANSFORM_H

#include <iostream>
#include <random>
#include <vector>

#include "src/ext/x64asm/include/x64asm.h"
#include "src/ext/cpputil/include/io/console.h"

#include "src/cfg/cfg.h"
#include "src/solver/z3solver.h"
#include "src/target/cpu_info.h"
#include "src/transform/all_transforms.h"
#include "src/tunit/tunit.h"
#include "src/validator/validator.h"

#include "tools/args/weighted_transform.inc"

namespace stoke {

class WeightedTransformGadget : public WeightedTransform {
public:
  WeightedTransformGadget(TransformPools& pools,
                          std::default_random_engine::result_type seed) : WeightedTransform(pools) {
    set_seed(seed);

    insert_transform(new InstructionTransform(pools), instruction_mass_arg.value());
    insert_transform(new OpcodeTransform(pools), opcode_mass_arg.value());
    insert_transform(new OperandTransform(pools), operand_mass_arg.value());
    insert_transform(new LocalSwapTransform(pools), local_swap_mass_arg.value());
    insert_transform(new GlobalSwapTransform(pools), global_swap_mass_arg.value());
    insert_transform(new RotateTransform(pools), rotate_mass_arg.value());

    for(auto tform : transforms_) {
      tform->set_seed(seed);
    }
  }

};

} // namespace stoke

#endif
