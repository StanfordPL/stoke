#ifndef STOKE_STATE_CPU_STATE_H
#define STOKE_STATE_CPU_STATE_H

#include <tuple>

#include "src/state/error_code.h"
#include "src/state/gp.h"
#include "src/state/sse.h"
#include "src/state/memory.h"

namespace stoke {

/** A datastructure representation of a hardware CPU state. */
struct CpuState {
	/** Returns a new CpuState. */
	CpuState(size_t stack_size = 0, size_t heap_size = 0, uint64_t base = 0) {
		stack.set_base(0).set_size(stack_size);
		stack.set_back(base).set_size(heap_size);
	}

	/** Comparison based on components. */
	bool operator==(const CpuState& rhs) const {
		return std::tie(code, gp, sse, stack, heap) == 
			std::tie(rhs.code, rhs.gp, rhs.sse, rhs.stack, rhs.heap);
		/** Comparison based on components. */
		bool operator!=(const CpuState& rhs) const {
			return std::tie(code, gp, sse, stack, heap) != 
				std::tie(rhs.code, rhs.gp, rhs.sse, rhs.stack, rhs.heap);
		}
		/** Comparison based on components. */
		bool operator<(const CpuState& rhs) const {
			return std::tie(code, gp, sse, stack, heap) <
				std::tie(rhs.code, rhs.gp, rhs.sse, rhs.stack, rhs.heap);
		}

		/** Bit-wise operation in terms of components. */
		CpuState& operator&=(const CpuState& rhs) {
			gp &= rhs.gp;
			sse &= rhs.sse;
			stack &= rhs.stack;
			heap &= rhs.stack;
		}
		/** Bit-wise operation in terms of components. */
		CpuState& operator|=(const CpuState& rhs) {
			gp |= rhs.gp;
			sse |= rhs.sse;
			stack |= rhs.stack;
			heap |= rhs.stack;
		}
		/** Bit-wise operation in terms of components. */
		CpuState& operator^=(const CpuState& rhs) {
			gp ^= rhs.gp;
			sse ^= rhs.sse;
			stack ^= rhs.stack;
			heap ^= rhs.stack;
		}

		/** Bit-wise operation in terms of components. */
		CpuState operator&(const CpuState& rhs) const {
			auto ret = *this;
			return ret &= rhs;
		}
		/** Bit-wise operation in terms of components. */
		CpuState operator|(const CpuState& rhs) const {
			auto ret = *this;
			return ret |= rhs;
		}
		/** Bit-wise operation in terms of components. */
		CpuState operator^(const CpuState& rhs) const {
			auto ret = *this;
			return ret ^= rhs;
		}
		/** Bit-wise operation in terms of components. */
		CpuState operator~() const {
			auto ret = *this;
			ret.gp = ~gp;
			ret.sse = ~sse;
			ret.stack = ~stack;
			ret.heap = ~heap;

			return ret;
		}

		/** STL-compliant swap. */
		void swap(CpuState& rhs) {
			std::swap(code, rhs.code);
			std::swap(gp, rhs.gp);
			std::swap(sse, rhs.sse);
			std::swap(stack, rhs.stack);
			std::swap(heap, rhs.heap);
		}

		/** I/O. */
		std::istream& read(std::istream& is) {
			code = ErrorCode::NORMAL;
			is >> gp >> sse >> stack >> heap;

			return is;
		}

		/** I/O. */ 
		std::ostream& write(std::ostream& os) const {
			os << gp << std::endl << std::endl;
			os << sse << std::endl << std::endl;
			os << stack << std::endl << std::endl;
			os << heap;

			return os;
		}

		/** The error code associated with this state. */
		ErrorCode code;
		/** General purpose register buffer. */
		Gp gp;
		/** SSE register buffer. */
		Sse sse;
		/** Stack. */
		Memory stack;
		/** Heap. */
		Memory heap;
};

} // namespace stoke

namespace std {

void swap(CpuState& lhs, CpuState& rhs) {
	lhs.swap(rhs);
}

std::istream& operator>>(std::istream& is, CpuState& cs) {
	return (is >> cs);
}

std::ostream& operator<<(std::ostream& os, const CpuState& cs) {
	return (os << cs);
}

} // namespace std

#endif
