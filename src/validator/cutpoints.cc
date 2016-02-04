// Copyright 2013-2016 Stanford University
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

#include "src/cfg/paths.h"
#include "src/cfg/sccs.h"
#include "src/solver/z3solver.h"
#include "src/symstate/bitvector.h"
#include "src/validator/cutpoints.h"

#define MAX(a,b) ((a) > (b) ? (a) : (b))

#define DEBUG_CUTPOINTS(X) { X }


using namespace std;
using namespace stoke;
using namespace x64asm;

vector<vector<size_t>> Cutpoints::get_permutations(size_t n) {

  if(n == 1) {
    vector<vector<size_t>> result;
    vector<size_t> one;
    one.push_back(0);
    result.push_back(one);
    return result;
  }

  vector<vector<size_t>> results;
  vector<vector<size_t>> recursive_step = get_permutations(n-1);
  for(auto pi : recursive_step) {

    for(size_t i = 0; i <= pi.size(); ++i) {
      vector<size_t> copy = pi;
      copy.insert(copy.begin() + i, n-1);
      results.push_back(copy);
    }
  }

  return results;
}


void Cutpoints::compute() {

  CfgPaths cfg_paths;
  CfgSccs target_sccs(target_);
  CfgSccs rewrite_sccs(rewrite_);

  target_cutpoints_.push_back(target_.get_entry());
  rewrite_cutpoints_.push_back(rewrite_.get_entry());

  target_cutpoints_.push_back(target_.get_exit());
  rewrite_cutpoints_.push_back(rewrite_.get_exit());

  auto cutpoint_options = get_possible_cutpoints();

  /*
  cout << "Printing cutpoint options" << endl;
  for(auto option : cutpoint_options) {
    cout << "Option" << endl;
    cout << "Target: ";
    for(auto n : option.first) {
      cout << n << "  ";
    }
    cout << endl;
    cout << "Rewrite: ";
    for(auto n : option.second) {
      cout << n << "  ";
    }
    cout << endl;
  }
  */

  exit(0);
}

vector<Cutpoints::CutpointList> Cutpoints::get_possible_cutpoints() {

  CfgSccs target_sccs(target_);
  CfgSccs rewrite_sccs(rewrite_);

  if(target_sccs.count() != rewrite_sccs.count()) {
    error_ = "DDEC only works when target/rewrite have the same number of SCCs/loops";
    vector<CutpointList> empty;
    return empty;
  }

  size_t n = target_sccs.count();
  auto permutations = get_permutations(n);

  vector<CutpointList> results;

  for(auto pi : permutations) {
    vector<CutpointList> working_set;

    CutpointList empty_list;
    working_set.push_back(empty_list);

    for(size_t j = 0; j < n; ++j) {
      // Working on SCC j of target
      // Working on SCC pi[j] of rewrite
      //cout << "Working on SCC pair " << j << " - " << pi[j] << endl;
      auto target_nodes = target_sccs.get_blocks(j);
      auto rewrite_nodes = rewrite_sccs.get_blocks(pi[j]);

      /*
      cout << "  - target nodes: ";
      for(auto it : target_nodes) {
        cout << "  " << it;
      }
      cout << endl;
      cout << "  - rewrite nodes: ";
      for(auto it : rewrite_nodes) {
        cout << "  " << it;
      }
      cout << endl;
      */

      // Create a place to put new cutpoints into.
      vector<CutpointList> new_working_set;

      // For every pair of nodes in (j, pi[j]) we extend each
      for(auto tn : target_nodes) {
        for(auto rn : rewrite_nodes) {
          for(auto old_list : working_set) {
            CutpointList new_list = old_list;
            new_list.first.push_back(tn);
            new_list.second.push_back(rn);
            new_working_set.push_back(new_list);
          }
        }
      }

      working_set = new_working_set;

    }

    for(auto option : working_set) {
      results.push_back(option);

      /*
      cout << "    Target: ";
      for(auto n : option.first) {
        cout << n << "  ";
      }
      cout << endl;
      cout << "    Rewrite: ";
      for(auto n : option.second) {
        cout << n << "  ";
      }
      cout << endl;
      cout << "    -------" << endl;
      */

    }
  }

  return results;

}


bool Cutpoints::ends_with_jump(const Cfg& cfg, Cfg::id_type block) {
  size_t instrs = cfg.num_instrs(block);
  if (instrs == 0)
    return false;

  auto loc = Cfg::loc_type(block, instrs-1);
  auto instr = cfg.get_instr(loc);
  return instr.is_any_jump() || instr.is_ret();
}

void Cutpoints::callback(const StateCallbackData& data, void* arg) {
  auto args = *((CallbackParam*)arg);

  TracePoint tp;
  tp.block_id = args.block_id;
  tp.cs = data.state;

  args.trace->push_back(tp);
}


/*
bool Cutpoints::check() {

  // For every testcase, we need to see that:
  // (i)   the same number of cutpoints are taken in target/rewrite
  // (ii)  for cutpoint i, the memory of target/rewrite must agree
  // (iii) static cutpoint i of target always aligns with static cutpoint i of rewrite in the traces
  // (iv)  no infinite paths that don't have cutpoint (TODO)

  // ... and along the way, we should record all this data so that the main DDEC algorithm can
  // retrieve a set of testcases at all cutpoints.

  // So, callbacks store the CpuState in two different ways.
  // First, it stores the copy in relation to the static cutpoint for future
  // invariant generation.

  // Second, it adds it to a vector of cpustates *for this testcase*.

  DEBUG_CUTPOINTS(cout << "Sandbox size: " << dec << sandbox_.size() << endl;)

  for (size_t i = 0; i < sandbox_.size(); ++i) {

    auto tc = *sandbox_.get_input(i);

    callback_target_trace_.clear();
    callback_rewrite_trace_.clear();
    callback_target_states_.clear();
    callback_rewrite_states_.clear();


    for (size_t k = 0; k < 2; ++k) {
      bool is_rewrite = k;
      auto& cfg = is_rewrite ? rewrite_ : target_;
      auto label = cfg.get_code()[0].get_operand<Label>(0);

      auto& cutpoint_list = is_rewrite ? rewrite_cutpoints_ : target_cutpoints_;
      auto& jump_list = is_rewrite ? rewrite_cutpoint_ends_with_jump_ : target_cutpoint_ends_with_jump_;

      sandbox_.insert_function(cfg);
      sandbox_.set_entrypoint(label);
      sandbox_.clear_callbacks();

      // setup callbacks for each cutpoint
      std::vector<CallbackParam*> to_free;

      for (size_t j = 0; j < cutpoint_list.size(); ++j) {
        bool ends_with_jump = jump_list[j];
        auto bb = cutpoint_list[j];

        DEBUG_CUTPOINTS(cout << "[cutpoints] getting data from basic block " << bb << "; ewj=" << ends_with_jump << endl;)

        CallbackParam* cp = new CallbackParam();
        cp->self = this;
        cp->callback_number = j;
        cp->is_rewrite = is_rewrite;
        to_free.push_back(cp);

        size_t index;
        if (bb == cfg.get_entry()) {
          // Don't run sandbox; callback manually.  This is to avoid repeated calls to the callback for jumps back to the
          // beginning of the loop... which is not what we want in general.

          // Step 1: store the state into the permanent cache
          auto& the_map = is_rewrite ? rewrite_cutpoint_data_ : target_cutpoint_data_;
          the_map[j].push_back(tc);

          // Step 2: store the state into the temporary per-run cache
          auto& the_list = is_rewrite ? callback_rewrite_states_ : callback_target_states_;
          the_list.push_back(tc);

          // Step 3: store the id number into the trace
          auto& the_trace = is_rewrite ? callback_rewrite_trace_ : callback_target_trace_;
          the_trace.push_back(j);

        } else if (bb == cfg.get_exit()) {
          // no need to collect data at exit
        } else if (ends_with_jump) {
          index = cfg.get_index(Cfg::loc_type(bb, cfg.num_instrs(bb)-1));
          DEBUG_CUTPOINTS(cout << "  - instrumenting before index=" << index << std::endl;)
          sandbox_.insert_before(label, index, check_callback, cp);
        } else {
          index = cfg.get_index(Cfg::loc_type(bb, cfg.num_instrs(bb)-1));
          DEBUG_CUTPOINTS(cout << "  - instrumenting after index=" << index << std::endl;)
          sandbox_.insert_after(label, index, check_callback, cp);
        }
      }

      sandbox_.run(i);

      for (auto it : to_free)
        delete it;
    }

    // (i), (iii) traces are the same
    if (callback_target_trace_.size() != callback_rewrite_trace_.size()) {

      DEBUG_CUTPOINTS(
        cout << endl;
        cout << endl;
        cout << "target cutpoint trace: ";
      for (auto it : callback_target_trace_) {
      cout << it << "  ";
    }
    cout << endl;
         cout << "( size " << callback_target_trace_.size() << " )" << endl;
         cout << "rewrite cutpoint trace: ";
    for (auto it : callback_rewrite_trace_) {
      cout << it << "  ";
    }
    cout << endl;
         cout << "( size " << callback_rewrite_trace_.size() << " )" << endl;

         cout << endl;
         cout << tc << endl;
    )

      error_ = "trace sizes not equal";
      return false;
    }
    for (size_t j = 0; j < callback_target_trace_.size(); ++j) {
      if (callback_target_trace_[j] != callback_rewrite_trace_[j]) {
        error_ = "Traces differ";
        return false;
      }
    }
    // (ii) memory is equal
    for (size_t j = 0; j < callback_target_states_.size(); ++j) {
      auto ts = callback_target_states_[j];
      auto rs = callback_rewrite_states_[j];
      if (ts.heap != rs.heap) {
        error_ = "Heap states not equal";
        return false;
      }
      if (ts.stack != rs.stack) {
        error_ = "Stack states not equal";
        return false;
      }
      if (ts.data != rs.data) {
        error_ = "Data state not equal";
        return false;
      }
      for (size_t k = 0; k < ts.segments.size(); ++k) {
        if (ts.segments[k] != rs.segments[k]) {
          error_ = "Other segment not equal";
          return false;
        }
      }
    }

  }
  // TODO: check that each SCC has a cutpoint

  return true;
}

*/


