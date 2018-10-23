
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

  /** Get an invariant corresponding to a pair of basic blocks. This outer function does
    the work of checking the invariant across all the test data and adding more data
    if needed. */
  std::shared_ptr<ConjunctionInvariant> get_invariant(Cfg::id_type target_block, Cfg::id_type rewrite_block);

  /** Transform an invariant so that it holds on a set of inductive paths. */
  std::shared_ptr<ConjunctionInvariant> transform_invariant(std::shared_ptr<ConjunctionInvariant> conj,
      std::vector<CfgPath>& target_paths,
      std::vector<CfgPath>& rewrite_paths);

  /** Go through a trace and add shadow variables to each state. */
  static void add_shadow_variables(const Cfg& cfg, DataCollector::Trace& t);
  /** Get the set of shadow variables for a CFG (i.e. n1, n2, ...) */
  static std::vector<Variable> get_shadow_vars(const Cfg& cfg, bool is_rewrite);

private:
  typedef std::vector<std::pair<CpuState, CpuState>> TCPairs;
  typedef std::map<std::pair<Cfg::id_type, Cfg::id_type>, TCPairs> TCPairMap;

  /** Collect all the CpuStates for each test case, update TCPairMap data structure,
    and record the last pair of states for each test case. */
  void collect_data(size_t tc_id);

  /** Get an invariant corresponding to a pair of basic blocks. */
  std::shared_ptr<ConjunctionInvariant> get_invariant_inner(Cfg::id_type target_block, Cfg::id_type rewrite_block);


  /** Select from a vector elements at random. */
  template<typename T>
  std::vector<T> pick_at_random(const std::vector<T>& items, size_t count);

  /** Cached data points across all executions. */
  TCPairMap test_case_pairs_;

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
