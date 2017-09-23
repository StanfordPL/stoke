
#ifndef STOKE_SRC_VALIDATOR_DUAL_AUTOMATA_H
#define STOKE_SRC_VALIDATOR_DUAL_AUTOMATA_H

#include <map>
#include <vector>
#include <ostream>

#include "src/validator/abstraction.h"
#include "src/validator/invariant.h"
#include "src/validator/invariants/false.h"
#include "src/validator/learner.h"

namespace stoke {

class DualAutomata {

public:

  struct State {
    Abstraction::State ts;
    Abstraction::State rs;

    bool operator<(const State& other) const;
    bool operator==(const State& other) const;
    bool operator!=(const State& other) const {
      return !(*this == other);
    }

    std::ostream& print(std::ostream& os) const {
      os << "(" << ts << ", " << rs << ")";
      return os;
    }

    State() { }

    State(Abstraction::State a_ts, Abstraction::State a_rs) {
      ts = a_ts;
      rs = a_rs;
    }
  };

  struct Edge {

    Edge() {
      empty_ = true;
    }
    Edge(State, const std::vector<Abstraction::State>&, const std::vector<Abstraction::State>&);

    bool operator==(const Edge& other) const;
    bool operator<(const Edge& other) const;
    bool operator!=(const Edge& other) const {
      return !(*this == other);
    }

    std::ostream& print(std::ostream& os) const {
      from.print(os) << " -> ";
      to.print(os) << " ; ";
      for (auto it : te)
        os << it << " ";
      os << " ; ";
      for (auto it : re)
        os << it << " ";
      return os;
    }

    State from;
    State to;
    std::vector<Abstraction::State> te;
    std::vector<Abstraction::State> re;
    bool empty_;
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

  /** Get the exit states */
  State exit_state() {
    State exit;
    exit.ts = target_->exit_state();
    exit.rs = rewrite_->exit_state();
    return exit;
  }

  /** Add a feastible path. */
  void add_edge(Edge path) {

    for (auto e : next_edges_[path.from]) {
      if (e == path) {
        std::cout << "      > edge already exists -- skipping" << std::endl;
        return;
      }
    }

    next_edges_[path.from].push_back(path);
    prev_edges_[path.to].push_back(path);
  }

  /** Remove an edge. */
  void remove_edge(Edge e) {
    auto& vec = next_edges_[e.from];
    vec.erase(std::remove(vec.begin(), vec.end(), e), vec.end());
    auto& vec2 = prev_edges_[e.to];
    vec2.erase(std::remove(vec2.begin(), vec2.end(), e), vec2.end());
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

  /** Get the list of edges from this state. */
  std::vector<Edge> next_edges(State s) {
    return next_edges_[s];
  }

  /** Get the list of edges to this state. */
  std::vector<Edge> prev_edges(State s) {
    return prev_edges_[s];
  }

  /** Get the list of edges from this state to this state. */
  std::vector<Edge> get_inductive_edges(State s) {
    std::vector<Edge> result;
    for (auto e : next_edges(s)) {
      if (e.to == s)
        result.push_back(e);
    }
    return result;
  }

  /** Return total number of edges. */
  size_t count_edges() {
    size_t count = 0;
    for(auto it : get_reachable_states()) {
      count += next_edges(it).size();
    }
    return count;
  }

  /** Get edges on each path from start to end. */
  std::vector<std::vector<Edge>> get_paths(State start, State end);

  /** Learn invariants.  Returns 'true' if no error. */
  bool learn_invariants(Sandbox&, InvariantLearner&);

  /** Get invariant at state. */
  ConjunctionInvariant* get_invariant(State& state) {
    if (invariants_.count(state))
      return invariants_[state];
    else {
      auto conj = new ConjunctionInvariant();
      auto false_ = new FalseInvariant();
      conj->add_invariant(false_);
      invariants_[state] = conj;
      return conj;
    }
  }

  /** Get data for state. */
  std::vector<CpuState> get_target_data(State s) {
    return target_state_data_[s];
  }
  std::vector<CpuState> get_rewrite_data(State s) {
    return rewrite_state_data_[s];
  }

  /** Forcibly set invariant (e.g. proof went bad) */
  void set_invariant(State& state, ConjunctionInvariant* inv) {
    invariants_[state] = inv;
  }

  /** Get set of reachable states (from data). */
  std::set<State> get_reachable_states() {
    return reachable_states_;
  }

  /** Print the automata to standard output. */
  void print_all();

  /** Remove any edges that are a prefix of another edge from one state. */
  void remove_prefixes();

private:

  /** This is a data structure used in learn_state_data and its helpers
    to track the possible states that the automata can be in starting from
    a single test case. */
  struct TraceState {
    State state;
    CpuState target_current;
    CpuState rewrite_current;
    Abstraction::FullTrace target_trace;
    Abstraction::FullTrace rewrite_trace;
  };

  /** Runs a test case/trace through all possible paths in automata to
    populate state information.  Returns false on error. */
  bool learn_state_data(const Abstraction::FullTrace& target,
                        const Abstraction::FullTrace& rewrite);

  /** Is an edge (a series of states) a prefix of a trace (a series of state/cpu state pairs)? */
  bool is_prefix(const std::vector<Abstraction::State>& tr1, const Abstraction::FullTrace& tr2);
  /** Is an edge (a series of states) a prefix of a trace (a series of state/cpu state pairs)? */
  bool is_edge_prefix(const std::vector<Abstraction::State>& tr1, const std::vector<Abstraction::State>& tr2);


  /** Remove an edge prefix from a trace. */
  void remove_prefix(const std::vector<Abstraction::State>& tr1, Abstraction::FullTrace& tr2);

  Abstraction* target_;
  Abstraction* rewrite_;

  std::set<State> reachable_states_;
  std::map<State, std::vector<Edge>> next_edges_;
  std::map<State, std::vector<Edge>> prev_edges_;

  std::map<State, ConjunctionInvariant*> invariants_;
  std::map<State, std::vector<CpuState>> target_state_data_;
  std::map<State, std::vector<CpuState>> rewrite_state_data_;

};

}

namespace std {
std::ostream& operator<<(std::ostream& os, const stoke::DualAutomata::State&);
std::ostream& operator<<(std::ostream& os, const stoke::DualAutomata::Edge&);
}

#endif
