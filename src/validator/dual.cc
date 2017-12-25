
#include "src/state/cpu_states.h"
#include "src/validator/dual.h"
#include <fstream>

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

DualAutomata::Edge::Edge(DualAutomata::State tail, const vector<Abstraction::State>& tp, const vector<Abstraction::State>& rp) {
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

bool DualAutomata::is_prefix(const vector<Abstraction::State>& tr1, const Abstraction::FullTrace& tr2) {
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

bool DualAutomata::is_edge_prefix(const vector<Abstraction::State>& tr1, const vector<Abstraction::State>& tr2) {
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

void DualAutomata::remove_prefix(const vector<Abstraction::State>& tr1, Abstraction::FullTrace& tr2) {
  assert(is_prefix(tr1, tr2));

  for (size_t i = 0; i < tr1.size(); ++i) {
    tr2.erase(tr2.begin());
  }
}

/** Here we trace one test case through the Automata along every possible path.
  Returns false on error. */
bool DualAutomata::learn_state_data(const Abstraction::FullTrace& target_trace,
                                    const Abstraction::FullTrace& rewrite_trace) {
  /** Setup initial state */
  TraceState initial;
  initial.state = start_state();
  initial.target_current = target_trace[0].second;
  initial.rewrite_current = rewrite_trace[0].second;

  /** Configure initial traces */
  auto tt_copy = target_trace;
  auto rt_copy = rewrite_trace;
  tt_copy.erase(tt_copy.begin());
  rt_copy.erase(rt_copy.begin());

  initial.target_trace = tt_copy;
  initial.rewrite_trace = rt_copy;

  /** Record initial data */
  target_state_data_[initial.state].push_back(initial.target_current);
  rewrite_state_data_[initial.state].push_back(initial.rewrite_current);

  /** Setup worklist */
  vector<TraceState> current;
  vector<TraceState> next;
  next.push_back(initial);
  reachable_states_.insert(initial.state);

  auto exit = exit_state();

  /** Let the fun begin! */
  while (next.size()) {
    current = next;
    next.clear();

    for (auto tr_state : current) {

      if (exit == tr_state.state) {

        if (tr_state.rewrite_trace.size() > 0) {
          //cout << "problem: at exit state, but there's still unconsumed rewrite trace" << endl;
          return false;
        }
        if (tr_state.target_trace.size() > 0) {
          //cout << "problem: at exit state, but there's still unconsumed target trace" << endl;
          return false;
        }

        continue;
      }

      //cout << "processing trace state @ " << tr_state.state << endl;
      bool found_matching_edge = false;

      for (auto edge : next_edges_[tr_state.state]) {
        /*
        cout << "  Considering edge: " << edge.from << " -> " << edge.to << endl;
        cout << "     ";
        for (auto blk : edge.te)
          cout << blk << "  ";
        cout << "; ";
        for (auto blk : edge.re)
          cout << blk << "  ";
        cout << endl; */


        // check if edge's target path is prefix of tr_state's target path
        if (!is_prefix(edge.te, tr_state.target_trace)) {
          //cout << "  target prefix fail" << endl;
          continue;
        }
        // check if edge's rewrite path is prefix of tr_state's rewrite path
        if (!is_prefix(edge.re, tr_state.rewrite_trace)) {
          //cout << "  rewrite prefix fail" << endl;
          //cout << "  edge.re: " << edge.re << endl;
          continue;
        }

        found_matching_edge = true;


        // if so, we:
        // (1) update the state
        TraceState follow = tr_state;
        follow.state = edge.to;

        // (2) update the CpuStates
        if (edge.te.size())
          follow.target_current = follow.target_trace[edge.te.size()-1].second;
        if (edge.re.size())
          follow.rewrite_current = follow.rewrite_trace[edge.re.size()-1].second;

        // (3) remove the prefixes from both traces
        remove_prefix(edge.te, follow.target_trace);
        remove_prefix(edge.re, follow.rewrite_trace);

        // (4) record the CpuState in the right place
        target_state_data_[edge.to].push_back(follow.target_current);
        rewrite_state_data_[edge.to].push_back(follow.rewrite_current);

        next.push_back(follow);
        reachable_states_.insert(follow.state);
        //std::cout << "  - REACHABLE: " << follow.state << std::endl;
      }

      if (!found_matching_edge) {
        //std::cout << "  - Could not find matching edge" << std::endl;
        //return false;
      }
    }
  }

  return true;

}


bool DualAutomata::learn_invariants(Sandbox& sb, InvariantLearner& learner) {


  reachable_states_.clear();
  invariants_.clear();
  target_state_data_.clear();
  rewrite_state_data_.clear();

  // Step 1: get data at each state.
  for (size_t i = 0; i < sb.size(); ++i) {
    auto target_trace = target_->learn_trace(*sb.get_input(i), true);
    auto rewrite_trace = rewrite_->learn_trace(*sb.get_input(i), true);

    auto target_last = target_trace.back();
    target_last.first = target_->exit_state();
    target_trace.push_back(target_last);

    auto rewrite_last = rewrite_trace.back();
    rewrite_last.first = rewrite_->exit_state();
    rewrite_trace.push_back(rewrite_last);


    /*
    cout << "target trace: ";
    for (size_t i = 0; i < target_trace.size(); ++i) {
      cout << target_trace[i].first << " ";
    }
    cout << endl;

    cout << "rewrite trace: ";
    for (size_t i = 0; i < rewrite_trace.size(); ++i) {
      cout << rewrite_trace[i].first << " ";
    }
    cout << endl;
    */


    bool ok = learn_state_data(target_trace, rewrite_trace);
    if (!ok) {
      cout << "LEARN_STATE_DATA returned FALSE!" << endl;
      return false;
    }
  }

  // Step 2: learn the invariants
  auto target = target_->get_cfg();
  auto rewrite = rewrite_->get_cfg();
  target.recompute();
  rewrite.recompute();

  for (auto state : reachable_states_) {
    if (state == exit_state() || state == start_state())
      continue;

    auto target_instr = target.get_last_of_block(state.ts);
    auto rewrite_instr = target.get_last_of_block(state.ts);

    string target_opc = Handler::get_opcode(target_instr);
    string rewrite_opc = Handler::get_opcode(rewrite_instr);

    string target_cc = target_instr.is_jcc() ? target_opc.substr(1, target_opc.size()-1) : "";
    string rewrite_cc = rewrite_instr.is_jcc() ? rewrite_opc.substr(1, rewrite_opc.size()-1) : "";

    /* For debugging states encountered. */
    /*
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
    rewrite_file.close();
    */

    auto inv = learner.learn(target_->live_out_regs(state.ts), rewrite_->live_out_regs(state.rs),
                             target_state_data_[state], rewrite_state_data_[state],
                             target_cc, rewrite_cc);
    invariants_[state] = inv;
    cout << "Invariant at " << state << ": " << *inv << endl;
    // TODO check that the invariants look good enough
  }


  return true;

}

void DualAutomata::print_all() {

  for (auto p : next_edges_) {
    auto state = State(p.first.ts, p.first.rs);
    cout << "STATE (" << p.first.ts << ", " << p.first.rs << ")" << endl;
    cout << "  " << *get_invariant(state) << endl;
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
    for (auto state : reachable_states_) {
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

namespace std {

ostream& operator<<(ostream& os, const DualAutomata::State& s) {
  return s.print(os);
}
ostream& operator<<(ostream& os, const DualAutomata::Edge& s) {
  return s.print(os);
}



}


