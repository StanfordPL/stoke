
#include "src/validator/invariants/equality.h"

#include <cstdlib>
#include "src/validator/flow_invariant_learner.h"

using namespace std;
using namespace stoke;

void FlowInvariantLearner::initialize(Cfg& target, Cfg& rewrite) {
  target_ = &target;
  rewrite_ = &rewrite;

  auto target_traces = data_collector_.get_traces(*target_);

  /** Get all pairs of testcases */
  cout << "* getting pairs of testcases" << endl;
  for (size_t i = 0, ie = target_traces.size(); i < ie; ++i) {
    cout << "  * processing testcase " << i << " / " << ie << endl;
    collect_data(i);
  }
}

void remove_duplicates(vector<CpuState>& states) {

  for (size_t i = 0; i < states.size(); ++i) {
    for (size_t j = 0; j < i; ++j) {
      if (states[i] == states[j]) {
        states.erase(states.begin() + i);
        i--;
        break;
      }
    }
  }
}

template<typename T>
std::vector<T> FlowInvariantLearner::pick_at_random(const vector<T>& items, size_t count) {
  if (count > items.size()) {
    return items;
  }

  std::vector<T> chosen;
  auto remaining = items;

  for (size_t i = 0; i < count; ++i) {
    size_t pick_from = remaining.size();
    uniform_int_distribution<size_t> dis(0, pick_from-1);

    size_t choice = dis(gen_);
    chosen.push_back(remaining[choice]);
    remaining.erase(remaining.begin() + choice);
  }

  return chosen;
}

ConjunctionInvariant* FlowInvariantLearner::get_invariant(Cfg::id_type target_block,
    Cfg::id_type rewrite_block) {
  
  /** These are cached by data collector; no real performance hit here. */
  const auto& target_traces = data_collector_.get_traces(*target_);
  const auto& rewrite_traces = data_collector_.get_traces(*rewrite_);

  while(true) {
    auto inv = get_invariant_inner(target_block, rewrite_block);
    bool bad = false;

    cout << "[fil] Checking invariant..." << endl;
    // test this invariant
    for(size_t tc_index = 0; tc_index < target_traces.size(); ++tc_index) {
      /** Pick out the traces we're interested in. */
      auto target_trace = target_traces[tc_index];
      auto rewrite_trace = rewrite_traces[tc_index];

      /** Add all the shadow variables we'll need later. */
      add_shadow_variables(*target_, target_trace);
      add_shadow_variables(*rewrite_, rewrite_trace);

      /** Get all program points in target/rewrite for given block and
        take the cross-product. */
      pair<Cfg::id_type, Cfg::id_type> index(0, 0);
      pair<CpuState, CpuState> state_pair;
      for (auto t_state : target_trace) {
        for (auto r_state: rewrite_trace) {
          if(t_state.block_id == target_block && r_state.block_id == rewrite_block) {
            bool holds = inv->check(t_state.cs, r_state.cs);
            if(!holds) {
              cout << "[fil] ... these invariants are spurious on trace tc_index=" << tc_index << endl;
              // add this data point
              index.first = t_state.block_id; 
              index.second = r_state.block_id;
              state_pair.first = t_state.cs;
              state_pair.second = r_state.cs;
              test_case_pairs_[index].push_back(state_pair);

              // retry
              bad = true;
              break;
            }
          }
        }
        if(bad)
          break;
      }
      if(bad)
        break;
    }
    if(!bad) {
      cout << "[fil] ... these invariants hold over all test data." << endl;
      return inv;
    }
  }
}

ConjunctionInvariant* FlowInvariantLearner::get_invariant_inner(Cfg::id_type target_block,
    Cfg::id_type rewrite_block) {

  /** Fetch and unzip the pairs */
  auto pairs = test_case_pairs_[pair<Cfg::id_type, Cfg::id_type>(target_block, rewrite_block)];
  vector<CpuState> target_states;
  vector<CpuState> rewrite_states;
  for (auto it : pairs) {
    target_states.push_back(it.first);
    rewrite_states.push_back(it.second);
  }

  cout << "* picking variables" << endl;
  vector<Variable> columns = invariant_learner_.pick_variables(*target_, *rewrite_,
                             target_block, rewrite_block);
  auto target_shadows = get_shadow_vars(*target_, false);
  auto rewrite_shadows = get_shadow_vars(*rewrite_, true);
  columns.insert(columns.begin(), target_shadows.begin(), target_shadows.end());
  columns.insert(columns.begin(), rewrite_shadows.begin(), rewrite_shadows.end());

  cout << "* learning equalities" << endl;
  if (target_states.size() == 0) {
    auto ci = new ConjunctionInvariant();
    return ci;
  }

  return invariant_learner_.learn_equalities(columns, target_states, rewrite_states);
}

ConjunctionInvariant* FlowInvariantLearner::transform_invariant(ConjunctionInvariant* conj,
    std::vector<CfgPath>& target_paths, std::vector<CfgPath>& rewrite_paths) {

  /** The conjunction contains invariants, which we write in the form

    f1(N) = g1(R)
    f2(N) = g2(R)
    ...
    fk(N) = gk(R)

    here, N is a vector of the shadow variables n1,...
    R is a vector of the registers
    Each fi and gi is a linear function, with fi(0) = 0.

    Now, if v_1,v_2,... are vectors encoding the counts of basic blocks
    then we are looking for a function f = a_1f_1 + a_2f_2 + ... + a_kf_k
    such that f(N + v_i) = f(N) for all i.  Since f is linear, that just
    means that f(v_i) = 0 for all i.  Or, that

    sum_{i} f(v_i) = sum_{i,j} a_jf_j(v_i) = 0

    That's just a linear system of equations to solve.  We get the answers out,
    and it tells us every possible 'f' that we might want to build.  Then we throw
    out some of the basis vectors if they don't have a corresponding g term that's
    meaningful to us.  Lastly, we work out the corresponding g() functions, and those
    are our invariants!! */

  if (target_paths.size() == 0)
    return conj;

  assert(target_paths.size() == rewrite_paths.size());
  size_t invariant_count = conj->size();
  size_t path_count = target_paths.size();

  IntMatrix matrix(path_count, invariant_count);
  for (size_t i = 0; i < path_count; ++i) {
    for (size_t j = 0; j < invariant_count; ++j) {

      // compute f_j(v_i) and add it to the matrix.
      uint64_t value = 0;
      auto target_path = target_paths[i];
      auto rewrite_path = rewrite_paths[i];

      auto invariant = static_cast<EqualityInvariant*>((*conj)[j]);
      auto variables = invariant->get_variables();

      for (size_t m = 0; m < variables.size(); ++m) {
        // if variables[m] appears in a path, then multiply the number of times
        // it appears with the coefficient of that variable

        auto variable = variables[m];
        if (!variable.is_ghost)
          continue;

        auto& path = variable.is_rewrite ? rewrite_path : target_path;

        Cfg::id_type block = variable.get_ghost_bb();
        uint64_t count = 0;
        for (auto blk : path) {
          if (blk == block)
            count++;
        }
        cout << "     looked for " << variable << " on path " << path << " and found " << count << " with multiplier " << variable.coefficient << endl;
        value += count*(uint64_t)(variable.coefficient);
      }

      matrix[i][j] = value;
    }
  }

  cout << "DEBUGING TRANSFORM MATRIX" << endl;
  matrix.print();

  auto solutions = matrix.solve_diophantine();

  cout << "DEBUGING TRANSFORM MATRIX NULLSPACE" << endl;
  solutions.print();

  auto transformed = new ConjunctionInvariant();
  for (auto& solution : solutions) {
    vector<Variable> terms;
    size_t non_ghost_count = 0;
    for (size_t i = 0; i < solution.size(); ++i) {
      auto invariant = static_cast<EqualityInvariant*>((*conj)[i]);
      auto variables = invariant->get_variables();
      auto multiplier = solution[i];
      if (multiplier == 0)
        continue;
      cout << "   adding " << multiplier << " copies of " << *invariant << endl;

      for (size_t j = 0; j < variables.size(); ++j) {
        auto term = variables[j];
        cout << "         " << term << endl;
        term.coefficient *= multiplier;
        terms.push_back(term);
        if (term.is_ghost == false)
          non_ghost_count++;
      }
    }

    if (non_ghost_count) {
      auto ei = new EqualityInvariant(terms, 0);
      transformed->add_invariant(ei);
    }
  }

  return transformed;
}



void FlowInvariantLearner::collect_data(size_t tc_index) {

  /** These are cached by data collector; no real performance hit here. */
  const auto& target_traces = data_collector_.get_traces(*target_);
  const auto& rewrite_traces = data_collector_.get_traces(*rewrite_);

  /** Pick out the traces we're interested in. */
  auto target_trace = target_traces[tc_index];
  auto rewrite_trace = rewrite_traces[tc_index];

  assert(target_trace.size() > 0);
  assert(rewrite_trace.size() > 0);

  /** Add all the shadow variables we'll need later. */
  add_shadow_variables(*target_, target_trace);
  add_shadow_variables(*rewrite_, rewrite_trace);

  /** Make sure that the trace is valid */
  auto last_target = target_trace.back().cs;
  auto last_rewrite = rewrite_trace.back().cs;
  if(last_target.code != ErrorCode::NORMAL) {
    cerr << "Target fails on test case " << tc_index << endl;
    exit(1);
  }
  if(last_rewrite.code != ErrorCode::NORMAL) {
    cerr << "Rewrite fails on test case " << tc_index << endl;
    exit(1);
  }


  /** Get all program points in target/rewrite for given block and
    take the cross-product. */
  pair<Cfg::id_type, Cfg::id_type> index(0, 0);
  pair<CpuState, CpuState> state_pair;
  srand(0);
  for (auto t_state : target_trace) {
    for (auto r_state: rewrite_trace) {
      index.first = t_state.block_id; 
      index.second = r_state.block_id;
      size_t count = test_case_pairs_[index].size();
      double cutoff = count > 0 ? (double)100/(double)count : 1.0;
      double value = (double)rand()/RAND_MAX;
      if(value < cutoff) {
        state_pair.first = t_state.cs;
        state_pair.second = r_state.cs;
        test_case_pairs_[index].push_back(state_pair);
      }
    }
  }

  /** Get the ending states. */
  /*
  auto last_target_state = target_trace.back().cs;
  auto last_rewrite_state = rewrite_trace.back().cs;
  auto last_pair = pair<CpuState, CpuState>(last_target_state, last_rewrite_state);
  test_outputs_.push_back(last_pair); */

}

void FlowInvariantLearner::add_shadow_variables(const Cfg& cfg, DataCollector::Trace& trace) {

  /** Ghost values with block counts. */
  map<Cfg::id_type, size_t> block_counts;
  for (Cfg::id_type i = cfg.get_entry(); i < cfg.get_exit(); i++)
    block_counts[i] = 0;

  /** Go through states and update ghost data. */
  for (auto& state : trace) {
    auto block = state.block_id;
    auto& cs = state.cs;

    /** Record shadow data in CPU state. */
    block_counts[block]++;
    for (auto pair : block_counts) {
      auto v = Variable::bb_ghost(pair.first, false).name;
      cs.shadow[v] = pair.second;
    }
  }
}

vector<Variable> FlowInvariantLearner::get_shadow_vars(const Cfg& cfg, bool is_rewrite) {

  vector<Variable> vars;

  for (Cfg::id_type i = cfg.get_entry(); i < cfg.get_exit(); ++i) {
    auto v = Variable::bb_ghost(i, is_rewrite);
    vars.push_back(v);
  }

  return vars;
}

