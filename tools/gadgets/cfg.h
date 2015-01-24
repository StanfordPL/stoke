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

#ifndef STOKE_TOOLS_GADGETS_CFG_H
#define STOKE_TOOLS_GADGETS_CFG_H

#include "src/ext/x64asm/include/x64asm.h"

#include <vector>

#include "src/cfg/cfg.h"
#include "src/sandbox/sandbox.h"
#include "src/target/cpu_info.h"
#include "src/tunit/tunit.h"
#include "tools/args/in_out.h"
#include "tools/ui/console.h"

namespace stoke {

class CfgGadget : public Cfg {
public:
  CfgGadget(const x64asm::Code& code) : Cfg(code, def_in(), live_out_arg) {
    // Check for unsupported flags
    flag_check(get_code());
    for (const auto& fxn : aux_fxns_arg.value()) {
      flag_check(fxn.code);
    }

    // Check for unsupported sandbox instructions
    sandbox_check(get_code());
    for (const auto& fxn : aux_fxns_arg.value()) {
      sandbox_check(fxn.code);
    }

    // Check that this function can link against auxiliary functions
    linker_check();

    // Add summaries for auxiliary functions
    summarize_functions();
  }

private:
  /** Convenience method: Adds mxcsr[rc] to def_in unless otherwise specified */
  x64asm::RegSet def_in() const {
    return no_default_mxcsr_arg ? def_in_arg.value() : def_in_arg.value() + x64asm::mxcsr_rc;
  }

  /** Checks for unsupported cpu flags */
  void flag_check(const x64asm::Code& code) const {
    const auto cpu_flags = CpuInfo::get_flags();
    auto code_flags = code.required_flags();

    if (!cpu_flags.contains(code_flags)) {
      const auto diff = code_flags - cpu_flags;
      const auto fxn = code[0].get_operand<x64asm::Label>(0).get_text();
      Console::error(1) << "Function (" << fxn << ") requires unavailable cpu flags: " << diff << std::endl;
    }
  }

  /** Checks for unsupported sandbox instructions */
  void sandbox_check(const x64asm::Code& code) const {
    for (const auto& instr : get_code()) {
      if (!Sandbox::is_supported(instr)) {
        const auto fxn = code[0].get_operand<x64asm::Label>(0).get_text();
        Console::error(1) << "Function (" << fxn << ") contains an unsupported instruction: " << instr << std::endl;
      }
    }
  }

  /** Check whether linking is possible for these code sequences */
  void linker_check() const {
    x64asm::Assembler assm;

    // We can't let this hex go out of scope before linking
    std::vector<x64asm::Function> hex;
    hex.push_back(assm.assemble(get_code()));
    for (const auto& fxn : aux_fxns_arg.value()) {
      hex.push_back(assm.assemble(fxn.code));
    }

    x64asm::Linker lnkr;
    lnkr.start();
    for (auto& h : hex) {
      lnkr.link(h);
    }
    lnkr.finish();

    if (lnkr.multiple_def()) {
      Console::error(1) << "Target/rewrite and functions contain a multiple definition error!" << std::endl;
    } else if (lnkr.undef_symbol()) {
      Console::error(1) << "Target/rewrite and functions contain an undefined symbol error!" << std::endl;
    }
  }

  /** Add dataflow summaries for auxiliary functions */
  void summarize_functions() {
    for (const auto& fxn : aux_fxns_arg.value()) {
      auto code = fxn.code;
      auto lbl = code[0].get_operand<x64asm::Label>(0);
      TUnit::MayMustSets mms = {
        code.must_read_set(),
        code.must_write_set(),
        code.must_undef_set(),
        code.maybe_read_set(),
        code.maybe_write_set(),
        code.maybe_undef_set()
      };
      mms = fxn.get_may_must_sets(mms);
      // check consistency of dataflow information
      std::string consistency_warning = "Dataflow information is inconsistent for function '" + fxn.name + "'.  The maybe set needs to contain the must set. ";
      if (!mms.maybe_read_set.contains(mms.must_read_set)) {
        Console::error(1) << consistency_warning << "maybe-read: " << mms.maybe_read_set << ". must-read: " << mms.must_read_set << std::endl;
      }
      if (!mms.maybe_write_set.contains(mms.must_write_set)) {
        Console::error(1) << consistency_warning << "maybe-write: " << mms.maybe_write_set << ". must-write: " << mms.must_write_set << std::endl;
      }
      if (!mms.maybe_undef_set.contains(mms.must_undef_set)) {
        Console::error(1) << consistency_warning << "maybe-undef: " << mms.maybe_undef_set << ". must-undef: " << mms.must_undef_set << std::endl;
      }
      add_summary(lbl, mms);
    }
    recompute();
  }
};

} // namespace stoke

#endif

