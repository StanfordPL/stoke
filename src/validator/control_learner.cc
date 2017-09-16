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
#include "src/validator/abstractions/block.h"
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
  auto divisors = get_divisors(path.size());
  for (auto divisor : divisors) {
    auto sub = slice(path, divisor);
    if (does_repeat(sub, path)) {
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
  //cout << "For pair " << tp << " | " << rp << endl;
  auto mult = kernel_generators_*test;
  for (size_t i = 0; i < mult.size(); ++i) {
    if (mult[i]) {
      print_basis_vector(kernel_generators_[i]);
    }
  }

  return kernel_generators_.in_nullspace(test);
}


bool is_prefix(const vector<Abstraction::State>& tr1, const Abstraction::FullTrace& tr2) {
  if (tr1.size() > tr2.size()) {
    //cout << "     tr1:" << tr1.size() << " > tr2:" << tr2.size() << endl;
    return false;
  }

  for (size_t i = 0; i < tr1.size(); ++i) {
    //cout << "      tr1[" << i << "]=" << tr1[i] << "; tr2[" << i << "]=" << tr2[i].first << endl;
    if (tr1[i] != tr2[i].first) {
      return false;
    }
  }

  return true;
}

void remove_prefix(const vector<Abstraction::State>& tr1, Abstraction::FullTrace& tr2) {
  assert(is_prefix(tr1, tr2));

  for (size_t i = 0; i < tr1.size(); ++i) {
    tr2.erase(tr2.begin());
  }
}


bool ControlLearner::dfs_find_path_vars(DualAutomata& dual,
                                        std::map<size_t, std::set<size_t>>& outputs,
                                        std::map<size_t, size_t> counts_so_far,
                                        Indexer<EdgeVariable>& edge_indexer,
                                        DualAutomata::State state,
                                        DualAutomata::Edge last_edge,
                                        bool passed_preinductive_loop_target,
                                        bool passed_inductive_loop_target,
                                        bool passed_preinductive_loop_rewrite,
                                        bool passed_inductive_loop_rewrite,
                                        Abstraction::FullTrace target_left,
                                        Abstraction::FullTrace rewrite_left) {

  cout << "DFS CALLED state=" << state << endl;
  auto try_variable_edge = [&](DualAutomata::Edge edge, EdgeVariable v) -> bool {

    auto e = v.inductive_edge;
    auto next_state = e.to;
    auto next_target_left = target_left;
    auto next_rewrite_left = rewrite_left;

    auto next_passed_preinductive_loop_target = passed_preinductive_loop_target;
    auto next_passed_inductive_loop_target = passed_preinductive_loop_target;
    auto next_passed_preinductive_loop_rewrite = passed_inductive_loop_rewrite;
    auto next_passed_inductive_loop_rewrite = passed_inductive_loop_rewrite;

    int index = edge_indexer[v];

    if (v.is_rewrite) {
      if (!is_prefix(simplify(e.re), rewrite_left)) {
        if (counts_so_far.count(index) == 0)
          counts_so_far[index] = 0;
        return false;
      }
      remove_prefix(simplify(e.re), next_rewrite_left);
      if (edge.to != state) {
        next_passed_preinductive_loop_rewrite = true;
        next_passed_inductive_loop_rewrite = true;
      }
    } else {
      if (!is_prefix(simplify(e.te), target_left)) {
        if (counts_so_far.count(index) == 0)
          counts_so_far[index] = 0;
        return false;
      }
      remove_prefix(simplify(e.te), next_target_left);
      if (edge.to != state) {
        next_passed_preinductive_loop_target = true;
        next_passed_inductive_loop_target = true;
      }
    }

    cout << "Taking variable edge ";
    v.print(cout) << endl;

    auto next_counts = counts_so_far;
    next_counts[index]++;

    return dfs_find_path_vars(dual, outputs, next_counts, edge_indexer, next_state, edge,
                              next_passed_preinductive_loop_target,
                              next_passed_inductive_loop_target,
                              next_passed_preinductive_loop_rewrite,
                              next_passed_inductive_loop_rewrite,
                              next_target_left, next_rewrite_left);
  };


  auto try_edge = [&](DualAutomata::Edge e, bool inductive_edge = false) -> bool {
    cout << "Considering edge " << e << endl;

    if (!is_prefix(e.te, target_left))
      return false;
    if (!is_prefix(e.re, rewrite_left))
      return false;

    cout << "Taking edge " << e << endl;

    auto next_state = e.to;
    auto next_target_left = target_left;
    auto next_rewrite_left = rewrite_left;
    remove_prefix(e.te, next_target_left);
    remove_prefix(e.re, next_rewrite_left);
    return dfs_find_path_vars(dual, outputs, counts_so_far, edge_indexer, next_state, e,
                              inductive_edge, inductive_edge, inductive_edge, inductive_edge,
                              next_target_left, next_rewrite_left);
  };

  bool success = false;

  // If we're starting in an exit state, then add counts_so_far to the outputs and return
  if (state == dual.exit_state()) {
    /*
    for(size_t i = 0; i < edge_indexer.count(); ++i) {
      outputs[i].insert(counts_so_far[i]);
    }
    */
    for (auto p : counts_so_far) {
      outputs[p.first].insert(p.second);
    }
    return true;
  }

  // Find edges where we're at
  auto edges = dual.next_edges(state);
  auto prev_edges = dual.prev_edges(state);
  auto inductive_edges = dual.get_inductive_edges(state);

  // easy case for non-inductive edges!
  // for each edge, check if the edge is a prefix of target_left and rewrite_left
  for (auto e : edges) {
    if (e.to == state) {
      // it's an inductive edge, more complicated

      if (!passed_preinductive_loop_target && !last_edge.empty_) {
        EdgeVariable ev(last_edge, e, false);
        success |= try_variable_edge(e, ev);
      }
      if (!passed_preinductive_loop_rewrite && !last_edge.empty_) {
        EdgeVariable ev(last_edge, e, true);
        success |= try_variable_edge(e, ev);
      }
      if (!passed_inductive_loop_target) {
        success |= try_edge(e, true);
      }
      if (!passed_inductive_loop_rewrite) {
        success |= try_edge(e, true);
      }
      {
        for (size_t is_rewrite = 0; is_rewrite <= 1; is_rewrite++) {
          for (auto next_edge : edges) {
            if (next_edge.to == state)
              continue;
            EdgeVariable ev(next_edge, e, is_rewrite);
            success |= try_variable_edge(e, ev);
          }
        }
      }

    } else {
      // easy case; take a non-inductive edge
      success |= try_edge(e);
    }
  }

  return success;

}



bool ControlLearner::update_dual(DualAutomata& dual, function<bool (DualAutomata&)>& callback) {

  auto dual_paths = dual.get_paths(dual.start_state(), dual.exit_state());
  cout << "PATHS THROUGH DUAL" << endl;
  for (auto path : dual_paths) {
    cout << "PATH" << endl;
    for (auto edge : path) {
      cout << "  " << edge.from << " -> " << edge.to << " ; " << edge.te << " ; "<< edge.re << endl;
    }
  }

  Indexer<EdgeVariable> edge_indexer;
  // put all the edge variables into a map so that we can go through them properly
  vector<pair<EdgeVariable, EdgeVariable>> edge_list;

  map<DualAutomata::Edge, bool> visited_edge;

  /** Build set of all edge variables */
  for (auto path : dual_paths) {
    for (auto edge : path) {
      if (visited_edge[edge])
        continue;
      visited_edge[edge] = true;

      auto start = edge.from;
      auto end = edge.to;

      auto inductive_start_paths = dual.get_inductive_edges(start);
      for (auto q : inductive_start_paths) {
        //cout << "For " << edge << " we have start inductive edge " << q << endl;
        auto a = EdgeVariable(edge, q, false);
        auto b = EdgeVariable(edge, q, true);
        edge_list.push_back({a, b});
        edge_indexer.add(a);
        edge_indexer.add(b);
      }

      auto inductive_end_paths = dual.get_inductive_edges(end);
      for (auto q : inductive_end_paths) {
        //cout << "For " << edge << " we have end inductive edge " << q << endl;
        auto a = EdgeVariable(edge, q, false);
        auto b = EdgeVariable(edge, q, true);
        edge_list.push_back({a, b});
        edge_indexer.add(a);
        edge_indexer.add(b);
      }
    }
  }

  cout << "Columns" << endl;
  for (size_t i = 0; i < edge_indexer.count(); ++i) {
    cout << i << ": ";
    edge_indexer.reverse(i).print(cout) << endl;
  }

  IntVector assignment;
  for (size_t i = 0; i < edge_indexer.count(); ++i) {
    assignment.push_back(0);
  }

  /*
  /////////////////

  BlockAbstraction target_abs(target_, sandbox_);
  BlockAbstraction rewrite_abs(rewrite_, sandbox_);

  for(size_t i = 0; i < sandbox_.size(); ++i) {
    auto target_ft = target_abs.learn_trace(*sandbox_.get_input(i), false);
    auto rewrite_ft = rewrite_abs.learn_trace(*sandbox_.get_input(i), false);
    target_ft.push_back(target_ft[target_ft.size()-1]);
    rewrite_ft.push_back(rewrite_ft[rewrite_ft.size()-1]);
    target_ft[target_ft.size()-1].first = target_.get_exit();
    rewrite_ft[rewrite_ft.size()-1].first = rewrite_.get_exit();

    std::map<size_t, std::set<size_t>> outputs;

    // bookkeeping
    std::map<size_t, size_t> counts_so_far;

    bool success = dfs_find_path_vars(dual,
                                      outputs,
                                      counts_so_far,
                                      edge_indexer,
                                      dual.start_state(),
                                      DualAutomata::Edge(),
                                      false, false, false, false,
                                      target_ft, rewrite_ft);

    cout << "TC " << i << " Success: " << success << endl;
    for(auto it : outputs) {
      cout << "Variable " << it.first << " has values ";
      for(auto v : it.second) {
        cout << v << " ";
      }
      cout << endl;
    }

  }
  */

  /////////////////

  // along path from entry to main vectorized loop
  assignment[0] = 1;
  /*

  // exit from main loop
  assignment[4] = 8;
  assignment[8] = 1;
  assignment[12] = 2;
  assignment[16] = 3;
  assignment[20] = 4;
  assignment[24] = 5;
  assignment[28] = 6;
  assignment[32] = 7;

  // path from alignment loop to main loop
  assignment[68] = 1;

  // exit from beginning?

  // exit from pre-loop
  assignment[44] = 1;
  assignment[46] = 2;
  assignment[48] = 3;
  assignment[50] = 4;
  assignment[52] = 5;
  assignment[54] = 6;
  assignment[56] = 7;
  */

  auto new_dual = update_dual_with_vars(dual, edge_indexer, assignment, edge_list);
  return callback(new_dual);

}

DualAutomata ControlLearner::update_dual_with_vars(const DualAutomata& dual, Indexer<EdgeVariable>& edge_indexer, IntVector vars, vector<pair<EdgeVariable, EdgeVariable>>& edge_list) {
  auto dual_copy = dual;
  vars.print();
  for (size_t i = 0; i < vars.size(); ++i) {
    if (vars[i] != 0) {
      cout << "Add " << vars[i] << " of ";
      edge_indexer.reverse(i).print(cout) << endl;
    }
  }

  // Update the dual automata with edges needed
  for (auto edge_var_pair : edge_list) {
    auto ev1 = edge_var_pair.first;
    auto ev2 = edge_var_pair.second;
    assert(ev1.edge == ev2.edge);
    assert(ev1.inductive_edge == ev2.inductive_edge);

    auto edge_to_update = ev1.edge;
    auto inductive_edge = ev1.inductive_edge;

    auto target_count = vars[edge_indexer[ev1]];
    auto rewrite_count = vars[edge_indexer[ev2]];

    assert(target_count >= 0);
    assert(rewrite_count >= 0);
    if (target_count == 0 && rewrite_count == 0)
      continue;

    auto new_edge = edge_to_update;
    if (ev1.inductive_at_to()) {
      cout << "Inductive -- to" << endl;
      for (size_t i = 0; i < (size_t)target_count; ++i) {
        auto simple = simplify(inductive_edge.te);
        for (size_t j = 0; j < simple.size(); ++j) {
          new_edge.te.push_back(simple[j]);
        }
      }
      for (size_t i = 0; i < (size_t)rewrite_count; ++i) {
        auto simple = simplify(inductive_edge.re);
        for (size_t j = 0; j < simple.size(); ++j) {
          new_edge.re.push_back(simple[j]);
        }
      }
    } else {
      cout << "Inductive -- from" << endl;
      auto& te = new_edge.te;
      for (size_t i = 0; i < (size_t)target_count; ++i) {
        auto simple = simplify(inductive_edge.te);
        te.insert(te.begin(), simple.begin(), simple.end());
      }
      auto& re = new_edge.re;
      for (size_t i = 0; i < (size_t)rewrite_count; ++i) {
        auto simple = simplify(inductive_edge.re);
        re.insert(re.begin(), simple.begin(), simple.end());
      }
    }
    cout << "target_count = " << target_count << " rewrite_count = " << rewrite_count << endl;

    cout << "Replacing " << edge_to_update << " with " << new_edge << " via " << inductive_edge << endl;
    dual_copy.remove_edge(edge_to_update);
    dual_copy.add_edge(new_edge);
  }

  return dual_copy;
}

IntVector ControlLearner::find_best_solution_ilp(IntMatrix space, IntVector initial, int col_to_optimize = -1) {
  auto matrix = space;
  cout << "Writing out sage code for ILP" << endl;
  ofstream of("in.sage");
  of << "rows=" << matrix.rows() << endl;
  of << "cols=" << matrix.cols() << endl;
  of << "ZZ=IntegerRing()" << endl;
  of << "A = MatrixSpace(ZZ, rows, cols)([";
  for (size_t i = 0; i < matrix.size(); ++i) {
    for (size_t j = 0; j < matrix[i].size(); ++j) {
      of << matrix[i][j];
      if (i < matrix.size() - 1 || j < matrix[i].size() - 1)
        of << ", ";
    }
  }
  of << "])" << endl;
  of << "A = A.transpose()" << endl;
  of << "initial_soln = vector([";
  for (size_t i = 0; i < initial.size(); ++i) {
    of << initial[i] << ", ";
  }
  of << "])" << endl;
  of << "p = MixedIntegerLinearProgram(maximization=false)" << endl;
  of << "x = p.new_variable(integer=true)" << endl;
  of << "p.add_constraint(A*x + initial_soln >= 0)" << endl;
  if (col_to_optimize == -1) {
    of << "p.set_objective(sum(A*x + initial_soln))" << endl;
  } else {
    of << "p.set_objective((A*x + initial_soln)[" << col_to_optimize << "])" << endl;
  }
  of << "p.solve()" << endl;
  of << "solution = vector([p.get_values(x)[i] for i in range(0,rows)])" << endl;
  of << "image = A*solution + initial_soln" << endl;
  of << "for entry in range(0,cols):" << endl;
  of << "\tprint int(image[entry])" << endl;
  of << endl;
  of.close();
  int status = system("timeout 15s sage in.sage > sage.out 2>sage.err");

  IntVector output;
  IntVector zero;
  ifstream in("sage.out");
  for (size_t i = 0; i < matrix.cols(); ++i) {
    int64_t x;
    in >> x;

    /** Check to make sure that we don't have any parser errors */
    if (!in.good()) {
      return zero;
    }

    output.push_back(x);
  }

  return output;

}
