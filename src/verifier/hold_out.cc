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

#include "src/verifier/hold_out.h"
#include "src/ext/x64asm/include/x64asm.h"

using namespace std;
using namespace stoke;
using namespace x64asm;

RegSet HoldOutVerifier::supported_regset() {

  RegSet mask = (RegSet::all_gps() | RegSet::all_ymms()) +
                eflags_cf + eflags_of + eflags_pf + eflags_sf + eflags_zf + eflags_af;

  // Berkeley hates mxcsr.  See #339.
  for(size_t i = 0; i < mxcsr.size(); ++i)
    mask = mask + mxcsr[i];

  return mask;
}

bool HoldOutVerifier::states_equivalent(CpuState s1, CpuState s2, RegSet rs) {

  if((rs & supported_regset()) != rs)
    return false;

  for(auto r = rs.gp_begin(), re = rs.gp_end(); r != re; ++r) {
    if(s1[*r] != s2[*r])
      return false;
  }

  for(auto r = rs.sse_begin(), re = rs.sse_end(); r != re; ++r) {
    auto v1 = s1.sse[*r];
    auto v2 = s2.sse[*r];
    for(size_t i = 0; i < (*r).size()/64; ++i) {
      if(v1.get_fixed_quad(i) != v2.get_fixed_quad(i)) {
        return false;
      }
    }
  }

  for(auto r = rs.flags_begin(), re = rs.flags_end(); r != re; ++r) {
    if(s1[*r] != s2[*r])
      return false;
  }

  return true;

}

/** Returns true iff these two functions are identical. Sets counter_examples_ for failed
  inputs. */
bool HoldOutVerifier::verify(const Cfg& target, const Cfg& rewrite) {
  counter_examples_.clear();

  if (sandbox_->num_inputs() == 0) {
    error_ = "No testcases provided; cannot perform hold-out verification.";
    has_error_ = true;
    return false;
  }

  bool ok_so_far = true;
  auto target_label = target.get_code()[0].get_operand<x64asm::Label>(0);
  auto rewrite_label = rewrite.get_code()[0].get_operand<x64asm::Label>(0);
  auto reg_set = target.live_outs();

  // Compute reference outputs of target
  vector<CpuState> reference_outs;

  sandbox_->insert_function(target);
  sandbox_->set_entrypoint(target_label);
  sandbox_->run();
  reference_outs.insert(reference_outs.begin(), sandbox_->output_begin(), sandbox_->output_end());

  // Compute outputs of rewrite
  sandbox_->insert_function(rewrite);
  sandbox_->set_entrypoint(rewrite_label);
  sandbox_->run();
  for(size_t i = 0; i < sandbox_->num_inputs(); ++i) {
    auto& output = *(sandbox_->get_output(i));
    if(!states_equivalent(output, reference_outs[i], reg_set)) {
      ok_so_far = false;
      counter_examples_.push_back(*(sandbox_->get_input(i)));
    }
  }


  return ok_so_far;
}

