#ifndef STOKE_SRC_STATE_ERROR_CODE_H
#define STOKE_SRC_STATE_ERROR_CODE_H

namespace stoke {

/** Hardware signal states. */
enum class ErrorCode {
	NORMAL = 0,
	SIGFPE_ = 8,
	SIGKILL_ = 9,
	SIGSEGV_ = 11
};

} // namespace stoke

#endif
