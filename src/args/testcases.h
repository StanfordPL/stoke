#ifndef STOKE_SRC_ARGS_TESTCASE_H
#define STOKE_SRC_ARGS_TESTCASE_H

#include <vector>

#include "src/state/cpu_state.h"

namespace stoke {

struct TestcasesReader {
	void operator()(std::istream& is, std::vector<stoke::CpuState>& ts);
};

struct TestcasesWriter {
	void operator()(std::ostream& os, const std::vector<stoke::CpuState>& ts);
};

} // namespace stoke

#endif

