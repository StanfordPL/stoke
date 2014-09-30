#ifndef STOKE_SRC_STATEGEN_STATEGEN_H
#define STOKE_SRC_STATEGEN_STATEGEN_H

#include <stdint.h>

#include "src/cfg/cfg.h"
#include "src/state/cpu_state.h"

namespace stoke {

class StateGen {
	public:
		/** Creates a new state generator. */
		StateGen() {
			set_max_attempts(16);
			set_max_stack(1024);
			set_max_jumps(1024);
		}

		/** Sets the maximum number of attempts to make when generating a state. */
		StateGen& set_max_attempts(size_t ma) {
			max_attempts_ = ma;
			return *this;
		}
		/** Sets the maximum number of bytes to assume to be stack. */
		StateGen& set_max_stack(size_t ms) {
			max_stack_ = ms;
			return *this;
		}
		/** Sets the maximum number of jumps to take before siginit. */
		StateGen& set_max_jumps(size_t mj) {
			max_jumps_ = mj;
			return *this;
		}

		/** Tries to generate a state that contains random register values; sensible rsp. */
		bool get(CpuState& cs) const;
		/** Tries to generate a state in which cfg can execute without signaling. */
		bool get(CpuState& cs, const Cfg& cfg) const;

	private:
		/** Replaces the register contents of cs with random bits. */
		void rand_regs(CpuState& cs) const;

		/** The maximum number of attempts to make when generating a state. */
		size_t max_attempts_;
		/** The maximum number of bytes to assume on the stack. */
		size_t max_stack_;
		/** The maximum number of jumps to take before sigint. */
		size_t max_jumps_;
};

} // namespace stoke

#endif
