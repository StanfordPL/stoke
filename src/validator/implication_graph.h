
#ifndef STOKE_SRC_VALIDATOR_IMPLICATION_GRAPH_H
#define STOKE_SRC_VALIDATOR_IMPLICATION_GRAPH_H

#include "src/state/cpu_state.h"
#include "src/solver/smtsolver.h"
#include "src/solver/z3solver.h"
#include "src/validator/invariants/conjunction.h"

namespace stoke {

class ImplicationGraph {

  public:
    
  ImplicationGraph(const Cfg& target, const Cfg& rewrite, const ConjunctionInvariant& inv) : 
    target_(target), rewrite_(rewrite), inv_(inv), smt_(), implication_table_() {
    set_separate_stack(false);
    //compute();
  }

  void set_separate_stack(bool b) {
    separate_stack_ = b;
  }

  void print() {

  }


private:

  void compute();

  const Cfg& target_;
  const Cfg& rewrite_;
  ConjunctionInvariant inv_;
  Z3Solver smt_;
  bool separate_stack_;

  std::map<size_t, std::map<size_t, bool>> implication_table_;

};
}

#endif
