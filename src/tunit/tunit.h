#ifndef STOKE_SRC_TUNIT_TUNIT_H
#define STOKE_SRC_TUNIT_TUNIT_H

#include <string>

#include "src/ext/x64asm/include/x64asm.h"

namespace stoke {

struct TUnit {
	std::string name;
	x64asm::Code code;
};

} // namespace stoke

#endif
