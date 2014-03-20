#ifndef STOKE_SRC_VERIFIER_STRATEGY_H
#define STOKE_SRC_VERIFIER_STRATEGY_H

namespace stoke {

enum class Strategy {
  NONE,
  REGRESSION,
  FORMAL,
  RANDOM
};

} // namespace stoke

#endif
