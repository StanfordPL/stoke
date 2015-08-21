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

    WeightedTransform* sub_memory_transform = new WeightedTransform(pools);
    WeightedTransform* sub_multi_transform = new WeightedTransform(pools);
    std::map<Transform*, size_t> transform_list;

    // These transforms make sense with a memory transform
    transform_list[new OpcodeTransform(pools)] = opcode_mass_arg.value();
    transform_list[new OperandTransform(pools)] = operand_mass_arg.value();
    transform_list[new LocalSwapTransform(pools)] = local_swap_mass_arg.value();
    transform_list[new GlobalSwapTransform(pools)] = global_swap_mass_arg.value();
    transform_list[new GlobalCopyTransform(pools)] = global_copy_mass_arg.value();
    transform_list[new ReplaceNopTransform(pools)] = replace_nop_mass_arg.value();
    transform_list[new RotateTransform(pools)] = rotate_mass_arg.value();

    for(auto pair : transform_list) {
      sub_memory_transform->insert_transform(pair.first, pair.second);
    }

    // These transforms don't make sense along with a memory transform
    transform_list[new InstructionTransform(pools)] = instruction_mass_arg.value();
    transform_list[new OpcodeWidthTransform(pools)] = opcode_width_mass_arg.value();
    transform_list[new AddNopsTransform(pools)] = add_nops_mass_arg.value();
    transform_list[new DeleteTransform(pools)] = delete_mass_arg.value();

    for(auto pair : transform_list) {
      sub_multi_transform->insert_transform(pair.first, pair.second);
      insert_transform(pair.first, pair.second);
    }

    Transform* memory_transform = new MemoryTransform(pools, *sub_memory_transform);
    Transform* multi_transform = new MultiTransform(pools, *sub_multi_transform, 2);
    insert_transform(multi_transform, multi_mass_arg.value());
    insert_transform(memory_transform, memory_mass_arg.value());

    set_seed(seed);
  }

};

} // namespace stoke

#endif
