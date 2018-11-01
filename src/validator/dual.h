
#ifndef STOKE_SRC_VALIDATOR_DUAL_AUTOMATA_H
#define STOKE_SRC_VALIDATOR_DUAL_AUTOMATA_H

#include <map>
#include <vector>
#include <ostream>

#include "src/cfg/sccs.h"
#include "src/validator/data_collector.h"
#include "src/validator/implication_graph.h"
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
      if(ts == (Cfg::id_type)(-1) && rs == (Cfg::id_type)(-1)) {
        os << "FAIL";
      } else {
        os << "(" << ts << ", " << rs << ")";
      }
      return os;
    }

    State() { }

    State(Cfg::id_type a_ts, Cfg::id_type a_rs) {
      ts = a_ts;
      rs = a_rs;
    }

    void serialize(std::ostream&) const;
    static State deserialize(std::istream&);
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

    void serialize(std::ostream&) const;
    static Edge deserialize(std::istream&);
  };

  DualAutomata(Cfg& target, Cfg& rewrite) :
    target_(target), rewrite_(rewrite) {
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

  /** Get the failure state. */
  State fail_state() const {
    State fail;
    fail.ts = (Cfg::id_type)(-1);
    fail.rs = (Cfg::id_type)(-1);
    return fail;
  }

  /** Add a feastible edge.  Returns true if not already present. */
  bool add_edge(Edge path) {

    if(next_edges_.count(path.from)) {
      for (const auto& e : next_edges_.at(path.from)) {
        if (e == path) {
          //std::cout << "      > edge already exists -- skipping" << std::endl;
          return false;
        }
      }
    }

    next_edges_[path.from].push_back(path);
    prev_edges_[path.to].push_back(path);
    return true;
  }

  /** Remove an edge. */
  void remove_edge(Edge e) {
    auto& vec = next_edges_.at(e.from);
    vec.erase(std::remove(vec.begin(), vec.end(), e), vec.end());
    auto& vec2 = prev_edges_.at(e.to);
    vec2.erase(std::remove(vec2.begin(), vec2.end(), e), vec2.end());
  }

  /** Get the list of next states from a starting point. */
  std::vector<State> next_states(State s) const {
    std::vector<State> states;
    if(!next_edges_.count(s))
      return states;
    for (auto edge : next_edges_.at(s)) {
      states.push_back(edge.to);
    }
    return states;
  }

  /** Get the list of previous states from here. */
  std::vector<State> prev_states(State s) const {
    std::vector<State> states;
    if(!prev_edges_.count(s))
      return states;
    for (auto edge : prev_edges_.at(s)) {
      states.push_back(edge.from);
    }
    return states;
  }

  /** Get the list of edges from this state. */
  std::vector<Edge> next_edges(State s) const {
    std::vector<Edge> empty;
    if(!next_edges_.count(s))
      return empty;
    return next_edges_.at(s);
  }

  /** Get the list of edges to this state. */
  std::vector<Edge> prev_edges(State s) const {
    std::vector<Edge> empty;
    if(!prev_edges_.count(s))
      return empty;
    return prev_edges_.at(s);
  }

  /** Get the list of edges between two states */
  std::vector<Edge> edges_between(State s, State t) {
    std::vector<Edge> edges;
    for (auto e : next_edges_[s])
      if (e.to == t)
        edges.push_back(e);
    return edges;
  }

  /** Get the list of states with an inductive edge. */
  std::vector<State> get_inductive_states() {
    std::vector<State> outputs;
    for(auto pair : next_edges_) {
      auto start_state = pair.first;
      for(auto edge : pair.second) {
        assert(start_state == edge.from);
        if(edge.to == edge.from) {
          outputs.push_back(start_state); 
          break;
        }
      }
    }
    return outputs;
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

  bool test_dual(DataCollector&, std::shared_ptr<Invariant> predicate);
  /** Learn invariants.  Returns 'true' if no error. */
  void learn_invariants(InvariantLearner&, ImplicationGraph&);

  /** Get invariant at state. */
  std::shared_ptr<ConjunctionInvariant> get_invariant(const State& state) const {
    if (invariants_.count(state))
      return invariants_.at(state);
    else {
      auto conj = std::make_shared<ConjunctionInvariant>();
      auto false_ = std::make_shared<FalseInvariant>();
      conj->add_invariant(false_);
      return conj;
    }
  }

  /** Get data for state. */
  std::vector<CpuState> get_target_data(State s) const {
    if(target_state_data_.count(s) == 0)
      return std::vector<CpuState>();

    return target_state_data_.at(s);
  }
  std::vector<CpuState> get_rewrite_data(State s) const {
    if(rewrite_state_data_.count(s) == 0)
      return std::vector<CpuState>();

    return rewrite_state_data_.at(s);
  }

  /** Get data for edge. */
  std::vector<CpuState> get_target_data(const Edge& e) const {
    if(target_edge_data_.count(e) == 0)
      return std::vector<CpuState>();

    return target_edge_data_.at(e);
  }
  std::vector<CpuState> get_rewrite_data(const Edge& e) const {
    if(rewrite_edge_data_.count(e) == 0)
      return std::vector<CpuState>();

    return rewrite_edge_data_.at(e);
  }

  /** Compute failure edges. */
  std::vector<Edge> compute_failure_edges(const Cfg& target, const Cfg& rewrite) const;

  /** Forcibly set invariant. */
  void set_invariant(State& state, std::shared_ptr<ConjunctionInvariant> inv) {
    invariants_[state] = inv;
  }

  /** Get set of reachable states (from data). */
  std::set<State> get_data_reachable_states() const {
    return data_reachable_states_;
  }
  /** Get set of reachable states (from edges). */
  std::set<State> get_edge_reachable_states() const;

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

  /** Is a node contained in a cycles where progress is only made on target/rewrite? */
  bool one_program_cycle(State s, bool is_target)  const;

  /** Check if a state has a self loop. */
  bool has_self_loop(State s) const {
    if(!next_edges_.count(s))
      return false;

    auto edges = next_edges_.at(s);
    for(auto e : edges) {
      if(e.to == s) {
        return true;
      }
    }
    return false;
  }


  /** Remove states and edges that aren't needed. 
    Returns false if nothing was done. */
  bool simplify();

  void serialize(std::ostream& os) const;
  static DualAutomata deserialize(std::istream& is);

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
                        const DataCollector::Trace& rewrite,
                        std::shared_ptr<Invariant> predicate);

  /** Is an edge (a series of states) a prefix of a trace (a series of state/cpu state pairs)? */
  bool is_prefix(const CfgPath& tr1, const DataCollector::Trace& tr2);
  /** Is an edge (a series of states) a prefix of a trace (a series of state/cpu state pairs)? */
  bool is_edge_prefix(const CfgPath& tr1, const CfgPath& tr2);
  /** Is a node contained in a cycle? */
  bool in_scc(State) const;

  /** Get fringe states of single CFG. */
  std::set<CfgPath> get_cfg_fringe(const Cfg& cfg, State state, bool is_rewrite) const;

  /** Remove an edge prefix from a trace. */
  void remove_prefix(const CfgPath& tr1, DataCollector::Trace& tr2);

  Cfg& target_; //serialize
  Cfg& rewrite_; //serialize

  std::set<State> data_reachable_states_;
  std::map<State, std::vector<Edge>> next_edges_; //serialize
  std::map<State, std::vector<Edge>> prev_edges_; //serialize

  std::map<State, std::shared_ptr<ConjunctionInvariant>> invariants_; //serialize
  std::map<State, std::vector<CpuState>> target_state_data_;
  std::map<State, std::vector<CpuState>> rewrite_state_data_;
  std::map<Edge, std::vector<CpuState>> target_edge_data_;
  std::map<Edge, std::vector<CpuState>> rewrite_edge_data_;

  std::vector<DualAutomata::State> topological_sort_; //serialize
};

}

namespace std {
std::ostream& operator<<(std::ostream& os, const stoke::DualAutomata::State&);
std::ostream& operator<<(std::ostream& os, const stoke::DualAutomata::Edge&);
}

#endif
