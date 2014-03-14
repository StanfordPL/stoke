#ifndef STOKE_SRC_ARGS_TUNIT_H
#define STOKE_SRC_ARGS_TUNIT_H

#include <iostream>

#include "src/ext/x64asm/include/x64asm.h"

#include "src/tunit/tunit.h"

namespace stoke {

struct TUnitReader {
  void operator()(std::istream& is, TUnit& t);
};

struct TUnitWriter {
  void operator()(std::ostream& os, const TUnit& t);
};

} // namespace stoke

#endif
