#include "src/stategen/stategen.h"

#include <cstdlib>

#include "src/ext/x64asm/include/x64asm.h"

#include "src/state/regs.h"

using namespace x64asm;

namespace stoke {

CpuState StateGen::get() const {
	CpuState cs;
	rand_regs(cs);

	// Map rsp to a high address
	auto& upper_rsp = cs.gp[rsp].get_fixed_double(1);
	upper_rsp = 0x00007fff;

	// Map rsp to 256-bit align
	auto& lower_rsp = cs.gp[rsp].get_fixed_byte(0);
	lower_rsp = 0;

	// Create stack in the vicinity of rsp
	const auto s = cs.gp[rsp].get_fixed_quad(0);
	cs.stack.resize(s, 8);
	for (auto i = s, ie = s+8; i < ie; ++i) {
		cs.stack.set_valid(i, true);
	}

	return cs;
}

CpuState StateGen::get(const Cfg& cfg) const {
	return get();
}

void StateGen::rand_regs(CpuState& cs) const {
	for (size_t i = 0, ie = cs.gp.size(); i < ie; ++i) {
		auto& r = cs.gp[i];
		for (size_t j = 0, je = r.num_fixed_bytes(); j < je; ++j) {
			r.get_fixed_byte(j) = rand() % 256;
		}
	}
	for (size_t i = 0, ie = cs.sse.size(); i < ie; ++i) {
		auto& s = cs.sse[i];
		for (size_t j = 0, je = s.num_fixed_bytes(); j < je; ++j) {
			s.get_fixed_byte(j) = rand() % 256;
		}
	}
}

} // namespace stoke
