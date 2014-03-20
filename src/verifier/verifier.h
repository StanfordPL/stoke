#ifndef STOKE_SRC_VERIFIER_VERIFIER_H
#define STOKE_SRC_VERIFIER_VERIFIER_H

#include "src/cfg/cfg.h"
#include "src/sandbox/sandbox.h"
#include "src/state/cpu_state.h"
#include "src/verifier/strategy.h"

namespace stoke {

class Verifier {
 public:
  Verifier(Sandbox* sb) : sandbox_(sb) {
    set_strategy(Strategy::NONE);
  }

  Verifier& set_strategy(Strategy s) {
    strategy_ = s;
    return *this;
  }

  bool verify(const Cfg& target, const Cfg& rewrite);

  const CpuState& get_counter_example() const {
    return counter_example_;
  }

 private:
  Strategy strategy_;
  CpuState counter_example_;

  Sandbox* sandbox_;

  bool regression(const Cfg& target, const Cfg& rewrite);
  bool formal(const Cfg& target, const Cfg& rewrite);
  bool random(const Cfg& target, const Cfg& rewrite);
};

} // namespace stoke

#endif
