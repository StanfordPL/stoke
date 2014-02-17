#ifndef STOKE_SRC_VERIFIER_FAIL_CALLBACK_H
#define STOKE_SRC_VERIFIER_FAIL_CALLBACK_H

#include <chrono>

namespace stoke {

struct FailCallbackData {
	const std::chrono::system_clock::duration runtime;
	const CpuState& counter_example;
};

typedef void (*FailCallback)(const FailCallbackData& data, void* arg);

} // namespace stoke

#endif
