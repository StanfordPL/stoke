#ifndef STOKE_SRC_STATEGEN_STATEGEN_H
#define STOKE_SRC_STATEGEN_STATEGEN_H

#include "src/cfg/cfg.h"
#include "src/state/cpu_state.h"

namespace stoke {

class StateGen {
	public:
		/** Creates a new state generator. */
		StateGen() {
			set_max_stack(1024);
		}

		/** Sets the maximum number of bytes to assume to be stack. */
		StateGen& set_max_stack(size_t ms) {
			max_stack_ = ms;
			return *this;
		}

		/** Returns a state that contains random register values; sensible rsp. */
		CpuState get() const;
		/** Returns a state in which cfg can execute without signaling. */
		CpuState get(const Cfg& cfg) const;

	private:
		/** Replaces the register contents of cs with random bits. */
		void rand_regs(CpuState& cs) const;

		/** The maximum number of bytes to assume on the stack. */
		size_t max_stack_;
};

} // namespace stoke

#endif
