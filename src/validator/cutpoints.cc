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


void Cutpoints::print_option(Cutpoints::CutpointList& option) {
DEBUG_CUTPOINTS(
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
)
}

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

  // Collect data
  for(size_t i = 0; i < sandbox_.size(); ++i) {
    vector<TracePoint> trace;
    mine_data(target_, i, trace);
    target_traces_.push_back(trace);

    trace.clear();
    mine_data(rewrite_, i, trace);
    rewrite_traces_.push_back(trace);
  }

  // Get all the possible cutpoint options.
  auto cutpoint_options = get_possible_cutpoints();

  // Check all the cutpoints
  vector<CutpointList> viable_cutpoints;

  for(auto option : cutpoint_options) {
    DEBUG_CUTPOINTS(cout << "=== CHECKING ===" << endl;)
    print_option(option);
    if(check_cutpoints(option)) {
      viable_cutpoints.push_back(option);
      DEBUG_CUTPOINTS(cout << " ----> PASS" << endl;)
    } else {
      DEBUG_CUTPOINTS(cout << " ----> FAIL" << endl;)
    }
  }

  chosen_cutpoints_ = viable_cutpoints[0];

  DEBUG_CUTPOINTS(
  cout << "Total options: " << cutpoint_options.size() << endl;
  cout << "Viable options: " << viable_cutpoints.size() << endl;
  cout << "Target traces: " << target_traces_.size() << endl;
  cout << "Rewrite traces: " << rewrite_traces_.size() << endl;
  /*
  size_t cutpt_option;
  do {
    cout << "Which cutpoint do you want to use?" << endl;
    cin >> cutpt_option;
  } while(cutpt_option >= viable_cutpoints.size());
  chosen_cutpoints_ = viable_cutpoints[cutpt_option];
  */
  )

  auto& target_cuts = chosen_cutpoints_.first;
  auto& rewrite_cuts = chosen_cutpoints_.second;
  target_cuts.insert(target_cuts.begin(), target_.get_entry());
  rewrite_cuts.insert(rewrite_cuts.begin(), rewrite_.get_entry());
  target_cuts.push_back(target_.get_exit());
  rewrite_cuts.push_back(rewrite_.get_exit());

  if(!viable_cutpoints.size()) {
    error_ = "Could not find any viable cutpoints.";
  }
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
      cout << "Working on SCC pair " << j << " - " << pi[j] << endl;
      auto target_nodes = target_sccs.get_blocks(j);
      auto rewrite_nodes = rewrite_sccs.get_blocks(pi[j]);

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



void Cutpoints::mine_data(const Cfg& cfg, size_t testcase, std::vector<TracePoint>& trace) {

  size_t index;
  auto label = cfg.get_function().get_leading_label();
  sandbox_.clear_callbacks();
  sandbox_.insert_function(cfg);
  sandbox_.set_entrypoint(label);

  std::vector<CallbackParam*> to_free;

  for(Cfg::id_type block = cfg.get_entry(); block != cfg.get_exit(); block++) {

    CallbackParam* cp = new CallbackParam();
    to_free.push_back(cp);

    cp->block_id = block;
    cp->trace = &trace;

    bool has_jump = ends_with_jump(cfg, block);

    if (block == cfg.get_entry()) {
      // Don't run sandbox; callback manually.  This is to avoid repeated calls to the callback for jumps back to the
      // beginning of the loop... which is not what we want in general.
      TracePoint tp;
      tp.block_id = block;
      tp.cs = *sandbox_.get_input(testcase);
      trace.push_back(tp);

    } else if (has_jump) {
      index = cfg.get_index(Cfg::loc_type(block, cfg.num_instrs(block)-1));
      //DEBUG_CUTPOINTS(cout << "  - instrumenting before index=" << index << std::endl;)
      sandbox_.insert_before(label, index, callback, cp);
    } else {
      index = cfg.get_index(Cfg::loc_type(block, cfg.num_instrs(block)-1));
      //DEBUG_CUTPOINTS(cout << "  - instrumenting after index=" << index << std::endl;)
      sandbox_.insert_after(label, index, callback, cp);
    }
  }

  sandbox_.run(testcase);

  for(auto it : to_free)
    delete it;

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


/** Take an execution trace and extract the cutpoints/data that have been visited. */
vector<Cutpoints::TracePoint> Cutpoints::filter_cutpoints(vector<TracePoint>& trace, vector<Cfg::id_type>& basic_blocks) {

  vector<TracePoint> results;

  for(auto state : trace) {
    for(auto candidate : basic_blocks) {
      if(candidate == state.block_id) {
        results.push_back(state);
      }
    }
  }
  return results;
}

/** Find the cutpoint number that a particular trace point / basic block corresponds to */
size_t Cutpoints::which_cutpoint(TracePoint pt, vector<Cfg::id_type>& basic_blocks) {
  for(size_t i = 0; i < basic_blocks.size(); ++i) {
    if(pt.block_id == basic_blocks[i]) {
      return i;
    }
  } 

  return (size_t)(-1);
}



bool Cutpoints::check_cutpoints(CutpointList& cutpoints) {

  // For every testcase, we need to see that:
  // (i)   the same number of cutpoints are taken in target/rewrite
  // (ii)  for cutpoint i, the memory of target/rewrite must agree
  // (iii) static cutpoint i of target always aligns with static cutpoint i of rewrite in the traces

  // Additionally, independent of testcases, we need to check that:
  // (iv)  no infinite paths that don't have cutpoint

  /** Sanity check: there are as many target traces as rewrite traces. */
  assert(target_traces_.size() == rewrite_traces_.size());
  /** Sanity check: as many cutpoints in target/rewrite */
  assert(cutpoints.first.size() == cutpoints.second.size());

  /** The main checks */
  for(size_t i = 0; i < target_traces_.size(); ++i) {
    auto target_trace = target_traces_[i];
    auto rewrite_trace = rewrite_traces_[i];

    auto target_cut_trace = filter_cutpoints(target_trace, cutpoints.first);
    auto rewrite_cut_trace = filter_cutpoints(rewrite_trace, cutpoints.second);

    // check (i)
    if(target_cut_trace.size() != rewrite_cut_trace.size()) {
      DEBUG_CUTPOINTS(cout << "On trace " << i << " target has " << target_cut_trace.size() << 
            " cutpoints while rewrite has " << rewrite_cut_trace.size() << endl;)
      return false;
    }

    // check (ii)
    for(size_t j = 0; j < target_cut_trace.size(); ++j) {
      auto target_pt = target_cut_trace[j];
      auto rewrite_pt = rewrite_cut_trace[j];

      if(target_pt.cs.heap != rewrite_pt.cs.heap) {
        DEBUG_CUTPOINTS(cout << "On trace " << i << " target/rewrite disagree on memory." << endl;)
        return false; 
      }
      if(target_pt.cs.stack != rewrite_pt.cs.stack) {
        DEBUG_CUTPOINTS(cout << "On trace " << i << " target/rewrite disagree on memory." << endl;)
        return false; 
      }
      if(target_pt.cs.data != rewrite_pt.cs.data) {
        DEBUG_CUTPOINTS(cout << "On trace " << i << " target/rewrite disagree on memory." << endl;)
        return false; 
      }
      if(target_pt.cs.segments.size() != rewrite_pt.cs.segments.size()) {
        DEBUG_CUTPOINTS(cout << "On trace " << i << " target/rewrite disagree on memory." << endl;)
        return false;
      }
      for(size_t k = 0; k < target_pt.cs.segments.size(); ++k) {
        if(target_pt.cs.segments[k] != rewrite_pt.cs.segments[k]) {
          DEBUG_CUTPOINTS(cout << "On trace " << i << " target/rewrite disagree on memory." << endl;)
          return false;
        }
      }
    }

    // check (iii)
    for(size_t j = 0; j < target_cut_trace.size(); ++j) {
      auto target_pt = target_cut_trace[j];
      auto rewrite_pt = rewrite_cut_trace[j];

      int target_cutpt = which_cutpoint(target_pt, cutpoints.first);
      int rewrite_cutpt = which_cutpoint(rewrite_pt, cutpoints.second);

      assert(target_cutpt != -1);
      assert(rewrite_cutpt != -1);

      if(target_cutpt != rewrite_cutpt) {
        DEBUG_CUTPOINTS(cout << "On trace " << i << " target/rewrite cutpoints don't align." << endl;)
        return false;
      }
    }
  }

  /** Check (iv) */
  for(size_t i = 0; i < cutpoints.first.size(); ++i) {
    for(size_t j = 0; j < cutpoints.first.size(); ++j) {
      auto target_paths_ij =
       CfgPaths::enumerate_paths(target_, 1, cutpoints.first[i], cutpoints.first[j], &cutpoints.first);
      auto rewrite_paths_ij =
       CfgPaths::enumerate_paths(rewrite_, 1, cutpoints.second[i], cutpoints.second[j], &cutpoints.second);

      auto target_paths_ij_more =
        CfgPaths::enumerate_paths(target_, 2, cutpoints.first[i], cutpoints.first[j], &cutpoints.first);
      auto rewrite_paths_ij_more =
        CfgPaths::enumerate_paths(rewrite_, 2, cutpoints.second[i], cutpoints.second[j], &cutpoints.second);

      if (target_paths_ij.size() != target_paths_ij_more.size()) {
        DEBUG_CUTPOINTS(cout << "Unbounded paths between cutpoints " << i << ", " << j << " in target.";)
        return false;
      }
      if (rewrite_paths_ij.size() != rewrite_paths_ij_more.size()) {
        DEBUG_CUTPOINTS(cout << "Unbounded paths between cutpoints " << i << ", " << j << " in rewrite.";)
        return false;
      }
    }
  }

  return true;
}


