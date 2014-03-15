#ifndef STOKE_SRC_ARGS_DISTANCE_H
#define STOKE_SRC_ARGS_DISTANCE_H

#include <iostream>

#include "src/cost/distance.h"

namespace stoke {

struct DistanceReader {
  void operator()(std::istream& is, Distance& d);
};

struct DistanceWriter {
  void operator()(std::ostream& os, const Distance d);
};

} // namespace stoke

#endif


