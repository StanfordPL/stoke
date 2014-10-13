#include "src/stategen/stategen.h"

#include <cstdlib>

#include "src/sandbox/sandbox.h"
#include "src/sandbox/state_callback.h"
#include "src/state/regs.h"

using namespace stoke;
using namespace x64asm;

namespace {

void callback(const StateCallbackData& data, void* arg) {
	size_t& last_line = *((size_t *) arg);
	last_line = data.line;
}

} // namespace

namespace stoke {

bool StateGen::get(CpuState& cs) const {
	randomize_regs(cs);

	// Map rsp to a high address
	auto& upper_rsp = cs.gp[rsp].get_fixed_double(1);
	upper_rsp = 0x7fffffff;

	// Map rsp to 256-bit align
	auto& lower_rsp = cs.gp[rsp].get_fixed_byte(0);
	lower_rsp = 0;

	// Clear heap
	cs.heap.resize(0,0);

	// Create stack in the vicinity of rsp
	const auto s = cs.gp[rsp].get_fixed_quad(0);
	cs.stack.resize(s, 8);
	randomize_mem(cs.stack);

	return true;
}

bool StateGen::get(CpuState& cs, const Cfg& cfg) {
	// Insert callbacks before every instruction and compile
	sb_->clear_callbacks();

	size_t last_line;
	for (size_t i = 0, ie = cfg.get_code().size(); i < ie; ++i) {
		sb_->insert_before(i, callback, (void*)&last_line);
	}
	sb_->compile(cfg);

	// Generate a random state and keep checking for validity
	get(cs);
	for (int i = 0; i < (int)max_attempts_; ++i) {
		// Reset the sandbox state ...
		sb_->clear_inputs();
		sb_->insert_input(cs);
		// ... and try executing
		sb_->run_one(0);

		// We're done if the state didn't produce an error
		if (sb_->get_result(0)->code == ErrorCode::NORMAL) {
			return true;
		}
		// If the error is fixable (segfault we can allocate away) fix and retry
		else if (fix(*(sb_->get_result(0)), cs, cfg, last_line)) {
			i--;
		} 
		// Otherwise, generate a new state and call the attempt failed
		else {
			get(cs);
		}
	}

	return false;
}

void StateGen::randomize_regs(CpuState& cs) const {
	// General purpose
	for (size_t i = 0, ie = cs.gp.size(); i < ie; ++i) {
		auto& r = cs.gp[i];
		for (size_t j = 0, je = r.num_fixed_bytes(); j < je; ++j) {
			r.get_fixed_byte(j) = rand() % 256;
		}
	}
	// SSE
	for (size_t i = 0, ie = cs.sse.size(); i < ie; ++i) {
		auto& s = cs.sse[i];
		for (size_t j = 0, je = s.num_fixed_bytes(); j < je; ++j) {
			s.get_fixed_byte(j) = rand() % 256;
		}
	}
	// RFlags (note that some bits have deterministic values)
	for (size_t i = 0, ie = cs.rf.size(); i < ie; ++i) {
		cs.rf.set(i, rand() % 2);
	}
	cs.rf.set(1, 1);
	cs.rf.set(3, 0);
	cs.rf.set(5, 0);
	cs.rf.set(15, 0);
}

bool StateGen::is_supported_deref(const Cfg& cfg, size_t line) const {
	const auto& instr = cfg.get_code()[line];

	// Special support for push/pop/ret
	if (is_push(instr) || is_pop(instr) || is_ret(instr)) {
		return true;
	}

  // No support for implicit memory accesses
  if (!instr.derefs_mem()) {
    return false;
  }

	const auto mi = instr.mem_index();
	const auto op = instr.get_operand<M8>(mi);

	// No support for rip-offset form or segment register addressing
	if (op.rip_offset() || op.contains_seg()) {
		return false;
	}

	return true;
}

uint64_t StateGen::get_addr(const CpuState& cs, const Cfg& cfg, size_t line) const {
	const auto& instr = cfg.get_code()[line];

	// Special handling for implicit dereferences
	if (is_push(instr)) {
		return cs.gp[rsp].get_fixed_quad(0)-8;
	} else if (is_pop(instr)) {
		return cs.gp[rsp].get_fixed_quad(0);
	} else if (is_ret(instr)) {
    return cs.gp[rsp].get_fixed_quad(0);
  }

	const auto mi = instr.mem_index();
	const auto op = instr.get_operand<M8>(mi);

	uint64_t addr = 0;
	if (op.contains_base()) {
		if (op.addr_or()) {
			addr += cs.gp[op.get_base()].get_fixed_double(0);
		} else {
			addr += cs.gp[op.get_base()].get_fixed_quad(0);
		}
	}
	if (op.contains_index()) {
		auto scale = 1;
		switch (op.get_scale()) {
			case Scale::TIMES_2: 
				scale = 2; 
				break;
			case Scale::TIMES_4: 
				scale = 4; 
				break;
			case Scale::TIMES_8: 
				scale = 8; 
				break;
			default: 
				scale = 1; 
				break;
		}

		if (op.addr_or()) {
			addr += (scale * cs.gp[op.get_index()].get_fixed_double(0));
		} else {
			addr += (scale * cs.gp[op.get_index()].get_fixed_quad(0));
		}
	}
	addr += (uint64_t)(op.get_disp());

	return addr;	
}

size_t StateGen::get_size(const Cfg& cfg, size_t line) const {
	const auto& instr = cfg.get_code()[line];

	// Special handling for implicit dereferences
	if (is_push(instr) || is_pop(instr) || is_ret(instr)) {
		return 8;
	}

	// Otherwise, we can infer width from type
	const auto mi = instr.mem_index();
	switch (instr.type(mi)) {
		case Type::M_8:
			return 1;
  	case Type::M_16:
			return 2;
  	case Type::M_32:
			return 4;
  	case Type::M_64:
			return 8;
  	case Type::M_128:
			return 16;
  	case Type::M_256:
			return 32;

		// All other memory types are pretty rare, return a conservative 512-bits
		default:
			return 64;
	}
}

bool StateGen::resize_within(Memory& mem, uint64_t addr, size_t size) const {
	// This should always be true, otherwise there'd be no work to do
	// * See the previous check against already_allocated() one level up
	assert((addr+size) > mem.upper_bound());

	const auto delta = addr + size - mem.upper_bound();
	if (mem.size() + delta > max_memory_) {
		return false;
	}

	mem.resize(mem.lower_bound(), mem.size() + delta);
	randomize_mem(mem);
	return true;
}

bool StateGen::resize_below(Memory& mem, uint64_t addr, size_t size) const {
	size_t new_size = 0;
	if (addr + size > mem.upper_bound()) {
		new_size = size;
	} else {
		new_size = mem.upper_bound() - addr;
	}

	if (new_size > max_memory_) {
		return false;
	}

	mem.resize(addr, new_size);
	randomize_mem(mem);
	return true;
}

bool StateGen::resize_above(Memory& mem, uint64_t addr, size_t size) const {
	const auto delta = addr + size - mem.upper_bound();
	if (mem.size() + delta > max_memory_) {
		return false;
	}

	mem.resize(mem.lower_bound(), mem.size() + delta);
	randomize_mem(mem);
	return true;
}

void StateGen::randomize_mem(Memory& mem) const {
	for (auto i = mem.lower_bound(), ie = mem.upper_bound(); i < ie; ++i) {
		if (!mem.is_valid(i)) {
			mem.set_valid(i, true);
			mem.set_defined(i, true);
			mem[i] = rand() % 256;
		}
	}
}

bool StateGen::resize_mem(Memory& mem, uint64_t addr, size_t size) const {
	if (mem.size() == 0) {
		mem.resize(addr, size);
		randomize_mem(mem);
		return true;
	} else if (mem.in_range(addr) && resize_within(mem, addr, size)) {
		return true;
	} else if (addr < mem.lower_bound() && resize_below(mem, addr, size)) {
		return true;
	} else if (addr >= mem.upper_bound() && resize_above(mem, addr, size)) {
		return true;
	} else {
		return false;
	}
}

bool StateGen::fix(const CpuState& cs, CpuState& fixed, const Cfg& cfg, size_t line) {
  // Clear the error message unless something bad happens.
  error_message_ = "";

	// Only sigsegv is fixable
	if (cs.code != ErrorCode::SIGSEGV_) {
    error_message_ = "Interrupt was not segfault.";
		return false;
	}
	// Only explicit dereferences are fixable 
	if (!is_supported_deref(cfg, line)) {
    error_message_ = "Dereference not supported.";
		return false;
	}

	const auto addr = get_addr(cs, cfg, line);
	const auto size = get_size(cfg, line);

	// We can't do anything about misaligned memory or pre-allocated memory
	if (is_misaligned(addr, size)) {
    error_message_ = "Memory dereference misaligned.";
		return false;
	} else if (already_allocated(fixed.stack, addr, size)) {
    error_message_ = "Memory was already allocated in stack.";
		return false;
	} else if (already_allocated(fixed.heap, addr, size)) {
    error_message_ = "Memory was already allocated in heap.";
		return false;
	}

	// If we can't resize stack or heap, give up.
	if (!resize_mem(fixed.stack, addr, size) && !resize_mem(fixed.heap, addr, size)) {
    error_message_ = "Could not resize memory.";
		return false;
	}

	// If stack and heap overlap now, give up. This memory is broken.
	if (fixed.heap.upper_bound() >= fixed.stack.lower_bound()) {
    error_message_ = "Heap and stack overlap.";
		return false;
	}

	// Look like we did something right. Return success.
	return true;
}

} // namespace stoke
