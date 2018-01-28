
#include "src/state/cpu_states.h"
#include "src/validator/dual.h"
#include <fstream>

using namespace stoke;
using namespace std;

#define DEBUG_LEARN_STATE_DATA(X) { X }
#define DEBUG_IS_PREFIX(X) { }

bool DualAutomata::State::operator<(const DualAutomata::State& other) const {
  if (this->ts < other.ts) {
    return true;
  } else if (this->ts == other.ts) {
    return this->rs < other.rs;
  } else {
    return false;
  }
}

bool DualAutomata::State::operator==(const DualAutomata::State& other) const {
  return (ts == other.ts && rs == other.rs);
}

bool DualAutomata::Edge::operator<(const DualAutomata::Edge& other) const {
  if (from != other.from)
    return from < other.from;
  if (to != other.to)
    return to < other.to;
  if (te.size() != other.te.size())
    return te.size() < other.te.size();
  if (re.size() != other.re.size())
    return re.size() < other.re.size();
  for (size_t i = 0; i < te.size(); ++i)
    if (te[i] != other.te[i])
      return te[i] < other.te[i];
  for (size_t i = 0; i < re.size(); ++i)
    if (re[i] != other.re[i])
      return re[i] < other.re[i];
  return false;
}

bool DualAutomata::Edge::operator==(const DualAutomata::Edge& other) const {
  return (from == other.from && to == other.to && te == other.te && re == other.re);
}

DualAutomata::Edge::Edge(DualAutomata::State tail, const CfgPath& tp, const CfgPath& rp) {
  from = tail;
  te = tp;
  re = rp;
  empty_ = false;

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

bool DualAutomata::is_prefix(const CfgPath& tr1, const DataCollector::Trace& tr2) {
  if (tr1.size() > tr2.size()) {
    DEBUG_IS_PREFIX(cout << "[is_prefix]     tr1:" << tr1.size() << " > tr2:" << tr2.size() << endl;)
    return false;
  }

  for (size_t i = 0; i < tr1.size(); ++i) {
    DEBUG_IS_PREFIX(cout << "[is_prefix]      tr1[" << i << "]=" << tr1[i] << "; tr2[" << i << "]=" << tr2[i].block_id << endl;)
    if (tr1[i] != tr2[i].block_id) {
      return false;
    }
  }

  return true;
}

bool DualAutomata::is_edge_prefix(const CfgPath& tr1, const CfgPath& tr2) {
  if (tr1.size() > tr2.size()) {
    //cout << "     tr1:" << tr1.size() << " > tr2:" << tr2.size() << endl;
    return false;
  }

  for (size_t i = 0; i < tr1.size(); ++i) {
    //cout << "      tr1[" << i << "]=" << tr1[i] << "; tr2[" << i << "]=" << tr2[i].first << endl;
    if (tr1[i] != tr2[i]) {
      return false;
    }
  }

  return true;
}

void DualAutomata::remove_prefix(const CfgPath& tr1, DataCollector::Trace& tr2) {
  assert(is_prefix(tr1, tr2));

  for (size_t i = 0; i < tr1.size(); ++i) {
    tr2.erase(tr2.begin());
  }
}

/** Here we trace one test case through the Automata along every possible path.
  Returns false on error. */
bool DualAutomata::learn_state_data(const DataCollector::Trace& orig_target_trace,
                                    const DataCollector::Trace& orig_rewrite_trace) {

  /** Copy traces, remove 0 block. */
  auto target_trace = orig_target_trace;
  auto rewrite_trace = orig_rewrite_trace;
  target_trace.erase(target_trace.begin());
  rewrite_trace.erase(rewrite_trace.begin());

  /** Setup initial state */
  TraceState initial;
  initial.state = start_state();
  initial.target_current = target_trace[0].cs;
  initial.rewrite_current = rewrite_trace[0].cs;

  /** Configure initial traces */
  auto tt_copy = target_trace;
  auto rt_copy = rewrite_trace;

  initial.target_trace = tt_copy;
  initial.rewrite_trace = rt_copy;

  /** Record initial data */
  target_state_data_[initial.state].push_back(initial.target_current);
  rewrite_state_data_[initial.state].push_back(initial.rewrite_current);

  /** Setup worklist */
  vector<TraceState> current;
  vector<TraceState> next;
  next.push_back(initial);
  data_reachable_states_.insert(initial.state);

  auto exit = exit_state();

  /** Let the fun begin! */
  while (next.size()) {
    current = next;
    next.clear();

    for (auto tr_state : current) {

      if (exit == tr_state.state) {

        if (tr_state.rewrite_trace.size() > 0) {
          DEBUG_LEARN_STATE_DATA(cout << "[lsd] problem: at exit state, but there's still unconsumed rewrite trace" << endl;)
          return false;
        }
        if (tr_state.target_trace.size() > 0) {
          DEBUG_LEARN_STATE_DATA(cout << "[lsd] problem: at exit state, but there's still unconsumed target trace" << endl;)
          return false;
        }

        continue;
      }

      //cout << "processing trace state @ " << tr_state.state << endl;
      bool found_matching_edge = false;

      for (auto edge : next_edges_[tr_state.state]) {
        DEBUG_LEARN_STATE_DATA(
          cout << "[lsd] Considering edge: " << edge.from << " -> " << edge.to << endl;
          cout << "     ";
          for (auto blk : edge.te)
          cout << blk << "  ";
          cout << "; ";
          for (auto blk : edge.re)
            cout << blk << "  ";
            cout << endl;)


            // check if edge's target path is prefix of tr_state's target path
            if (!is_prefix(edge.te, tr_state.target_trace)) {
              DEBUG_LEARN_STATE_DATA(cout << "  target prefix fail" << endl;)
              continue;
            }
        // check if edge's rewrite path is prefix of tr_state's rewrite path
        if (!is_prefix(edge.re, tr_state.rewrite_trace)) {
          DEBUG_LEARN_STATE_DATA(cout << "  rewrite prefix fail" << endl;)
          DEBUG_LEARN_STATE_DATA(cout << "  edge.re: " << edge.re << endl;)
          continue;
        }

        found_matching_edge = true;


        // if so, we:
        // (1) update the state
        TraceState follow = tr_state;
        follow.state = edge.to;

        // (2) update the CpuStates
        if (edge.te.size())
          follow.target_current = follow.target_trace[edge.te.size()-1].cs;
        if (edge.re.size())
          follow.rewrite_current = follow.rewrite_trace[edge.re.size()-1].cs;

        // (3) remove the prefixes from both traces
        remove_prefix(edge.te, follow.target_trace);
        remove_prefix(edge.re, follow.rewrite_trace);

        // (4) record the CpuState in the right place
        target_state_data_[edge.to].push_back(follow.target_current);
        rewrite_state_data_[edge.to].push_back(follow.rewrite_current);

        next.push_back(follow);
        data_reachable_states_.insert(follow.state);
        DEBUG_LEARN_STATE_DATA(std::cout << "  - REACHABLE: " << follow.state << std::endl;)
      }

      if (!found_matching_edge) {
        DEBUG_LEARN_STATE_DATA(std::cout << "  - Could not find matching edge" << std::endl;)
        return false;
      }
    }
  }

  return true;

}


bool DualAutomata::learn_invariants(InvariantLearner& learner) {


  data_reachable_states_.clear();
  invariants_.clear();
  target_state_data_.clear();
  rewrite_state_data_.clear();

  auto target_traces = data_collector_.get_traces(target_);
  auto rewrite_traces = data_collector_.get_traces(rewrite_);

  // Step 1: get data at each state.
  for (size_t i = 0; i < target_traces.size(); ++i) {
    auto target_trace = target_traces[i];
    auto rewrite_trace = rewrite_traces[i];

    auto target_last = target_trace.back();
    target_last.block_id = target_.get_exit();
    target_trace.push_back(target_last);

    auto rewrite_last = rewrite_trace.back();
    rewrite_last.block_id = rewrite_.get_exit();
    rewrite_trace.push_back(rewrite_last);


    DEBUG_LEARN_STATE_DATA(
      cout << "[learn_invariants] target trace: " << DataCollector::project_states(target_trace) << endl;
      cout << "[learn_invariants] rewrite trace: " << DataCollector::project_states(rewrite_trace) << endl;
    )


    bool ok = learn_state_data(target_trace, rewrite_trace);
    if (!ok) {
      cout << "[learn_invariants] lsd returned FALSE!" << endl;
      return false;
    }
  }

  // Step 2: learn the invariants
  target_.recompute();
  rewrite_.recompute();

  for (auto state : data_reachable_states_) {
    if (state == exit_state() || state == start_state())
      continue;

    auto target_instr = target_.get_last_of_block(state.ts);
    auto rewrite_instr = target_.get_last_of_block(state.ts);

    string target_opc = Handler::get_opcode(target_instr);
    string rewrite_opc = Handler::get_opcode(rewrite_instr);

    string target_cc = target_instr.is_jcc() ? target_opc.substr(1, target_opc.size()-1) : "";
    string rewrite_cc = rewrite_instr.is_jcc() ? rewrite_opc.substr(1, rewrite_opc.size()-1) : "";

    /* For debugging states encountered. */
    DEBUG_LEARN_STATE_DATA(
      stringstream ts;
      ts << "state" << state << "-target.txt";
      string target_filename = ts.str();
      ofstream target_file;
      target_file.open(target_filename, ios::out);
      CpuStates target_out(target_state_data_[state]);
      target_out.write_text(target_file);
      target_file.close();

      stringstream rs;
      rs << "state" << state << "-rewrite.txt";
      string rewrite_filename = rs.str();
      ofstream rewrite_file;
      rewrite_file.open(rewrite_filename, ios::out);
      CpuStates rewrite_out(rewrite_state_data_[state]);
      rewrite_out.write_text(rewrite_file);
      rewrite_file.close();)

    // TODO: if there aren't enough states here, sound a warning

    auto inv = learner.learn(target_.live_outs(state.ts), rewrite_.live_outs(state.rs),
                             target_state_data_[state], rewrite_state_data_[state],
                             target_cc, rewrite_cc);
    invariants_[state] = inv;
    cout << "[learn_invariants] Invariant at " << state << ": " << *inv << endl;
    // TODO check that the invariants look good enough
  }


  return true;

}


void DualAutomata::compute_topological_sort(CfgSccs& target_scc, CfgSccs& rewrite_scc) {
  // get all the relevant blocks from target/rewrite
  vector<DualAutomata::State> nodes;
  for (auto pair : invariants_) {
    nodes.push_back(pair.first);
  }

  // sort the nodes by SCC (which should already be topolically sorted)
  auto compare = [&](DualAutomata::State a, DualAutomata::State b) -> bool {
    auto a_target_scc = target_scc.get_scc(a.ts);
    auto a_rewrite_scc = rewrite_scc.get_scc(a.rs);
    auto b_target_scc = target_scc.get_scc(b.ts);
    auto b_rewrite_scc = rewrite_scc.get_scc(b.rs);

    if (a_target_scc > b_target_scc)
      return true;
    return a_rewrite_scc > b_rewrite_scc;
  };

  sort(nodes.begin(), nodes.end(), compare);
  nodes.insert(nodes.begin(), start_state());
  nodes.insert(nodes.end(), exit_state());
  topological_sort_ = nodes;
}

void DualAutomata::print_all() const {

  for (auto p : next_edges_) {
    auto state = State(p.first.ts, p.first.rs);
    cout << "STATE (" << p.first.ts << ", " << p.first.rs << ")" << endl;
    auto inv = get_invariant(state);
    auto conj = dynamic_cast<ConjunctionInvariant*>(inv);
    if (conj != NULL) {
      conj->write_pretty(cout);
    } else {
      cout << "  " << *inv << endl;
    }
    for (auto e : p.second) {
      cout << "    to (" << e.to.ts << ", " << e.to.rs << ") via target: ";
      for (auto n : e.te) {
        cout << n << "  ";
      }
      cout << "rewrite: ";
      for (auto n : e.re) {
        cout << n << "  ";
      }
      cout << endl;
    }
  }

  if (topological_sort_.size() > 0) {
    cout << "TOPOLOGIAL SORT " << endl;
    for (auto it : topological_sort_)
      cout << it << "   ";
    cout << endl;
  }
}


vector<vector<DualAutomata::Edge>> DualAutomata::get_paths(
DualAutomata::State start, DualAutomata::State end) {
  cout << "Calling get_paths with " << start << " and " << end << endl;

  vector<vector<Edge>> results;

  auto edges_from_start = next_edges(start);
  for (auto e : edges_from_start) {
    auto successor = e.to;

    if (successor == e.from) //ignore self-loops
      continue;

    if (successor == end) {
      vector<Edge> path;
      path.push_back(e);
      results.push_back(path);
    } else {
      auto continuation_paths = get_paths(successor, end);
      for (auto path : continuation_paths) {
        path.insert(path.begin(), e);
        results.push_back(path);
      }
    }
  }

  return results;
}

void DualAutomata::remove_prefixes() {

  bool done = false;

  while (!done) {
    done = true;
    for (auto state : data_reachable_states_) {
      auto edges = next_edges_[state];

      for (auto e1 : edges) {
        for (auto e2 : edges) {
          if (e1 == e2)
            continue;

          if (is_edge_prefix(e1.te, e2.te) && is_edge_prefix(e1.re, e2.re)) {
            remove_edge(e2);
            done = false;
          }
          break;
        }
        if (done == false)
          break;
      }
      if (done == false)
        break;
    }
  }
}

std::set<DualAutomata::State> DualAutomata::get_edge_reachable_states() {

  set<State> global_reachable;
  global_reachable.insert(start_state());

  size_t init, curr;
  do {
    init = global_reachable.size();
    for (auto r : global_reachable) {
      cout << "[sanity] from " << r << endl;
      for (auto p : next_states(r)) {
        cout << "[sanity]    inserting " << p << endl;
        global_reachable.insert(p);
      }
    }

    curr = global_reachable.size();
  } while (curr > init);

  return global_reachable;
}

namespace std {

ostream& operator<<(ostream& os, const DualAutomata::State& s) {
  return s.print(os);
}
ostream& operator<<(ostream& os, const DualAutomata::Edge& s) {
  return s.print(os);
}



}


