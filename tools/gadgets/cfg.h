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

#include <vector>

#include "src/ext/x64asm/include/x64asm.h"

#include "src/cfg/cfg.h"
#include "src/sandbox/sandbox.h"
#include "src/target/cpu_info.h"
#include "src/tunit/tunit.h"
#include "tools/args/in_out.h"
#include "tools/ui/console.h"

namespace stoke {

class CfgGadget : public Cfg {
public:
  CfgGadget(const x64asm::Code& code, const std::vector<TUnit>& aux_fxns)
    : Cfg(code, def_in(live_out()), live_out()) {
    // Emit warning if register values were guessed
    reg_warning();

    // Check for unsupported instructions and cpu flags
    flag_check(get_code());
    sandbox_check(get_code());

    // Check that this function can link against auxiliary functions
    linker_check(aux_fxns);

    // Add summaries for auxiliary functions
    summarize_functions(aux_fxns);
  }

private:
  void reg_warning() const {
    // The static guard here to prevent this warning from being emitted more than once
    // once for the target, and once for current, best_cost, best_correct, etc...
    static auto once = false;
    if (!once) {
      once = true;
      if (!live_out_arg.has_been_provided()) {
        Console::warn() << "No live out values provided, assuming " << live_out() << std::endl;
      }
      if (!def_in_arg.has_been_provided()) {
        Console::warn() << "No def in values provided; assuming " << def_in(live_out()) << std::endl;
      }
    }
  }

  x64asm::RegSet def_in(const x64asm::RegSet& live_out) const {
    // Add mxcsr[rc] unless otherwise specified
    auto def_in = def_in_arg.value();
    if (!no_default_mxcsr_arg) {
      def_in += x64asm::mxcsr_rc;
    }

    // Always prefer user inputs
    if (def_in_arg.has_been_provided()) {
      return def_in_arg;
    }

    // Otherwise, we can solve for live ins and just use those
    Cfg temp(target_arg.value().code, x64asm::RegSet::empty(), live_out);
    return temp.live_ins();
  }

  x64asm::RegSet live_out() const {
    // Always prefer user inputs
    if (live_out_arg.has_been_provided()) {
      return live_out_arg.value();
    }

    // Solve for defined out values
    Cfg temp(target_arg.value().code, x64asm::RegSet::empty(), x64asm::RegSet::empty());
    const auto dos = temp.def_outs();

    // If no general purpose registers were written we can guess xmm live out
    if (!dos.contains(x64asm::rax) && !dos.contains(x64asm::rdx)) {
      auto res = x64asm::RegSet::empty();
      if (dos.contains(x64asm::xmm0)) {
        res += x64asm::xmm0;
      }
      if (dos.contains(x64asm::xmm1)) {
        res += x64asm::xmm1;
      }
      return res;
    }

    // If no xmms were written we can guess general purpose live outs
    if (!dos.contains(x64asm::xmm0) && !dos.contains(x64asm::xmm1)) {
      auto res = x64asm::RegSet::empty();
      if (dos.contains(x64asm::rax)) {
        res += x64asm::rax;
      }
      if (dos.contains(x64asm::rdx)) {
        res += x64asm::rdx;
      }
      return res;
    }

    return x64asm::RegSet::linux_call_return();
  }

  /** Checks for unsupported cpu flags */
  void flag_check(const x64asm::Code& code) const {
    const auto cpu_flags = CpuInfo::get_flags();
    auto code_flags = code.required_flags();

    if (!cpu_flags.contains(code_flags)) {
      const auto diff = code_flags - cpu_flags;
      const auto fxn = code[0].get_operand<x64asm::Label>(0).get_text();
      Console::error(1) << "Target/rewrite requires unavailable cpu flags: " << diff << std::endl;
    }
  }

  /** Checks for unsupported sandbox instructions */
  void sandbox_check(const x64asm::Code& code) const {
    for (const auto& instr : code) {
      if (!Sandbox::is_supported(instr)) {
        const auto fxn = code[0].get_operand<x64asm::Label>(0).get_text();
        Console::error(1) << "Target/rewrite contains an unsupported instruction: " << instr << std::endl;
      }
    }
  }

  /** Check whether linking is possible for these code sequences */
  void linker_check(const std::vector<TUnit>& aux_fxns) const {
    x64asm::Assembler assm;

    // We can't let this hex go out of scope before linking
    std::vector<x64asm::Function> hex;
    hex.push_back(assm.assemble(get_code()));
    for (const auto& fxn : aux_fxns) {
      hex.push_back(assm.assemble(fxn.code));
    }

    x64asm::Linker lnkr;
    lnkr.start();
    for (auto& h : hex) {
      lnkr.link(h);
    }
    lnkr.finish();

    if (lnkr.multiple_def()) {
      Console::error(1) << "Target/rewrite and functions contain a multiple definition error (" << lnkr.get_multiple_def() << ")!" << std::endl;
    } else if (lnkr.undef_symbol()) {
      Console::error(1) << "Target/rewrite and functions contain an undefined symbol error (" << lnkr.get_undef_symbol() << ")!" << std::endl;
    }
  }

  /** Add dataflow summaries for auxiliary functions */
  void summarize_functions(const std::vector<TUnit>& aux_fxns) {
    for (const auto& fxn : aux_fxns) {
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

