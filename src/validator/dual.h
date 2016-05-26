
#ifndef STOKE_SRC_VALIDATOR_DUAL_AUTOMATA_H
#define STOKE_SRC_VALIDATOR_DUAL_AUTOMATA_H

#include <map>
#include <vector>

#include "src/validator/abstraction.h"
#include "src/validator/invariant.h"
#include "src/validator/learner.h"

namespace stoke {

class DualAutomata {

public:

  struct State {
    Abstraction::State ts;
    Abstraction::State rs;

    bool operator<(const State& other) const;
  };

  struct Edge {

    Edge(State, const std::vector<Abstraction::State>&, const std::vector<Abstraction::State>&); 

    State from;
    State to;
    std::vector<Abstraction::State> te;
    std::vector<Abstraction::State> re;
  };

  DualAutomata(Abstraction* target, Abstraction* rewrite) : target_(target), rewrite_(rewrite) {

  }

  /** Form a start state from the two automata */
  State start_state() {
    State start;
    start.ts = target_->start_state();
    start.rs = rewrite_->start_state();
    return start;
  }

  /** Add a feastible path. */
  void add_edge(Edge path) {
    next_edges_[path.from].push_back(path);
    prev_edges_[path.to].push_back(path);
  }

  /** Get the list of next states from a starting point. */
  std::vector<State> next_states(State s) {
    std::vector<State> states;
    for (auto edge : next_edges_[s]) {
      states.push_back(edge.to);
    }
    return states;
  }

  /** Get the list of previous states from here. */
  std::vector<State> prev_states(State s) {
    std::vector<State> states;
    for (auto edge : prev_edges_[s]) {
      states.push_back(edge.from);
    }
    return states;
  }

  /** Learn invariants. */
  void learn_invariants(Sandbox& sb); 

  /** Get invariant at state. */
  Invariant* get_invariant(State& state) {
    return invariants_[state];
  }


private:

  InvariantLearner learner_;

  Abstraction* target_;
  Abstraction* rewrite_;

  std::map<State, std::vector<Edge>> next_edges_;
  std::map<State, std::vector<Edge>> prev_edges_;

  std::map<State, Invariant*> invariants_;
  std::map<State, std::vector<CpuState>> state_data_;

};

}

namespace std {
std::ostream& operator<<(std::ostream& os, const stoke::DualAutomata::State&);
}

#endif
