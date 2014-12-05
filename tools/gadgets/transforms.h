// Copyright 2013-2015 Eric Schkufza, Rahul Sharma, Berkeley Churchill, Stefan Heule
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

#ifndef STOKE_TOOLS_GADGETS_TRANSFORMS_H
#define STOKE_TOOLS_GADGETS_TRANSFORMS_H

#include <random>
#include <iostream>
#include <vector>
#include <tuple>

#include <cpuid.h>

#include "src/ext/x64asm/include/x64asm.h"

#include "src/search/transforms.h"
#include "tools/args/target.h"
#include "tools/args/transforms.h"
#include "tools/ui/console.h"

namespace {

typedef std::vector<std::pair<int, x64asm::Flag>> regbit_to_flags;
typedef std::tuple<regbit_to_flags, regbit_to_flags, regbit_to_flags, regbit_to_flags> level_to_flags;

/** mapping from cpuid instruction results to x64asm::Flag */
std::vector<std::pair<unsigned, level_to_flags>> cpuid_to_flags_ {
  // level 1
  std::make_pair(1, std::make_tuple<regbit_to_flags, regbit_to_flags, regbit_to_flags, regbit_to_flags>(
    // edx
  {
    std::make_pair(0, x64asm::Flag::FPU),
    std::make_pair(4, x64asm::Flag::TSC),
    std::make_pair(5, x64asm::Flag::MSR),
    std::make_pair(8, x64asm::Flag::CX8),
    std::make_pair(11, x64asm::Flag::SEP),
    std::make_pair(15, x64asm::Flag::CMOV),
    std::make_pair(19, x64asm::Flag::CLFLUSH),
    std::make_pair(23, x64asm::Flag::MMX),
    std::make_pair(24, x64asm::Flag::FXSR),
    std::make_pair(25, x64asm::Flag::SSE),
    std::make_pair(26, x64asm::Flag::SSE2),
  },
  // ecx
  {
    std::make_pair(0, x64asm::Flag::PNI),
    std::make_pair(1, x64asm::Flag::PCLMULQDQ),
    std::make_pair(3, x64asm::Flag::MONITOR),
    std::make_pair(9, x64asm::Flag::SSSE3),
    std::make_pair(12, x64asm::Flag::FMA),
    std::make_pair(13, x64asm::Flag::CX16),
    std::make_pair(19, x64asm::Flag::SSE4_1),
    std::make_pair(20, x64asm::Flag::SSE4_2),
    std::make_pair(22, x64asm::Flag::MOVBE),
    std::make_pair(23, x64asm::Flag::POPCNT),
    std::make_pair(25, x64asm::Flag::AES),
    std::make_pair(26, x64asm::Flag::XSAVE),
    std::make_pair(28, x64asm::Flag::AVX),
    std::make_pair(29, x64asm::Flag::F16C),
    std::make_pair(30, x64asm::Flag::RDRAND),
  },
  // ebx
  {},
  // eax
  {}
  )),
  // level 7
  std::make_pair(7, std::make_tuple<regbit_to_flags, regbit_to_flags, regbit_to_flags, regbit_to_flags>(
    // edx
  {},
  // ecx
  {},
  // ebx
  {
    std::make_pair(0, x64asm::Flag::FSGSBASE),
    std::make_pair(3, x64asm::Flag::BMI1),
    std::make_pair(4, x64asm::Flag::HLE),
    std::make_pair(5, x64asm::Flag::AVX2),
    std::make_pair(8, x64asm::Flag::BMI2),
    std::make_pair(9, x64asm::Flag::ERMS),
    std::make_pair(10, x64asm::Flag::INVPCID),
    std::make_pair(11, x64asm::Flag::RTM),
  },
  // eax
  {}
  )),
  // level 0x80000001
  std::make_pair(0x80000001, std::make_tuple<regbit_to_flags, regbit_to_flags, regbit_to_flags, regbit_to_flags>(
    // edx
  {
    std::make_pair(11, x64asm::Flag::SYSCALL),
    std::make_pair(27, x64asm::Flag::RDTSCP),
  },
  // ecx
  {
    std::make_pair(0, x64asm::Flag::LAHF_LM),
    std::make_pair(5, x64asm::Flag::ABM),
  },
  // ebx
  {},
  // eax
  {}
  )),
  // level 0x8000000d
  std::make_pair(0x8000000d, std::make_tuple<regbit_to_flags, regbit_to_flags, regbit_to_flags, regbit_to_flags>(
    // edx
  {},
  // ecx
  {},
  // ebx
  {},
  // eax
  {
    std::make_pair(0, x64asm::Flag::XSAVEOPT),
  }
  )),
};

} // namespace

namespace stoke {

class TransformsGadget : public Transforms {
public:
  TransformsGadget(std::default_random_engine::result_type seed) : Transforms() {
    if (callee_save_arg.value()) {
      preserve_regs_arg.value() = x64asm::RegSet::empty();
    }

    set_seed(seed);

    // make sure the hardware actually supports the cpu flags
    auto real_cpu_flags = get_flagset_supported_by_hw();
    auto arg_cpu_flags = cpu_flags_arg.value();
    if (!real_cpu_flags.contains(arg_cpu_flags)) {
      x64asm::FlagSet diff = arg_cpu_flags - real_cpu_flags;
      arg_cpu_flags -= diff;

      Console::warn() << "Some cpu flags are not available on this hardware and will be removed:" << std::endl;
      Console::warn() << diff << std::endl;
    }

    set_opcode_pool(arg_cpu_flags, nop_percent_arg, call_weight_arg, mem_read_arg, mem_write_arg,
                    opc_blacklist_arg, opc_whitelist_arg);
    set_operand_pool(target_arg.value().code, preserve_regs_arg);

    for (const auto& imm : immediates_arg.value()) {
      insert_immediate(imm);
    }
    for (const auto& fxn : aux_fxns_arg.value()) {
      insert_label(fxn.code[0].get_operand<x64asm::Label>(0));
    }

    if (has_error()) {
      Console::error(1) << get_error() << std::endl;
    }
  }

private:
  // helper function for get_flagset_supported_by_hw
  void add_flag_to_flagset(x64asm::FlagSet& result, regbit_to_flags info, unsigned reg) {
    for (auto regbit : info) {
      if (reg & (1 << regbit.first)) {
        result += regbit.second;
      }
    }
  }

  /** Returns the set of flags supported by the hardware. */
  x64asm::FlagSet get_flagset_supported_by_hw() {
    x64asm::FlagSet result;

    unsigned max = __get_cpuid_max(0, NULL);

    unsigned eax = 0, ebx = 0, ecx = 0, edx = 0;
    for (auto level : cpuid_to_flags_) {
      // is this level supported?
      if (max < level.first & 0x80000000) {
        continue;
      }

      // get cpuid information
      __cpuid_count(level.first, 0, eax, ebx, ecx, edx);
      add_flag_to_flagset(result, std::get<0>(level.second), edx);
      add_flag_to_flagset(result, std::get<1>(level.second), ecx);
      add_flag_to_flagset(result, std::get<2>(level.second), ebx);
      add_flag_to_flagset(result, std::get<3>(level.second), eax);
    }

    // detect multi-byte nop support
    __cpuid_count(1, 0, eax, ebx, ecx, edx);
    unsigned int model = (eax >> 8) & 0x0F;
    // support is present if model is 1111 or 0110
    if ((model == 0x0F) || (model == 0x06)) {
      result += x64asm::Flag::NOPL;
    }

    // TODO: correctly detect REP_GOOD
    result += x64asm::Flag::REP_GOOD;

    return result;
  }
};

} // namespace stoke

#endif
