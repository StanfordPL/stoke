
#include "src/cfg/cfg.h"
#include "src/validator/data_collector.h"
#include "src/validator/learner.h"

#include <map>
#include <vector>

#ifndef STOKE_VALIDATOR_FLOW_INVARIANT_LEARNER
#define STOKE_VALIDATOR_FLOW_INVARIANT_LEARNER

namespace stoke {

class FlowInvariantLearner {

public:

  FlowInvariantLearner(DataCollector& dc, InvariantLearner& il) :
    data_collector_(dc), invariant_learner_(il), target_(NULL), rewrite_(NULL) {
    gen_.seed(time(0));
  }

  /** Set the seed for picking test cases.  (See next option) */
  FlowInvariantLearner& set_seed(std::default_random_engine::result_type seed) {
    gen_.seed(seed);
    return *this;
  }

  /** Initialize learner for this target/rewrite pair */
  void initialize(Cfg& target, Cfg& rewrite);

  /** Get an invariant corresponding to a pair of basic blocks. */
  ConjunctionInvariant* get_invariant(Cfg::id_type target_block, Cfg::id_type rewrite_block);

private:
  typedef std::vector<std::pair<CpuState, CpuState>> TCPairs;

  /** Collect all the CpuStates for given program points and test case. */
  TCPairs get_pairs_for_tc(Cfg::id_type target_block, Cfg::id_type rewrite_block, size_t tc_id);

  /** Go through a trace and add shadow variables to each state. */
  void add_shadow_variables(const Cfg& cfg, DataCollector::Trace& t);

  /** Get the set of shadow variables for a CFG (i.e. n1, n2, ...) */
  std::vector<Variable> get_shadow_vars(const Cfg& cfg, bool is_rewrite);

  /** Select from a vector elements at random. */
  template<typename T>
  std::vector<T> pick_at_random(std::vector<T> items, size_t count);

  /** Random generator. */
  std::default_random_engine gen_;

  /** Dependencies */
  DataCollector& data_collector_;
  InvariantLearner& invariant_learner_;

  /** Cached target/rewrite */
  Cfg* target_;
  Cfg* rewrite_;


};

}

#endif
