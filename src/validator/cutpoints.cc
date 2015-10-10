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

#include "src/validator/cutpoints.h"

using namespace std;
using namespace stoke;
using namespace x64asm;

void Cutpoints::compute() {

  // For each basic block of target/rewrite, we have a cutpoint at the end
  for (size_t i = 0; i < target_.num_blocks(); ++i) {
    if (target_.is_reachable(i) && !target_.is_exit(i)) {
      target_cutpoints_.push_back(i);
      target_cutpoint_ends_with_jump_.push_back(ends_with_jump(target_, i));
    }

    if (rewrite_.is_reachable(i) && !rewrite_.is_exit(i)) {
      rewrite_cutpoints_.push_back(i);
      rewrite_cutpoint_ends_with_jump_.push_back(ends_with_jump(rewrite_, i));
    }
  }

  for (size_t i = 0; i < target_cutpoints_.size(); ++i) {
    cout << "Cutpoint " << target_cutpoints_[i] << "; has jump? " << target_cutpoint_ends_with_jump_[i] << endl;
  }

  for (size_t i = 0; i < rewrite_cutpoints_.size(); ++i) {
    cout << "Cutpoint " << rewrite_cutpoints_[i] << "; has jump? " << rewrite_cutpoint_ends_with_jump_[i] << endl;
  }

  for (size_t k = 0; k < 2; ++k) {
    bool is_rewrite = k;
    auto& cfg = is_rewrite ? rewrite_ : target_;

    // setup callbacks for each cutpoint
    auto& cutpoint_list = is_rewrite ? rewrite_cutpoints_ : target_cutpoints_;
    auto& jump_list = is_rewrite ? rewrite_cutpoint_ends_with_jump_ : target_cutpoint_ends_with_jump_;
    auto& index_list = is_rewrite ? rewrite_cutpoint_indexes_ : target_cutpoint_indexes_;

    index_list.clear();

    for (size_t j = 0; j < cutpoint_list.size(); ++j) {
      bool ends_with_jump = jump_list[j];
      auto bb = cutpoint_list[j];

      size_t index;
      if (bb == cfg.get_entry()) {
        index = 0;
      } else if (ends_with_jump) {
        index = cfg.get_index(Cfg::loc_type(bb, cfg.num_instrs(bb)-1));
      } else {
        index = cfg.get_index(Cfg::loc_type(bb, cfg.num_instrs(bb)-1)) + 1;
      }
      index_list.push_back(index);
    }
  }


  

  bool okay = check();
  assert(okay);

  cout << "Cutpoints worked? " << okay << endl;

}

bool Cutpoints::ends_with_jump(const Cfg& cfg, Cfg::id_type block) {
  size_t instrs = cfg.num_instrs(block);
  auto loc = Cfg::loc_type(block, instrs-1);
  auto instr = cfg.get_instr(loc);
  return instr.is_any_jump() || instr.is_ret();
}

void Cutpoints::callback(const StateCallbackData& data, void* arg) {
  auto args = *((CallbackParam*)arg);

  // Step 1: store the state into the permanent cache
  auto& the_map = args.is_rewrite ? args.self->rewrite_cutpoint_data : args.self->target_cutpoint_data;
  the_map[args.callback_number].push_back(data.state);

  // Step 2: store the state into the temporary per-run cache
  auto& the_list = args.is_rewrite ? args.self->callback_rewrite_states_ : args.self->callback_target_states_;
  the_list.push_back(data.state);

  // Step 3: store the id number into the trace
  auto& the_trace = args.is_rewrite ? args.self->callback_rewrite_trace_ : args.self->callback_target_trace_;
  the_trace.push_back(args.callback_number);

}

bool Cutpoints::check() {

  // For every testcase, we need to see that:
  // (i)   the same number of cutpoints are taken in target/rewrite
  // (ii)  for cutpoint i, the memory of target/rewrite must agree
  // (iii) static cutpoint i of target always aligns with static cutpoint i of rewrite in the traces

  // ... and along the way, we should record all this data.

  // So, callbacks store the CpuState in two different ways.
  // First, it stores the copy in relation to the static cutpoint for future
  // invariant generation.

  // Second, it adds it to a vector of cpustates *for this testcase*.

  cout << "Sandbox size: " << sandbox_.size() << endl;

  for (size_t i = 0; i < sandbox_.size(); ++i) {


    callback_target_trace_.clear();
    callback_rewrite_trace_.clear();
    callback_target_states_.clear();
    callback_rewrite_states_.clear();


    for (size_t k = 0; k < 2; ++k) {
      bool is_rewrite = k;
      auto& cfg = is_rewrite ? rewrite_ : target_;
      auto label = cfg.get_code()[0].get_operand<Label>(0);

      sandbox_.insert_function(cfg);
      sandbox_.set_entrypoint(label);
      sandbox_.clear_callbacks();

      // setup callbacks for each cutpoint
      auto& index_list = is_rewrite ? rewrite_cutpoint_indexes_ : target_cutpoint_indexes_;

      std::vector<CallbackParam*> to_free;

      for (size_t j = 0; j < index_list.size(); ++j) {
        auto index = index_list[i];

        CallbackParam* cp = new CallbackParam();
        cp->self = this;
        cp->callback_number = j;
        cp->is_rewrite = is_rewrite;
        to_free.push_back(cp);

        sandbox_.insert_before(label, index, callback, cp);
      }

      sandbox_.run(i);

      for (auto it : to_free)
        delete it;
    }

    // (i), (iii) traces are the same
    if (callback_target_trace_.size() != callback_rewrite_trace_.size()) {
      return false;
    }
    for (size_t j = 0; j < callback_target_trace_.size(); ++j) {
      if (callback_target_trace_[j] != callback_rewrite_trace_[j])
        return false;
    }
    // (ii) memory is equal
    for (size_t j = 0; j < callback_target_states_.size(); ++j) {
      auto ts = callback_target_states_[j];
      auto rs = callback_rewrite_states_[j];
      if (ts.heap != rs.heap)
        return false;
      if (ts.stack != rs.stack)
        return false;
      if (ts.data != rs.data)
        return false;
      for (size_t k = 0; k < ts.segments.size(); ++k) {
        if (ts.segments[k] != rs.segments[k])
          return false;
      }
    }

  }
  // TODO: check that each SCC has a cutpoint

  return true;
}



