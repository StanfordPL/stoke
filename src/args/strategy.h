#ifndef STOKE_SRC_ARGS_STRATEGY_H
#define STOKE_SRC_ARGS_STRATEGY_H

#include <iostream>

#include "src/verifier/strategy.h"

namespace stoke {

struct StrategyReader {
  void operator()(std::istream& is, Strategy& s);
};

struct StrategyWriter {
  void operator()(std::ostream& os, const Strategy s);
};

} // namespace stoke

#endif


