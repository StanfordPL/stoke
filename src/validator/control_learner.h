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

#ifndef STOKE_SRC_VALIDATOR_CONTROL_LEARNER_H
#define STOKE_SRC_VALIDATOR_CONTROL_LEARNER_H

#include "src/cfg/cfg.h"
#include "src/sandbox/sandbox.h"
#include "src/validator/dual.h"
#include "src/validator/indexer.h"
#include "src/validator/int_matrix.h"
#include "src/validator/int_vector.h"

#include <functional>
#include <vector>
#include <map>

//#define DEBUG_CUTPOINTS_DATA

namespace stoke {

class ControlLearner {

public:

  struct TracePoint {
    Cfg::id_type block_id;
    CpuState cs;

    bool operator==(const TracePoint& other) const {
      return block_id == other.block_id;
    }

    bool operator<(const TracePoint& other) const {
      return block_id < other.block_id;
    }
  };

  typedef std::vector<TracePoint> Trace;

  /** Initiates computation of the cutpoints for target/rewrite. */
  ControlLearner(const Cfg& target, const Cfg& rewrite, Sandbox& sandbox) :
    target_(target), rewrite_(rewrite), sandbox_(sandbox) {
    compute();
  }

  std::vector<Trace> get_target_traces() {
    return target_traces_;
  }

  std::vector<Trace> get_rewrite_traces() {
    return rewrite_traces_;
  }

  /** Given two paths, is it possible that these occur together in a real execution? 
    If inductive is true, we're asking about partial paths in a loop.  Otherwise,
    we're asking about whole executions. */
  bool pair_feasible(CfgPath tp, CfgPath rp, bool inductive=true);


  /** Updates dual automata so that all the paths are feasible.  Calls the callback for each one found. Returns true if the callback managed to return true. */
  bool update_dual(DualAutomata& dual, std::function<bool (DualAutomata&)>& callback);

private:

  struct EdgeVariable {
    DualAutomata::Edge edge;
    DualAutomata::Edge inductive_edge;
    bool is_rewrite;

    bool inductive_at_to() {
      return inductive_edge.from == edge.to;
    }

  public:
    EdgeVariable() { }
    EdgeVariable(DualAutomata::Edge a, DualAutomata::Edge b, bool c) :
      edge(a), inductive_edge(b), is_rewrite(c) { }

    std::ostream& print(std::ostream& os) const {
      os << "edge: " << edge.from << " -> " << edge.to << " ; " << edge.te << " ; " << edge.re;
      os << " inductive " << inductive_edge << " rewrite=" << is_rewrite;
      return os;
    }

    bool operator<(const EdgeVariable& other) const {
      if (is_rewrite != other.is_rewrite)
        return (int)is_rewrite < (int)other.is_rewrite;
      if (edge != other.edge)
        return edge < other.edge;
      return inductive_edge < other.inductive_edge;
    }

    bool operator==(const EdgeVariable& other) const {
      return is_rewrite == other.is_rewrite &&
             edge == other.edge &&
             inductive_edge == other.inductive_edge;
    }
  };




  /** This is the main function that computes all the matricies and fills local variables. */
  void compute();

  /** Get a complete trace from running the Cfg on a testcase and save into 'trace' */
  void mine_data(const Cfg& cfg, size_t testcase, Trace& trace);

  /** Helper: Check if a basic block ends with a jump or not. */
  static bool ends_with_jump(const Cfg& cfg, Cfg::id_type block);

  ////////////////////////////// Edge Simplification /////////////////////

  /** Simplify a cfg path */
  static CfgPath simplify(const CfgPath& path);

  /** Get divisors of a number */
  static std::vector<int> get_divisors(int n);

  /** Slice first n elements of vector */
  static CfgPath slice(const CfgPath& path, int n);

  /** Check if a path repeats in another path */
  static bool does_repeat(const CfgPath& pattern, const CfgPath& total);


  ////////////////////////////// COLUMN TRACKING ////////////////////////////////

  bool index_is_target(size_t n);
  bool index_is_rewrite(size_t n);
  Cfg::id_type index_to_block(size_t n);
  size_t target_block_to_index(Cfg::id_type);
  size_t rewrite_block_to_index(Cfg::id_type);
  size_t total_block_indexes() {
    return (target_.num_blocks() + rewrite_.num_blocks() + 1);
  }
  void print_basis_vector(IntVector v);

  ////////////////////////////// DATA-STORAGE //////////////////////////////////

  Cfg target_;
  Cfg rewrite_;
  Sandbox sandbox_;

  std::vector<Trace> target_traces_;
  std::vector<Trace> rewrite_traces_;

  IntMatrix kernel_generators_;

  ////////////////////////////// DATA-MINING CALLBACKS //////////////////////////////////

  struct CallbackParam {
    Cfg::id_type block_id;
    Trace* trace;
  };

  /** The callback used for gathering data from each of the cutpoints */
  static void callback(const StateCallbackData& data, void* arg);

};

} // namespace stoke

#endif
