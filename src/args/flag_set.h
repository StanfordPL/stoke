#ifndef STOKE_SRC_ARGS_FLAG_SET_H
#define STOKE_SRC_ARGS_FLAG_SET_H

#include <iostream>

#include "src/ext/x64asm/include/x64asm.h"

namespace stoke {

struct FlagSetReader {
  void operator()(std::istream& is, x64asm::FlagSet& fs);
};

struct FlagSetWriter {
  void operator()(std::ostream& os, const x64asm::FlagSet& fs);
};

} // namespace stoke

#endif



