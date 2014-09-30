#include "src/stategen/stategen.h"

#include <cstdlib>

#include "src/ext/x64asm/include/x64asm.h"

#include "src/sandbox/sandbox.h"
#include "src/sandbox/state_callback.h"
#include "src/state/regs.h"

using namespace stoke;
using namespace x64asm;

namespace {

struct CbResult {
	size_t last_line;
	uint64_t last_deref;
};

void callback(const StateCallbackData& data, void* arg) {
	CbResult& cbr = *((CbResult*) arg);

	cbr.last_line = data.line;
	// @ todo
	cbr.last_deref = 0;
}

} // namespace

namespace stoke {

bool StateGen::get(CpuState& cs) const {
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

	return true;
}

bool StateGen::get(CpuState& cs, const Cfg& cfg) const {
	// Make a sandbox
	Sandbox sb;
	sb.set_max_jumps(max_jumps_);	

	// Insert callbacks before every instruction and compile
	CbResult cbr;
	for (size_t i = 0, ie = cfg.get_code().size(); i < ie; ++i) {
		sb.insert_before(i, callback, (void*)&cbr);
	}
	sb.compile(cfg);

	// Try max_attempts times to run to completion without failure
	for (size_t i = 0; i < max_attempts_; ++i) {
		// Start with a random state
		sb.clear_inputs();
		get(cs);
		sb.insert_input(cs);

		// Try executing
		sb.run_one(0);

		// Break if we ran successfully
		if (sb.get_result(0)->code == ErrorCode::NORMAL) {
			break;
		}
	}

	cs = *(sb.get_result(0));
	return cs.code == ErrorCode::NORMAL;
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
