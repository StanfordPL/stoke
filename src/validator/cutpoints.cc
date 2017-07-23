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

#define DEBUG_CUTPOINTS(X) { }


using namespace std;
using namespace stoke;
using namespace x64asm;


void Cutpoints::print_option(Cutpoints::CutpointList& option) {
  DEBUG_CUTPOINTS(
    cout << "Option" << endl;
    cout << "Target: ";
  for (auto n : option.first) {
  cout << n << "  ";
}
cout << endl;
     cout << "Rewrite: ";
for (auto n : option.second) {
  cout << n << "  ";
}
cout << endl;
)
}

vector<vector<size_t>> Cutpoints::get_permutations(size_t n) {

  if (n == 1) {
    vector<vector<size_t>> result;
    vector<size_t> one;
    one.push_back(0);
    result.push_back(one);
    return result;
  }

  vector<vector<size_t>> results;
  vector<vector<size_t>> recursive_step = get_permutations(n-1);
  for (auto pi : recursive_step) {

    for (size_t i = 0; i <= pi.size(); ++i) {
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
  cout << "COLLECTING DATA..." << endl;
  for (size_t i = 0; i < sandbox_.size(); ++i) {
    vector<TracePoint> trace;
    mine_data(target_, i, trace);
    target_traces_.push_back(trace);

    trace.clear();
    mine_data(rewrite_, i, trace);
    rewrite_traces_.push_back(trace);
  }

  cout << "BUILDING MATRIX..." << endl;
  // tc# -> segment# -> # of occurrences
  map<size_t, map<size_t, size_t>> target_matrix;
  map<size_t, map<size_t, size_t>> rewrite_matrix;
  vector<CfgPath> target_segments;
  vector<CfgPath> rewrite_segments;

  size_t segment_max_size = 2;
  for(size_t is_rewrite = 0; is_rewrite <= 1; is_rewrite++) {
    auto& traces = is_rewrite ? rewrite_traces_ : target_traces_;
    auto& segments = is_rewrite ? rewrite_segments : target_segments;
    auto& matrix = is_rewrite ? rewrite_matrix : target_matrix;

    /** For each test case */
    for(size_t i = 0; i < sandbox_.size(); ++i) {

      /** For each segment size */
      for(size_t sz = 0; sz < segment_max_size; ++sz) {
        
        /** For each segment that appears in the trace */
        if(traces[i].size() >= sz) {
          for(size_t j = 0; j < traces[i].size() - sz; ++j) {

            /** Build the segment */
            CfgPath this_segment;
            for(size_t k = 0; k <= sz; ++k) {
              this_segment.push_back(traces[i][j+k].block_id);
            }

            /** See if it is already listed, it not, list it. */
            auto loc = find(segments.begin(), segments.end(), this_segment);
            auto index = std::distance(segments.begin(), loc);
            if(loc == segments.end()) {
              segments.push_back(this_segment);
              index = segments.size() - 1;
            } 

            /** Add to "matrix" */
            matrix[i][index]++;
          }
        }
      }
    }
  }

  /** Write out the matrix. */
  vector<vector<size_t>> matrix_with_dups;
  for(size_t i = 0; i < sandbox_.size(); ++i) {
    vector<size_t> row;
    for(size_t j = 0; j < target_segments.size(); ++j) {
      row.push_back(target_matrix[i][j]);
    }
    for(size_t j = 0; j < rewrite_segments.size(); ++j) {
      row.push_back(rewrite_matrix[i][j]);
    }
    matrix_with_dups.push_back(row);
  }

  /** Remove duplicate rows */
  vector<vector<size_t>> final_matrix;
  for(size_t i = 0; i < matrix_with_dups.size(); ++i) {
    bool ok = true;
    for(size_t j = 0; j < final_matrix.size(); ++j) {
      if(final_matrix[j] == matrix_with_dups[i]) {
        ok = false;  
        break;
      }
    }
    if(ok)
      final_matrix.push_back(matrix_with_dups[i]);
  }

  /** Debug */
  cout << "DEBUGGING TARGET SEGMENTS" << endl;
  for(auto it : target_segments)
    cout << it << endl;
  cout << "DEBUGGING REWRITE SEGMENTS" << endl;
  for(auto it : rewrite_segments)
    cout << it << endl;

  cout << "DEBUGGUING FREQUENCY MATRICIES" << endl;
  for(size_t i = 0; i < final_matrix.size(); ++i) {
    for(size_t j = 0; j < final_matrix[i].size(); ++j) {
      cout << "  " << final_matrix[i][j];
    }
    cout << endl;
  }

}

vector<Cutpoints::CutpointList> Cutpoints::get_possible_cutpoints() {

  CfgSccs target_sccs(target_);
  CfgSccs rewrite_sccs(rewrite_);

  vector<CutpointList> results;
  size_t n = target_sccs.count();

  if (target_sccs.count() != rewrite_sccs.count()) {
    error_ = "DDEC only works when target/rewrite have the same number of SCCs/loops";
    return results;
  }

  if (n == 0) {
    CutpointList empty;
    results.push_back(empty);
    return results;
  }

  auto permutations = get_permutations(n);


  for (auto pi : permutations) {
    vector<CutpointList> working_set;

    CutpointList empty_list;
    working_set.push_back(empty_list);

    for (size_t j = 0; j < n; ++j) {
      // Working on SCC j of target
      // Working on SCC pi[j] of rewrite
      DEBUG_CUTPOINTS(cout << "Working on SCC pair " << j << " - " << pi[j] << endl;)
      auto target_nodes = target_sccs.get_blocks(j);
      auto rewrite_nodes = rewrite_sccs.get_blocks(pi[j]);

      DEBUG_CUTPOINTS(
        cout << "  - target nodes: ";
      for (auto it : target_nodes) {
      cout << "  " << it;
    }
    cout << endl;
         cout << "  - rewrite nodes: ";
    for (auto it : rewrite_nodes) {
      cout << "  " << it;
    }
    cout << endl;);

      // Create a place to put new cutpoints into.
      vector<CutpointList> new_working_set;

      // For every pair of nodes in (j, pi[j]) we extend each
      for (auto tn : target_nodes) {
        for (auto rn : rewrite_nodes) {
          for (auto old_list : working_set) {
            CutpointList new_list = old_list;
            new_list.first.push_back(tn);
            new_list.second.push_back(rn);
            new_working_set.push_back(new_list);
          }
        }
      }

      working_set = new_working_set;

    }

    for (auto option : working_set) {
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

  for (Cfg::id_type block = cfg.get_entry(); block != cfg.get_exit(); block++) {

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

  for (auto it : to_free)
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

  for (auto state : trace) {
    for (auto candidate : basic_blocks) {
      if (candidate == state.block_id) {
        results.push_back(state);
      }
    }
  }
  return results;
}

/** Find the cutpoint number that a particular trace point / basic block corresponds to */
size_t Cutpoints::which_cutpoint(TracePoint pt, vector<Cfg::id_type>& basic_blocks) {
  for (size_t i = 0; i < basic_blocks.size(); ++i) {
    if (pt.block_id == basic_blocks[i]) {
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
  for (size_t i = 0; i < target_traces_.size(); ++i) {
    auto target_trace = target_traces_[i];
    auto rewrite_trace = rewrite_traces_[i];

    auto target_cut_trace = filter_cutpoints(target_trace, cutpoints.first);
    auto rewrite_cut_trace = filter_cutpoints(rewrite_trace, cutpoints.second);

    // check (i)
    if (target_cut_trace.size() != rewrite_cut_trace.size()) {
      DEBUG_CUTPOINTS(cout << "On trace " << i << " target has " << target_cut_trace.size() <<
                      " cutpoints while rewrite has " << rewrite_cut_trace.size() << endl;)
      return false;
    }

    // check (ii)
    for (size_t j = 0; j < target_cut_trace.size(); ++j) {
      auto target_pt = target_cut_trace[j];
      auto rewrite_pt = rewrite_cut_trace[j];

      if (target_pt.cs.heap != rewrite_pt.cs.heap) {
        DEBUG_CUTPOINTS(cout << "On trace " << i << " target/rewrite disagree on memory." << endl;)
        return false;
      }
      if (target_pt.cs.stack != rewrite_pt.cs.stack) {
        DEBUG_CUTPOINTS(cout << "On trace " << i << " target/rewrite disagree on memory." << endl;)
        return false;
      }
      if (target_pt.cs.data != rewrite_pt.cs.data) {
        DEBUG_CUTPOINTS(cout << "On trace " << i << " target/rewrite disagree on memory." << endl;)
        return false;
      }
      if (target_pt.cs.segments.size() != rewrite_pt.cs.segments.size()) {
        DEBUG_CUTPOINTS(cout << "On trace " << i << " target/rewrite disagree on memory." << endl;)
        return false;
      }
      for (size_t k = 0; k < target_pt.cs.segments.size(); ++k) {
        if (target_pt.cs.segments[k] != rewrite_pt.cs.segments[k]) {
          DEBUG_CUTPOINTS(cout << "On trace " << i << " target/rewrite disagree on memory." << endl;)
          return false;
        }
      }
    }

    // check (iii)
    for (size_t j = 0; j < target_cut_trace.size(); ++j) {
      auto target_pt = target_cut_trace[j];
      auto rewrite_pt = rewrite_cut_trace[j];

      int target_cutpt = which_cutpoint(target_pt, cutpoints.first);
      int rewrite_cutpt = which_cutpoint(rewrite_pt, cutpoints.second);

      assert(target_cutpt != -1);
      assert(rewrite_cutpt != -1);

      if (target_cutpt != rewrite_cutpt) {
        DEBUG_CUTPOINTS(cout << "On trace " << i << " target/rewrite cutpoints don't align." << endl;)
        return false;
      }
    }
  }

  /** Check (iv) */
  for (size_t i = 0; i < cutpoints.first.size(); ++i) {
    for (size_t j = 0; j < cutpoints.first.size(); ++j) {
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


