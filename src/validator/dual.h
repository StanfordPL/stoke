
#ifndef STOKE_SRC_VALIDATOR_DUAL_AUTOMATA_H
#define STOKE_SRC_VALIDATOR_DUAL_AUTOMATA_H

#include <map>
#include <vector>

#include "src/validator/abstraction.h"

namespace stoke {

class DualAutomata {

public:

  struct State {
    Abstraction::State ts;
    Abstraction::State rs;

    bool operator<(const State& other) const {
      if (this->ts < other.ts) {
        return true;
      } else if (this->ts == other.ts) {
        return this->rs < other.rs;
      } else {
        return false;
      }
    }

  };

  struct Edge {

    Edge(State tail, std::vector<Abstraction::State> tp, std::vector<Abstraction::State> rp) {
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


private:

  Abstraction* target_;
  Abstraction* rewrite_;

  std::map<State, std::vector<Edge>> next_edges_;
  std::map<State, std::vector<Edge>> prev_edges_;

};

}

namespace std {
  std::ostream& operator<<(std::ostream& os, const stoke::DualAutomata::State&);
}

#endif
