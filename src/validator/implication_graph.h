
#ifndef STOKE_SRC_VALIDATOR_IMPLICATION_GRAPH_H
#define STOKE_SRC_VALIDATOR_IMPLICATION_GRAPH_H

#include "src/state/cpu_state.h"
#include "src/solver/smtsolver.h"
#include "src/solver/z3solver.h"
#include "src/validator/invariants/conjunction.h"

namespace stoke {

class ImplicationGraph {

  public:
    
  ImplicationGraph(const Cfg& target, const Cfg& rewrite) :
    target_(target), rewrite_(rewrite), smt_() {
    set_separate_stack(false);
  }

  std::set<Invariant*> get_replacements(Invariant* inv) {
    if(has_replacements(inv))
      return replacements_[inv];
    else
      return set<Invariant*>();
  }

  bool has_replacements(Invariant* inv) {
    if(replacements_.count(inv))
      return replacements_[inv].size() > 0;
    else
      return false;
  }

  void add_replacement(Invariant* inv, Invariant* replacement) {
    replacements_[inv].insert(replacement);
  }

  bool is_superseded(Invariant* inv) {
    return superseded_.count(inv);
  }

  /** Create a class of invariants to add to. */
  size_t new_class() {
    std::set<Invariant*> new_set;
    invariant_sets_.push_back(new_set);
    current_set = invariant_sets_.size() - 1;
    return current_set;
  }

  /** Add an invariant to the class. */
  void add_invariant(Invariant* inv) {
    invariant_sets_[current_set].insert(inv);
  }

  /** Compute implications between classes and add replacements to datastructure. */
  size_t compute(size_t class1, size_t class2);

  void set_separate_stack(bool b) {
    separate_stack_ = b;
  }

  void print();


private:

  const Cfg& target_;
  const Cfg& rewrite_;
  Z3Solver smt_;
  bool separate_stack_;

  std::map<Invariant*, std::set<Invariant*>> replacements_;
  std::set<Invariant*> superseded_;

  std::vector<std::set<Invariant*>> invariant_sets_;
  size_t current_set = 0;
  /*
  std::map<Invariant*, std::map<Invariant*, bool>> implication_table_;

  */

};
}

#endif
