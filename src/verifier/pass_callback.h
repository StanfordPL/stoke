#ifndef STOKE_SRC_VERIFIER_PASS_CALLBACK_H
#define STOKE_SRC_VERIFIER_PASS_CALLBACK_H

#include <chrono>

namespace stoke {

struct PassCallbackData {
	const std::chrono::system_clock::duration runtime;
};

typedef void (*PassCallback)(const PassCallbackData& data, void* arg);

} // namespace stoke

#endif
