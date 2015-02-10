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

#include "src/target/cpu_info.h"

#include <cpuid.h>
#include <tuple>
#include <vector>

using namespace std;
using namespace x64asm;

namespace {

typedef vector<pair<int, Flag>> regbit_to_flags;
typedef tuple<regbit_to_flags, regbit_to_flags, regbit_to_flags, regbit_to_flags> level_to_flags;

// Mapping from cpuid instruction results to Flag
vector<pair<unsigned, level_to_flags>> cpuid_to_flags_ {
  // level 1
  make_pair(1, make_tuple<regbit_to_flags, regbit_to_flags, regbit_to_flags, regbit_to_flags>(
    // edx
  {
    make_pair(0, Flag::FPU),
    make_pair(4, Flag::TSC),
    make_pair(5, Flag::MSR),
    make_pair(8, Flag::CX8),
    make_pair(11, Flag::SEP),
    make_pair(15, Flag::CMOV),
    make_pair(19, Flag::CLFLUSH),
    make_pair(23, Flag::MMX),
    make_pair(24, Flag::FXSR),
    make_pair(25, Flag::SSE),
    make_pair(26, Flag::SSE2),
  },
  // ecx
  {
    make_pair(0, Flag::PNI),
    make_pair(1, Flag::PCLMULQDQ),
    make_pair(3, Flag::MONITOR),
    make_pair(9, Flag::SSSE3),
    make_pair(12, Flag::FMA),
    make_pair(13, Flag::CX16),
    make_pair(19, Flag::SSE4_1),
    make_pair(20, Flag::SSE4_2),
    make_pair(22, Flag::MOVBE),
    make_pair(23, Flag::POPCNT),
    make_pair(25, Flag::AES),
    make_pair(26, Flag::XSAVE),
    make_pair(28, Flag::AVX),
    make_pair(29, Flag::F16C),
    make_pair(30, Flag::RDRAND),
  },
  // ebx
  {},
  // eax
  {}
  )),
  // level 7
  make_pair(7, make_tuple<regbit_to_flags, regbit_to_flags, regbit_to_flags, regbit_to_flags>(
    // edx
  {},
  // ecx
  {},
  // ebx
  {
    make_pair(0, Flag::FSGSBASE),
    make_pair(3, Flag::BMI1),
    make_pair(4, Flag::HLE),
    make_pair(5, Flag::AVX2),
    make_pair(8, Flag::BMI2),
    make_pair(9, Flag::ERMS),
    make_pair(10, Flag::INVPCID),
    make_pair(11, Flag::RTM),
  },
  // eax
  {}
  )),
  // level 0x80000001
  make_pair(0x80000001, make_tuple<regbit_to_flags, regbit_to_flags, regbit_to_flags, regbit_to_flags>(
    // edx
  {
    make_pair(11, Flag::SYSCALL),
    make_pair(27, Flag::RDTSCP),
  },
  // ecx
  {
    make_pair(0, Flag::LAHF_LM),
    make_pair(5, Flag::ABM),
  },
  // ebx
  {},
  // eax
  {}
  )),
  // level 0x8000000d
  make_pair(0x8000000d, make_tuple<regbit_to_flags, regbit_to_flags, regbit_to_flags, regbit_to_flags>(
    // edx
  {},
  // ecx
  {},
  // ebx
  {},
  // eax
  {
    make_pair(0, Flag::XSAVEOPT),
  }
  )),
};

void insert_flag(FlagSet& result, regbit_to_flags info, unsigned reg) {
  for (auto regbit : info) {
    if (reg & (1 << regbit.first)) {
      result += regbit.second;
    }
  }
}

} // namespace

namespace stoke {

FlagSet CpuInfo::get_flags() {
  FlagSet result;

  unsigned max = __get_cpuid_max(0, NULL);

  unsigned eax = 0, ebx = 0, ecx = 0, edx = 0;
  for (auto level : cpuid_to_flags_) {
    // is this level supported?
    if (max < level.first & 0x80000000) {
      continue;
    }

    // get cpuid information
    __cpuid_count(level.first, 0, eax, ebx, ecx, edx);
    insert_flag(result, get<0>(level.second), edx);
    insert_flag(result, get<1>(level.second), ecx);
    insert_flag(result, get<2>(level.second), ebx);
    insert_flag(result, get<3>(level.second), eax);
  }

  // detect multi-byte nop support
  __cpuid_count(1, 0, eax, ebx, ecx, edx);
  unsigned int model = (eax >> 8) & 0x0F;
  // support is present if model is 1111 or 0110
  if ((model == 0x0F) || (model == 0x06)) {
    result += Flag::NOPL;
  }

  // TODO: correctly detect REP_GOOD
  result += Flag::REP_GOOD;

  return result;
}

} // namespace stoke
