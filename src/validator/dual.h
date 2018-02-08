
#ifndef STOKE_SRC_VALIDATOR_DUAL_AUTOMATA_H
#define STOKE_SRC_VALIDATOR_DUAL_AUTOMATA_H

#include <map>
#include <vector>
#include <ostream>

#include "src/cfg/sccs.h"
#include "src/validator/data_collector.h"
#include "src/validator/invariant.h"
#include "src/validator/invariants/false.h"
#include "src/validator/learner.h"

namespace stoke {

class DualAutomata {

public:

  struct State {
    Cfg::id_type ts;
    Cfg::id_type rs;

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

    State(Cfg::id_type a_ts, Cfg::id_type a_rs) {
      ts = a_ts;
      rs = a_rs;
    }
  };

  struct Edge {

    Edge() {
      empty_ = true;
    }
    Edge(State, const CfgPath&, const CfgPath&);

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
    CfgPath te;
    CfgPath re;
    bool empty_;
  };

  DualAutomata(Cfg& target, Cfg& rewrite, DataCollector& dc) :
    target_(target), rewrite_(rewrite), data_collector_(dc) {
  }

  /** Form a start state from the two automata */
  State start_state() const {
    State start;
    start.ts = target_.get_entry();
    start.rs = rewrite_.get_entry();
    return start;
  }

  /** Get the exit states */
  State exit_state() const {
    State exit;
    exit.ts = target_.get_exit();
    exit.rs = rewrite_.get_exit();
    return exit;
  }

  /** Add a feastible edge.  Returns true if not already present. */
  bool add_edge(Edge path) {

    for (auto e : next_edges_[path.from]) {
      if (e == path) {
        std::cout << "      > edge already exists -- skipping" << std::endl;
        return false;
      }
    }

    next_edges_[path.from].push_back(path);
    prev_edges_[path.to].push_back(path);
    return true;
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

  /** Get the list of edges between two states */
  std::vector<Edge> edges_between(State s, State t) {
    std::vector<Edge> edges;
    for (auto e : next_edges_[s])
      if (e.to == t)
        edges.push_back(e);
    return edges;
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
    for (auto it : get_edge_reachable_states()) {
      count += next_edges(it).size();
    }
    return count;
  }

  /** Get edges on each path from start to end. */
  std::vector<std::vector<Edge>> get_paths(State start, State end);

  /** Learn invariants.  Returns 'true' if no error. */
  bool learn_invariants(InvariantLearner&);

  /** Get invariant at state. */
  ConjunctionInvariant* get_invariant(const State& state) const {
    if (invariants_.count(state))
      return invariants_.at(state);
    else {
      auto conj = new ConjunctionInvariant();
      auto false_ = new FalseInvariant();
      conj->add_invariant(false_);
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

  /** Forcibly set invariant. */
  void set_invariant(State& state, ConjunctionInvariant* inv) {
    invariants_[state] = inv;
  }

  /** Get set of reachable states (from data). */
  std::set<State> get_data_reachable_states() {
    return data_reachable_states_;
  }
  /** Get set of reachable states (from edges). */
  std::set<State> get_edge_reachable_states();

  /** Perform topological sort on nodes with SCC data. */
  void compute_topological_sort(CfgSccs& target_scc, CfgSccs& rewrite_scc);

  /** Get the topological sort. */
  const std::vector<DualAutomata::State>& get_topological_sort() const {
    return topological_sort_;
  }

  /** Print the automata to standard output. */
  void print_all() const;

  /** Remove any edges that are a prefix of another edge from one state. */
  void remove_prefixes();

  /** Get the target and rewrite. */
  Cfg& get_target() const {
    return target_;
  }
  Cfg& get_rewrite() const {
    return rewrite_;
  }


private:

  /** This is a data structure used in learn_state_data and its helpers
    to track the possible states that the automata can be in starting from
    a single test case. */
  struct TraceState {
    State state;
    CpuState target_current;
    CpuState rewrite_current;
    DataCollector::Trace target_trace;
    DataCollector::Trace rewrite_trace;
  };

  /** Runs a test case/trace through all possible paths in automata to
    populate state information.  Returns false on error. */
  bool learn_state_data(const DataCollector::Trace& target,
                        const DataCollector::Trace& rewrite);

  /** Is an edge (a series of states) a prefix of a trace (a series of state/cpu state pairs)? */
  bool is_prefix(const CfgPath& tr1, const DataCollector::Trace& tr2);
  /** Is an edge (a series of states) a prefix of a trace (a series of state/cpu state pairs)? */
  bool is_edge_prefix(const CfgPath& tr1, const CfgPath& tr2);


  /** Remove an edge prefix from a trace. */
  void remove_prefix(const CfgPath& tr1, DataCollector::Trace& tr2);

  Cfg& target_;
  Cfg& rewrite_;

  std::set<State> data_reachable_states_;
  std::map<State, std::vector<Edge>> next_edges_;
  std::map<State, std::vector<Edge>> prev_edges_;

  std::map<State, ConjunctionInvariant*> invariants_;
  std::map<State, std::vector<CpuState>> target_state_data_;
  std::map<State, std::vector<CpuState>> rewrite_state_data_;

  DataCollector data_collector_;
  std::vector<DualAutomata::State> topological_sort_;
};

}

namespace std {
std::ostream& operator<<(std::ostream& os, const stoke::DualAutomata::State&);
std::ostream& operator<<(std::ostream& os, const stoke::DualAutomata::Edge&);
}

#endif
