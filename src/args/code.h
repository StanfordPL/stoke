#ifndef STOKE_SRC_ARGS_CODE_H
#define STOKE_SRC_ARGS_CODE_H

#include <iostream>

#include "src/ext/x64asm/include/x64asm.h"

namespace stoke {

struct CodeReader {
  void operator()(std::istream& is, x64asm::Code& c) {
    is >> c;
  }
};

struct CodeWriter {
  void operator()(std::ostream& os, const x64asm::Code& c) {
    os << c;
  }
};

} // namespace stoke

#endif
