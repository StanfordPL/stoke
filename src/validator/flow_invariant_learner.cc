
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

  /** Fetch and unzip the pairs */
  auto pairs = test_case_pairs_[pair<Cfg::id_type, Cfg::id_type>(target_block, rewrite_block)];
  vector<CpuState> target_states;
  vector<CpuState> rewrite_states;
  for(auto it : pairs) {
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
  if(target_states.size() == 0) {
    auto ci = new ConjunctionInvariant();
    return ci;
  }

  return invariant_learner_.learn_equalities(columns, target_states, rewrite_states);
}

ConjunctionInvariant* FlowInvariantLearner::transform_invariant(ConjunctionInvariant* conj,
    std::vector<CfgPath>& target_paths, std::vector<CfgPath>& rewrite_paths) {
  return conj;
}



void FlowInvariantLearner::collect_data(size_t tc_index) {

  /** These are cached by data collector; no real performance hit here. */
  auto target_traces = data_collector_.get_traces(*target_);
  auto rewrite_traces = data_collector_.get_traces(*rewrite_);

  /** Pick out the traces we're interested in. */
  auto target_trace = target_traces[tc_index];
  auto rewrite_trace = rewrite_traces[tc_index];

  assert(target_trace.size() > 0);
  assert(rewrite_trace.size() > 0);

  /** Add all the shadow variables we'll need later. */
  add_shadow_variables(*target_, target_trace);
  add_shadow_variables(*rewrite_, rewrite_trace);

  /** Get all program points in target/rewrite for given block and
    take the cross-product. */
  for (auto t_state : target_trace) {
    for (auto r_state: rewrite_trace) {
      auto index = pair<Cfg::id_type, Cfg::id_type>(t_state.block_id, r_state.block_id);
      test_case_pairs_[index].push_back(pair<CpuState,CpuState>(t_state.cs, r_state.cs));
    }
  }

  /** Get the ending states. */
  auto last_target_state = target_trace.back().cs;
  auto last_rewrite_state = rewrite_trace.back().cs;
  auto last_pair = pair<CpuState, CpuState>(last_target_state, last_rewrite_state);
  test_outputs_.push_back(last_pair);

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


bool FlowInvariantLearner::check_inductive_path(CfgPath target_path, CfgPath rewrite_path) {
  return false;
}
