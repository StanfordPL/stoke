#ifndef STOKE_SRC_ARGS_STRATEGY_H
#define STOKE_SRC_ARGS_STRATEGY_H

#include <iostream>

#include "src/verifier/strategy.h"

namespace stoke {

struct StrategyReader {
  void operator()(std::istream& is, Strategy pt);
};

struct StrategyWriter {
  void operator()(std::ostream& os, const Strategy pt);
};

} // namespace stoke

#endif


