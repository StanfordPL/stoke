
#include "src/validator/flow_invariant_learner.h"

using namespace std;
using namespace stoke;

void FlowInvariantLearner::initialize(Cfg& target, Cfg& rewrite) {
  target_ = &target;
  rewrite_ = &rewrite;
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
std::vector<T> FlowInvariantLearner::pick_at_random(vector<T> items, size_t count) {
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

  auto target_traces = data_collector_.get_traces(*target_);

  /** Get all pairs of testcases */
  cout << "* getting pairs of testcases" << endl;
  vector<CpuState> target_states;
  vector<CpuState> rewrite_states;
  for (size_t i = 0, ie = target_traces.size(); i < ie; ++i) {
    auto pairs = get_pairs_for_tc(target_block, rewrite_block, i);
    cout << "   - Adding " << pairs.size() << " pairs to collection" << endl;
    for (auto it : pairs) {
      target_states.push_back(it.first);
      rewrite_states.push_back(it.second);
    }
  }

  cout << "* picking variables" << endl;
  vector<Variable> columns = invariant_learner_.pick_variables(*target_, *rewrite_,
                             target_block, rewrite_block);
  auto target_shadows = get_shadow_vars(*target_, false);
  auto rewrite_shadows = get_shadow_vars(*rewrite_, true);
  columns.insert(columns.begin(), target_shadows.begin(), target_shadows.end());
  columns.insert(columns.begin(), rewrite_shadows.begin(), rewrite_shadows.end());

  cout << "* learning equalities" << endl;
  return invariant_learner_.learn_equalities(columns, target_states, rewrite_states);
}



FlowInvariantLearner::TCPairs FlowInvariantLearner::get_pairs_for_tc(
  Cfg::id_type target_block, Cfg::id_type rewrite_block, size_t tc_index) {

  /** These are cached by data collector; no real performance hit here. */
  auto target_traces = data_collector_.get_traces(*target_);
  auto rewrite_traces = data_collector_.get_traces(*rewrite_);

  auto target_trace = target_traces[tc_index];
  auto rewrite_trace = rewrite_traces[tc_index];

  /** Add all the shadow variables we'll need later. */
  add_shadow_variables(*target_, target_trace);
  add_shadow_variables(*rewrite_, rewrite_trace);

  /** Get all program points in target/rewrite for given block and
    take the cross-product. */
  vector<pair<CpuState,CpuState>> pairs;

  for (auto t_state : target_trace) {
    if (t_state.block_id != target_block)
      continue;

    for (auto r_state: rewrite_trace) {
      if (r_state.block_id != rewrite_block)
        continue;

      pairs.push_back(pair<CpuState,CpuState>(t_state.cs, r_state.cs));
    }
  }

  //TODO: optimization.
  // only run this function once and collect all the data for all pairs of program points.
  // add to a data structure with (target point, rewrite point) -> list of pairs
  // call this function from 'initialize'
  // then, instead of calling this, check the data structure

  return pairs;

}

void FlowInvariantLearner::add_shadow_variables(const Cfg& cfg, DataCollector::Trace& trace) {

  /** Ghost values with block counts. */
  map<Cfg::id_type, size_t> block_counts;
  for (Cfg::id_type i = cfg.get_entry(); i < cfg.get_exit(); i++)
    block_counts[i] = 0;

  /** Go through states and update ghost data. */
  for (auto state : trace) {
    auto block = state.block_id;
    auto& cs = state.cs;

    /** Record shadow data in CPU state. */
    block_counts[block]++;
    for (auto pair : block_counts) {
      stringstream ss;
      ss << "n" << pair.first;
      cs.shadow[ss.str()] = pair.second;
    }
  }
}

vector<Variable> FlowInvariantLearner::get_shadow_vars(const Cfg& cfg, bool is_rewrite) {

  vector<Variable> vars;

  for (Cfg::id_type i = cfg.get_entry(); i < cfg.get_exit(); ++i) {
    stringstream ss;
    ss << "n" << i;
    Variable v(ss.str(), is_rewrite);
    vars.push_back(v);
  }

  return vars;
}


