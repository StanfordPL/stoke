#ifndef STOKE_SRC_ARGS_PERFORMANCE_TERM_H
#define STOKE_SRC_ARGS_PERFORMANCE_TERM_H

#include <iostream>

#include "src/cost/performance_term.h"

namespace stoke {

struct PerformanceTermReader {
  void operator()(std::istream& is, PerformanceTerm pt);
};

struct PerformanceTermWriter {
  void operator()(std::ostream& os, const PerformanceTerm pt);
};

} // namespace stoke

#endif

