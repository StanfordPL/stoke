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

#ifndef STOKE_TOOLS_GADGETS_FUNCTIONS_H
#define STOKE_TOOLS_GADGETS_FUNCTIONS_H

#include <set>
#include <vector>

#include "src/ext/cpputil/include/io/console.h"
#include "src/ext/x64asm/include/x64asm.h"

#include "src/sandbox/sandbox.h"
#include "src/target/cpu_info.h"
#include "src/tunit/tunit.h"
#include "tools/args/functions.inc"
#include "tools/args/target.inc"

namespace stoke {

class FunctionsGadget : public std::vector<TUnit> {
public:
  FunctionsGadget() {
    // Copy the contents of the command line arg
    for (const auto& fxn : aux_fxns_arg.value()) {
      push_back(fxn);
    }

    // Remove the target and unreachable functions if necessary
    if (prune_aux_arg) {
      remove_target();
      remove_unreachable();
    }

    // Checks for unsupported instructions or flag requirements
    for (const auto& fxn : *this) {
      flag_check(fxn);
      sandbox_check(fxn);
    }
  }

private:
  /** Removes the target arg if present */
  void remove_target() {
    for (auto i = begin(), ie = end(); i != ie; ++i) {
      if (i->get_name() == target_arg.value().get_name()) {
        erase(i);
        return;
      }
    }
  }

  /** Removes functions that aren't reachable from the target */
  void remove_unreachable() {
    vector<TUnit> reachable;
    std::set<x64asm::Label> visited;

    reachable.push_back(target_arg.value());
    visited.insert(target_arg.value().get_name());

    for (size_t i = 0; i < reachable.size(); ++i) {
      for (const auto& instr : reachable[i].get_code()) {
        for (size_t j = 0, je = instr.arity(); j < je; ++j) {
          if (instr.type(j) != x64asm::Type::LABEL) {
            continue;
          }
          const auto& l = instr.get_operand<x64asm::Label>(j);
          if (visited.find(l) != visited.end()) {
            continue;
          }
          for (const auto& tu : *this) {
            if (tu.get_leading_label() == l) {
              reachable.push_back(tu);
              visited.insert(l);
            }
          }
        }
      }
    }

    clear();
    for (size_t i = 1, ie = reachable.size(); i < ie; ++i) {
      emplace_back(reachable[i]);
    }
  }

  /** Checks for unsupported cpu flags */
  void flag_check(const TUnit& fxn) const {
    const auto cpu_flags = CpuInfo::get_flags();
    auto code_flags = fxn.get_code().required_flags();

    if (!cpu_flags.contains(code_flags)) {
      const auto diff = code_flags - cpu_flags;
      cpputil::Console::error(1) << "Auxiliary function (" << fxn.get_name() << ") requires unavailable cpu flags: " << diff << std::endl;
    }
  }

  /** Checks for unsupported sandbox instructions */
  void sandbox_check(const TUnit& fxn) const {
    for (const auto& instr : fxn.get_code()) {
      if (!Sandbox::is_supported(instr)) {
        cpputil::Console::error(1) << "Auxiliary function (" << fxn.get_name() << ") contains an unsupported instruction: " << instr << std::endl;
      }
    }
  }
};

} // namespace stoke

#endif


