#ifndef STOKE_SRC_ARGS_REDUCTION_H
#define STOKE_SRC_ARGS_REDUCTION_H

#include <iostream>

#include "src/cost/reduction.h"

namespace stoke {

struct ReductionReader {
  void operator()(std::istream& is, Reduction& r);
};

struct ReductionWriter {
  void operator()(std::ostream& os, const Reduction r);
};

} // namespace stoke

#endif


