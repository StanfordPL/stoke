
#ifndef STOKE_SRC_VALIDATOR_DISCHARGE_STATE_H
#define STOKE_SRC_VALIDATOR_DISCHARGE_STATE_H

#include "src/validator/dual.h"
#include <mutex>

#define DEBUG_DISCHARGE_STATE(X) { X }

namespace stoke {

class DischargeState {

  public:
    
  DischargeState(const DualAutomata& dual, const std::vector<DualAutomata::Edge>& es) : 
    dual_(dual), edges_(es), next_edge_(0), next_conjunct_(0), done_(false) {
  }

  /** Thread safe: get the next state/conjunct problem. */
  std::pair<DualAutomata::Edge, size_t> next_problem() {
    m.lock();

    while(!done_ && !current_problem_ok()) {
      DEBUG_DISCHARGE_STATE(std::cout << "[next_problem] advancing." << std::endl;)
      advance_problem();
    }

    DEBUG_DISCHARGE_STATE(std::cout << "[next_problem] done=" << done_ << std::endl;)

    if(done_) {
      m.unlock();
      DEBUG_DISCHARGE_STATE(std::cout << "[next_problem] returning default value." << std::endl;)
      std::pair<DualAutomata::Edge, size_t> val(edges_[0], (size_t)(-1));
      return val;
    }

      DEBUG_DISCHARGE_STATE(std::cout << "[next_problem] returning with next_edge_=" << next_edge_
           << " and next_conjunct_=" << next_conjunct_ << std::endl;)
          
    std::pair<DualAutomata::Edge, size_t> val(edges_[next_edge_], next_conjunct_);

    advance_problem();
    
    m.unlock();
    return val;
  }

  /** Thread safe: mark a conjunct as bad. */
  void report_outcome(DualAutomata::Edge edge, size_t conjunct, bool success, std::string& s) {

    auto start_inv = dual_.get_invariant(edge.from);
    auto end_inv = (*dual_.get_invariant(edge.to))[conjunct];
    print_m.lock();
    std::cout << s;
    print_m.unlock();

    if(!success) {
      auto state = edge.to;
      m.lock();
      bad_conjuncts[state][conjunct] = true;
      m.unlock();
    }
  }

  /** NOT thread safe: remove all bad conjuncts from the dual. 
   Returns 'true' if an update happened. */
  bool update_dual() {
    bool update = false;
    for(auto it : bad_conjuncts) {
      auto state = it.first;
      auto bad_map = it.second;
      std::vector<size_t> to_remove;
      for(auto pair : bad_map) {
        size_t conjunct = pair.first;
        if(pair.second == true) {
          to_remove.push_back(conjunct);
          update = true;
        }
      }

      std::sort(to_remove.begin(), to_remove.end(), 
          [](size_t i, size_t j) -> bool { return j < i; });
      auto inv = dual_.get_invariant(state);
      for(auto n : to_remove) {
        inv->remove(n);
      }
    }

    return update;
  }


private:
  bool current_problem_ok() {
    if(next_edge_ >= edges_.size()) {
      done_ = true;
      return false;
    }
    auto& edge = edges_[next_edge_];
    auto dest = edge.to;
    auto& bad_map = bad_conjuncts[dest];

    if(next_conjunct_ >= dual_.get_invariant(dest)->size())
      return false;

    if(bad_map[next_conjunct_]) {
      DEBUG_DISCHARGE_STATE(std::cout << "[current_problem_ok] problem " << next_edge_ << "/" << next_conjunct_ << " is bad." << std::endl;)
      return false;
    }
    DEBUG_DISCHARGE_STATE(std::cout << "[current_problem_ok] problem " << next_edge_ << "/" << next_conjunct_ << " is fine." << std::endl;)
    return true;
  }

  void advance_problem() {
    auto& edge = edges_[next_edge_];
    DEBUG_DISCHARGE_STATE(std::cout << "[advance_problem] starting from edge/conjunct " << next_edge_ << "/" << next_conjunct_ <<" done=" << done_ <<  std::endl;)
    auto dest = edge.to;
    size_t total_conjuncts = dual_.get_invariant(dest)->size();
    if(next_conjunct_ < total_conjuncts - 1 && total_conjuncts > 0) {
      next_conjunct_++;
    } else {

      // advance to the next edge, but skip over it (and keep going) if the
      // invariant at its state doesn't have any conjuncts
      do {
        next_edge_++;
      } while (next_edge_ <= edges_.size() && 
               dual_.get_invariant(edges_[next_edge_].to)->size() == 0);
      next_conjunct_ = 0;
      if(next_edge_ >= edges_.size()) {
        done_ = true;
      }
    }
    DEBUG_DISCHARGE_STATE(std::cout << "[advance_problem] ending at edge/conjunct " << next_edge_ << "/" << next_conjunct_ << " done=" << done_ << std::endl;)
  }

  const DualAutomata& dual_;
  const std::vector<DualAutomata::Edge>& edges_;
  size_t next_edge_;
  size_t next_conjunct_;
  bool done_;
  std::map<DualAutomata::State, std::map<size_t, bool>> bad_conjuncts;
  std::mutex m;
  std::mutex print_m;

};
}

#endif
