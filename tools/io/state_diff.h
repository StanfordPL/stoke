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

#ifndef STOKE_TOOLS_IO_STATEDIFF_H
#define STOKE_TOOLS_IO_STATEDIFF_H

#include <iostream>
#include <sstream>

#include "src/state/cpu_state.h"

namespace stoke {

/** Returns a string with the proper escape codes for the color red. */
std::string red(std::string s);

/** Returns a string with the proper escape codes for the color green. */
std::string green(std::string s);

/** Returns a string description of the difference between two cpu states. */
std::string diff_states(const stoke::CpuState& state1, const stoke::CpuState& state2,
                        bool show_unchanged, bool show_all_registers,
                        const x64asm::RegSet& regs_to_show);

} // namespace stoke

#endif
