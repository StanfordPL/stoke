#ifndef STOKE_SRC_ARGS_REG_SET_H
#define STOKE_SRC_ARGS_REG_SET_H

#include "src/ext/x64asm/include/x64asm.h"

namespace stoke {

struct RegSetReader {
	void operator()(std::istream& is, x64asm::RegSet& r);
};

struct RegSetWriter {
	void operator()(std::ostream& os, const x64asm::RegSet& r);
};

} // namespace stoke

#endif

