#ifndef STOKE_SRC_ARGS_MOVE_H
#define STOKE_SRC_ARGS_MOVE_H

#include <iostream>

#include "src/search/move.h"

namespace stoke {

struct MoveReader {
  void operator()(std::istream& is, Move m);
};

struct MoveWriter {
  void operator()(std::ostream& os, const Move m);
};

} // namespace stoke

#endif



