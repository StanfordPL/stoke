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

using namespace std;
using namespace stoke;

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
    if(output != reference_outs[i]) {
      ok_so_far = false;
      counter_examples_.push_back(*(sandbox_->get_input(i)));
    }
  }


  return ok_so_far;
}

