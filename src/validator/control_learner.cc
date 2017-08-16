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
#include "src/validator/control_learner.h"
#include "src/validator/indexer.h"
#include <fstream>

#define MAX(a,b) ((a) > (b) ? (a) : (b))

#define DEBUG_CUTPOINTS(X) { }


using namespace std;
using namespace stoke;
using namespace x64asm;


IntMatrix remove_duplicate_rows(IntMatrix matrix) {
  /** Remove duplicate rows */
  IntMatrix final_matrix;
  for (size_t i = 0; i < matrix.size(); ++i) {
    bool ok = true;
    for (size_t j = 0; j < final_matrix.size(); ++j) {
      if (final_matrix[j] == matrix[i]) {
        ok = false;
        break;
      }
    }
    if (ok)
      final_matrix.push_back(matrix[i]);
  }
  return final_matrix;
}


/** Remove all constant columns, except the first one. */
IntMatrix ControlLearner::remove_constant_cols(IntMatrix matrix) {
  vector<size_t> constant_columns;
  for (size_t i = 1; i < matrix[0].size(); ++i) {
    bool col_constant = true;
    int64_t starting_value = matrix[0][i];
    for (size_t j = 1; j < matrix.size(); ++j) {
      if (matrix[j][i] != starting_value) {
        col_constant = false;
        break;
      }
    }
    if (col_constant)
      constant_columns.push_back(i);
  }
  IntMatrix output_matrix;
  for (size_t i = 0; i < matrix.size(); ++i) {
    IntVector new_row;
    for (size_t j = 0; j < matrix[i].size(); ++j) {
      if (find(constant_columns.begin(), constant_columns.end(), -1) != constant_columns.end()) {
        new_row.push_back(matrix[i][j]);
      } else {
        new_row.push_back(0);
      }
    }
    output_matrix.push_back(new_row);
  }
  return output_matrix;
}

size_t ControlLearner::target_block_to_index(Cfg::id_type n) {
  assert(n < target_.num_blocks());
  return n+1;
}

size_t ControlLearner::rewrite_block_to_index(Cfg::id_type n) {
  assert(n < rewrite_.num_blocks());
  return n+1+target_.num_blocks();
}

bool ControlLearner::index_is_target(size_t n) {
  return (n != 0) && n < target_.num_blocks() + 1;
}

bool ControlLearner::index_is_rewrite(size_t n) {
  return (n >= target_.num_blocks() + 1);
}

Cfg::id_type ControlLearner::index_to_block(size_t n) {
  assert(n > 0);
  if (n <= target_.num_blocks())
    return n-1;
  else
    return n-target_.num_blocks()-1;
}

void ControlLearner::print_basis_vector(IntVector v) {
  bool first = true;
  for (size_t j = 0; j < v.size(); ++j) {
    if (v[j] != 0 && j != 0) {
      if (!first && v[j] > 0) {
        cout << "+";
      }
      first = false;
      cout << v[j] << "{" << index_to_block(j) << "}";
      if (index_is_rewrite(j))
        cout << "R";
      else
        cout << "T";
    } else if (v[j] != 0 && j == 0) {
      cout << v[j];
      first = false;
    }
  }
  cout << " = 0" << endl;
};


/** Simplify a cfg path */
CfgPath ControlLearner::simplify(const CfgPath& path) {
  cout << "SIMPLIFY " << path << endl;
  auto divisors = get_divisors(path.size());
  for (auto divisor : divisors) {
    auto sub = slice(path, divisor);
    if (does_repeat(sub, path)) {
      cout << "GOT " << sub << endl;
      return sub;
    }
  }
  assert(false);
  return path;
}

/** Get divisors of a number */
std::vector<int> ControlLearner::get_divisors(int n) {
  std::vector<int> results;
  for (int i = 1; i <= n; ++i) {
    if (n % i == 0)
      results.push_back(i);
  }
  return results;
}

/** Slice first n elements of vector */
CfgPath ControlLearner::slice(const CfgPath& path, int n) {
  CfgPath result;
  for (int i = 0; i < n; ++i)
    result.push_back(path[i]);
  return result;
}

/** Check if a path repeats in another path */
bool ControlLearner::does_repeat(const CfgPath& pattern, const CfgPath& total) {
  assert(total.size() % pattern.size() == 0);
  for (size_t i = 0; i < total.size(); ++i) {
    if (total[i] != pattern[i % pattern.size()])
      return false;
  }
  return true;
}

void ControlLearner::compute() {

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
  IntMatrix starting_matrix(sandbox_.size(), total_block_indexes());

  for (size_t is_rewrite = 0; is_rewrite <= 1; is_rewrite++) {
    auto& traces = is_rewrite ? rewrite_traces_ : target_traces_;
    auto& cfg = is_rewrite ? rewrite_ : target_;

    /** For each test case */
    for (size_t i = 0; i < sandbox_.size(); ++i) {


      /** Create columns of 1s */
      starting_matrix[i][0] = 1;

      auto this_trace = traces[i];

      /** For each block in the trace. */
      for (size_t j = 0; j < this_trace.size(); ++j) {

        /** Build the segment */
        auto this_block = this_trace[j].block_id;

        /** Add to matrix */
        auto index = is_rewrite ? rewrite_block_to_index(this_block) : target_block_to_index(this_block);
        starting_matrix[i][index]++;
      }
    }
  }

  auto final_matrix = remove_duplicate_rows(starting_matrix);

  /** Debug */
  cout << "DEBUGGUING FREQUENCY MATRICIES" << endl;
  for (size_t i = 0; i < final_matrix.size(); ++i) {
    for (size_t j = 0; j < final_matrix[i].size(); ++j) {
      cout << "  " << final_matrix[i][j];
    }
    cout << endl;
  }

  kernel_generators_ = final_matrix.solve_diophantine();

  // Print what basis vectors say
  for (size_t i = 0; i < kernel_generators_.size(); ++i) {
    //if (!to_print[i])
    //  continue;
    print_basis_vector(kernel_generators_[i]);
  }

  cout << "MATRIX" << endl;
  kernel_generators_.print();

}


void ControlLearner::mine_data(const Cfg& cfg, size_t testcase, std::vector<TracePoint>& trace) {

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


bool ControlLearner::ends_with_jump(const Cfg& cfg, Cfg::id_type block) {
  size_t instrs = cfg.num_instrs(block);
  if (instrs == 0)
    return false;

  auto loc = Cfg::loc_type(block, instrs-1);
  auto instr = cfg.get_instr(loc);
  return instr.is_any_jump() || instr.is_ret();
}

void ControlLearner::callback(const StateCallbackData& data, void* arg) {
  auto args = *((CallbackParam*)arg);

  TracePoint tp;
  tp.block_id = args.block_id;
  tp.cs = data.state;

  args.trace->push_back(tp);
}




bool ControlLearner::inductive_pair_feasible(CfgPath tp, CfgPath rp) {
  IntVector test(total_block_indexes());
  for (auto it : tp) {
    if (target_.get_exit() == it)
      continue;
    test[target_block_to_index(it)]++;
  }
  for (auto it : rp) {
    if (rewrite_.get_exit() == it)
      continue;
    test[rewrite_block_to_index(it)]++;
  }

  // DEBUGGING (find which relations didn't hold)
  cout << "For pair " << tp << " | " << rp << endl;
  auto mult = kernel_generators_*test;
  for (size_t i = 0; i < mult.size(); ++i) {
    if (mult[i]) {
      print_basis_vector(kernel_generators_[i]);
    }
  }

  return kernel_generators_.in_nullspace(test);
}



DualAutomata ControlLearner::update_dual(DualAutomata& dual) {

  auto dual_paths = dual.get_paths(dual.start_state(), dual.exit_state());
  cout << "PATHS THROUGH DUAL" << endl;
  for (auto path : dual_paths) {
    cout << "PATH" << endl;
    for (auto edge : path) {
      cout << "  " << edge.from << " -> " << edge.to << " ; " << edge.te << " ; "<< edge.re << endl;
    }
  }

  struct EdgeVariable {
    DualAutomata::Edge edge;
    DualAutomata::Edge inductive_edge;
    bool is_rewrite;

  public:
    EdgeVariable(DualAutomata::Edge a, DualAutomata::Edge b, bool c) :
      edge(a), inductive_edge(b), is_rewrite(c) { }

    ostream& print(ostream& os) const {
      os << "edge: " << edge.from << " -> " << edge.to << " ; inductive " << inductive_edge.from << " rewrite=" << is_rewrite;
      return os;
    }

    bool operator<(const EdgeVariable& other) const {
      if (is_rewrite != other.is_rewrite)
        return (int)is_rewrite < (int)other.is_rewrite;
      if (edge != other.edge)
        return edge < other.edge;
      return inductive_edge < other.inductive_edge;
    }
  };

  Indexer<EdgeVariable> edge_indexer;

  /** Build set of all edge variables */
  for (auto path : dual_paths) {
    for (auto edge : path) {
      auto start = edge.from;
      auto end = edge.to;

      auto inductive_start_paths = dual.get_inductive_edges(start);
      for (auto q : inductive_start_paths) {
        edge_indexer.add(EdgeVariable(edge, q, true));
        edge_indexer.add(EdgeVariable(edge, q, false));
      }

      auto inductive_end_paths = dual.get_inductive_edges(end);
      for (auto q : inductive_end_paths) {
        edge_indexer.add(EdgeVariable(edge, q, true));
        edge_indexer.add(EdgeVariable(edge, q, false));
      }
    }
  }

  IntMatrix final_matrix;
  IntVector final_vector;

  cout << "Columns" << endl;
  for (size_t i = 0; i < edge_indexer.count(); ++i) {
    edge_indexer.reverse(i).print(cout) << endl;
  }

  /** Augment the matrix for each path */
  for (auto path : dual_paths) {
    IntMatrix temp_matrix(total_block_indexes(), edge_indexer.count());
    IntVector temp_vect(total_block_indexes());

    /** Initialize the vector with entry blocks and constant term. */
    temp_vect[0] = -1;
    temp_vect[target_block_to_index(target_.get_entry())] = -1;
    temp_vect[rewrite_block_to_index(rewrite_.get_entry())] = -1;


    bool found_inductive_path = false;

    /** Process the edges along the path. */
    for (auto edge : path) {
      cout << "Edge: ";
      for (auto it : edge.te)
        cout << it << " ";
      cout << " ; ";
      for (auto it : edge.re)
        cout << it << " ";
      cout << endl;


      auto start = edge.from;
      auto end = edge.to;
      size_t index;

      for (auto blk : edge.te) {
        if (blk == target_.get_exit())
          continue;
        temp_vect[target_block_to_index(blk)]--;
      }
      for (auto blk : edge.re) {
        if (blk == rewrite_.get_exit())
          continue;
        temp_vect[rewrite_block_to_index(blk)]--;
      }

      auto inductive_start_paths = dual.get_inductive_edges(start);
      auto inductive_end_paths = dual.get_inductive_edges(end);

      for (auto start_ind : inductive_start_paths) {
        found_inductive_path = true;
        /*
        cout << "StartInd: ";
        for (auto it : start_ind.te)
          cout << it << " ";
        cout << " ; ";
        for (auto it : start_ind.re)
          cout << it << " ";
        cout << endl;
        */

        EdgeVariable ev_target(edge, start_ind, false);
        EdgeVariable ev_rewrite(edge, start_ind, true);
        for (auto blk : simplify(start_ind.te)) {
          temp_matrix[target_block_to_index(blk)][edge_indexer[ev_target]]++;
        }
        for (auto blk : simplify(start_ind.re)) {
          temp_matrix[rewrite_block_to_index(blk)][edge_indexer[ev_rewrite]]++;
        }
      }
      for (auto end_ind : inductive_end_paths) {
        found_inductive_path = true;
        /*
        cout << "EndInd: ";
        for (auto it : end_ind.te)
          cout << it << " ";
        cout << " ; ";
        for (auto it : end_ind.re)
          cout << it << " ";
        cout << endl;
        */

        EdgeVariable ev_target(edge, end_ind, false);
        EdgeVariable ev_rewrite(edge, end_ind, true);
        for (auto blk : simplify(end_ind.te)) {
          temp_matrix[target_block_to_index(blk)][edge_indexer[ev_target]]++;
        }
        for (auto blk : simplify(end_ind.re)) {
          temp_matrix[rewrite_block_to_index(blk)][edge_indexer[ev_rewrite]]++;
        }
      }
    }

    if (!found_inductive_path)
      continue;

    cout << "CONSTRAINT MATRIX" << endl;
    kernel_generators_.print();
    cout << "Matrix" << endl;
    temp_matrix.print();
    cout << "Vector" << endl;
    temp_vect.print();

    temp_matrix = kernel_generators_*temp_matrix;
    temp_vect = kernel_generators_*temp_vect;

    cout << "New Matrix" << endl;
    temp_matrix.print();
    cout << "New Vector" << endl;
    temp_vect.print();

    for (size_t i = 0; i < temp_vect.size(); ++i) {
      if (temp_vect[i]) {
        print_basis_vector(kernel_generators_[i]);
      }
    }


    for (auto row : temp_matrix)
      final_matrix.push_back(row);
    for (auto entry : temp_vect)
      final_vector.push_back(entry);
  }

  //find nullspace
  auto nullspace = final_matrix.solve_diophantine();
  cout << "NULLSPACE" << endl;
  nullspace.print();

  return dual;

}
