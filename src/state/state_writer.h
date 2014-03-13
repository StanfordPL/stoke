#ifndef STOKE_SRC_STATE_STATE_WRITER_H
#define STOKE_SRC_STATE_STATE_WRITER_H

#include <stdint.h>

#include <iostream>

#include "src/state/cpu_state.h"
#include "src/state/regs.h"
#include "src/state/memory.h"

namespace stoke {

class StateWriter {
	public:
		void operator()(std::ostream& os, const CpuState& cs) const;

	private:
		void write_regs(std::ostream& os, const Regs& regs, const char** names, size_t padding) const;

		void write_mem(std::ostream& os, const Memory& mem) const;
		void write_summary(std::ostream& os, const Memory& mem) const;
		void write_row(std::ostream& os, const Memory& mem, uint64_t addr) const;
		void write_contents(std::ostream& os, const Memory& mem) const;

		bool valid_row(const Memory& mem, uint64_t addr) const;
		size_t valid_count(const Memory& mem) const;
};

} // namespace stoke

namespace std {

inline std::ostream& operator<<(std::ostream& os, const stoke::CpuState& cs) {
	stoke::StateWriter()(os, cs);
	return os;
}

} // namespace std

#endif
