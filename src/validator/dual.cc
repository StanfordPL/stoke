
#include "src/validator/dual.h"

using namespace stoke;
using namespace std;

bool DualAutomata::State::operator<(const DualAutomata::State& other) const {
  if (this->ts < other.ts) {
    return true;
  } else if (this->ts == other.ts) {
    return this->rs < other.rs;
  } else {
    return false;
  }
}

DualAutomata::Edge::Edge(DualAutomata::State tail, const vector<Abstraction::State>& tp, const vector<Abstraction::State>& rp) {
  from = tail;
  te = tp;
  re = rp;

  if (tp.size()) {
    to.ts = tp.back();
  } else {
    to.ts = from.ts;
  }

  if (rp.size()) {
    to.rs = rp.back();
  } else {
    to.rs = from.rs;
  }
}

bool is_prefix(const vector<Abstraction::State>& tr1, const vector<pair<Abstraction::State, CpuState>>& tr2) {
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

CpuState remove_prefix(const vector<Abstraction::State>& tr1, vector<pair<Abstraction::State, CpuState>>& tr2) {
  assert(is_prefix(tr1, tr2));

  CpuState last;
  for (size_t i = 0; i < tr1.size(); ++i) {
    last = tr2[0].second;
    tr2.erase(tr2.begin());
  }

  return last;
}

void DualAutomata::learn_invariants(Sandbox& sb) {

  struct TraceState {
    State state;
    vector<pair<Abstraction::State, CpuState>> target_trace;
    vector<pair<Abstraction::State, CpuState>> rewrite_trace;
  };

  reachable_states_.clear();
  invariants_.clear();
  target_state_data_.clear();
  rewrite_state_data_.clear();

  // Step 1: get data at each state.
  for (size_t i = 0; i < sb.size(); ++i) {
    auto target_trace = target_->learn_trace(*sb.get_input(i));
    auto rewrite_trace = rewrite_->learn_trace(*sb.get_input(i));

    cout << "target trace: ";
    for(size_t i = 0; i < target_trace.size(); ++i) {
      cout << target_trace[i].first << " ";
    }
    cout << endl;

    cout << "rewrite trace: ";
    for(size_t i = 0; i < rewrite_trace.size(); ++i) {
      cout << rewrite_trace[i].first << " ";
    }
    cout << endl;



    // figure out all the possible paths this could correspond to through the dual automata
    TraceState initial;
    initial.state = start_state();
    initial.target_trace = target_trace;
    initial.rewrite_trace = rewrite_trace;

    vector<TraceState> current;
    vector<TraceState> next;
    next.push_back(initial);
    reachable_states_.insert(initial.state);

    target_state_data_[initial.state].push_back(*sb.get_input(i));
    rewrite_state_data_[initial.state].push_back(*sb.get_input(i));

    while (next.size()) {
      current = next;
      next.clear();

      for (auto tr_state : current) {
        //cout << "processing trace state @ " << tr_state.state << endl;
        for (auto edge : next_edges_[tr_state.state]) {
          //cout << "  Considering edge: " << edge.from << " -> " << edge.to << endl;
          // check if edge's target path is prefix of tr_state's target path
          if (!is_prefix(edge.te, tr_state.target_trace)) {
            //cout << "  target prefix fail" << endl;
            continue;
          }

          // check if edge's rewrite path is prefix of tr_state's rewrite path
          if (!is_prefix(edge.re, tr_state.rewrite_trace)) {
            //cout << "  rewrite prefix fail" << endl;
            continue;
          }


          // if so, we:
          // (1) update the state
          TraceState follow = tr_state;
          follow.state = edge.to;

          // (2) remove the prefixes from both traces
          CpuState target_state = remove_prefix(edge.te, follow.target_trace);
          CpuState rewrite_state = remove_prefix(edge.re, follow.rewrite_trace);

          // (3) record the CpuState in the right place
          target_state_data_[edge.to].push_back(target_state);
          rewrite_state_data_[edge.to].push_back(rewrite_state);

          next.push_back(follow);
          reachable_states_.insert(follow.state);
        }
      }
    }
  }

  // Step 2: learn the invariants
  auto target = target_->get_cfg();
  auto rewrite = rewrite_->get_cfg();
  target.recompute();
  rewrite.recompute();

  for (auto state : reachable_states_) {
    auto inv = learner_.learn(target, rewrite,
                              target_->defined_regs(state.ts), rewrite_->defined_regs(state.rs),
                              target_state_data_[state], rewrite_state_data_[state]);
    invariants_[state] = inv;
    cout << "Invariant at " << state << ": " << *inv << endl;
  }

}




namespace std {

ostream& operator<<(ostream& os, const DualAutomata::State& s) {
  os << "(" << s.ts << ", " << s.rs << ")";
  return os;
}

}


