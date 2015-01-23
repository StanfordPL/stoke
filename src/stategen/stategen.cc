// Copyright 2013-2015 Eric Schkufza, Rahul Sharma, Berkeley Churchill, Stefan Heule
//
// Licensed under the Apache License, Version 2.0 (the License);
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an AS IS BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#include "src/stategen/stategen.h"

#include <cstdlib>

#include "src/sandbox/sandbox.h"
#include "src/sandbox/state_callback.h"
#include "src/state/regs.h"

using namespace stoke;
using namespace x64asm;

namespace {

void callback(const StateCallbackData& data, void* arg) {
  size_t& last_line = *((size_t*) arg);
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
  cs.heap.resize(0, 0);

  // Create stack in the vicinity of rsp
  const auto s = cs.gp[rsp].get_fixed_quad(0);
  cs.stack.resize(s - stack_size_, stack_size_);
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
  tried_to_fix_misalign_ = false;
  for (int i = 0; i < (int)max_attempts_; ++i) {
    // Reset the sandbox state and try executing
    sb_->clear_inputs();
    sb_->insert_input(cs);
    sb_->run_one(0);

		// There's a single failure case we have to deal with immediately.
		// If the sandbox couldn't link cfg against its aux functions, it 
		// won't ever run and set the value of last_line.
		if (sb_->get_result(0)->code == ErrorCode::SIGBUS_) {
			error_message_ = "Linking failed!";
			return false;
		}

    // If we didn't segfault, or we did due to misalign and it's allowed, 
		// then we're done
    if(is_ok(*sb_, cfg, last_line)) {
      return true;
    }
    // Otherwise, try allocating away a segfault and retry
    else if (fix(*(sb_->get_result(0)), cs, cfg, last_line)) {
      i--;
    }
    // Otherwise, generate a new state and call this attempt failed
    else {
      get(cs);
      tried_to_fix_misalign_ = false;
    }
  }

  return false;
}

bool StateGen::is_ok(const Sandbox& sb, const Cfg& cfg, size_t line) {
  if (sb_->get_result(0)->code == ErrorCode::NORMAL) {
    return true;
  }

  if(!is_supported_deref(cfg, line))
    return false;

  CpuState cs = *(sb_->get_result(0));
  const auto addr = get_addr(cs, cfg, line);
  const auto size = get_size(cfg, line);

  // If the address is already allocated, there's a segfault,
  // it's misaligned and we allow misaligned, then we're ok.
  if(allow_unaligned_ && is_misaligned(addr, size) &&
      cs.code == ErrorCode::SIGSEGV_ &&
      (already_allocated(cs.stack, addr, size) ||
       already_allocated(cs.heap, addr, size))) {
    return true;
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
  // RFlags (don't modify deterministic values)
  for (size_t i = 0, ie = cs.rf.size(); i < ie; ++i) {
    if (!cs.rf.is_fixed(i)) {
      cs.rf.set(i, rand() % 2);
    }
  }
}

bool StateGen::is_supported_deref(const Cfg& cfg, size_t line) {
  const auto& instr = cfg.get_code()[line];

  // Special support for push/pop/ret
  if (instr.is_push() || instr.is_pop() || instr.is_any_return() || instr.is_call()) {
    return true;
  }

  // No support for implicit memory accesses
  if (instr.is_implicit_memory_dereference()) {
    error_message_ = "Implicit memory dereferences not supported.";
    return false;
  }

  if (instr.mem_index() == -1) {
    error_message_ = "Could not find an explicit or implicit memory dereference."
                     "  Bug somewhere (forgot retq?).";
    return false;
  }

  const auto mi = instr.mem_index();
  const auto op = instr.get_operand<M8>(mi);

  // No support for rip-offset form or segment register addressing
  if (op.rip_offset() || op.contains_seg()) {
    error_message_ = "No support for RIP offset or segment addressing";
    return false;
  }

  return true;
}

uint64_t StateGen::get_addr(const CpuState& cs, const Cfg& cfg, size_t line) const {
  const auto& instr = cfg.get_code()[line];

  // Special handling for implicit dereferences
  if (instr.is_push() || instr.is_call()) {
    return cs.gp[rsp].get_fixed_quad(0) - 8;
  } else if (instr.is_pop()) {
    return cs.gp[rsp].get_fixed_quad(0);
  } else if (instr.is_any_return()) {
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

  /* We need to sign-extend the displacement from 32 to 64 bits */
  uint64_t displacement = (op.get_disp());
  if (displacement & 0x80000000) {
    displacement |= 0xffffffff00000000;
  }
  addr += displacement;

  return addr;
}

size_t StateGen::get_size(const Cfg& cfg, size_t line) const {
  const auto& instr = cfg.get_code()[line];

  // Special handling for implicit dereferences
  if (instr.is_push() || instr.is_pop() || instr.is_any_return() || instr.is_call()) {
    return 8;
  }

  // Otherwise, we can infer width from type
  const auto mi = instr.mem_index();
  return instr.get_operand<M8>(mi).size()/8;
}

bool StateGen::resize_within(Memory& mem, uint64_t addr, size_t size) const {
  // This should always be true, otherwise there'd be no work to do
  // * See the previous check against already_allocated() one level up
  assert((addr + size) > mem.upper_bound());

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

bool StateGen::fix_misalignment(const CpuState& cs, CpuState& fixed, const Cfg& cfg, size_t line) {

  const auto instr = cfg.get_code()[line];
  const auto mi = instr.mem_index();
  const auto op = instr.get_operand<M8>(mi);

  const auto addr = get_addr(cs, cfg, line);
  const auto mask = 0x1f;
  const auto offset = addr & mask;

  if (op.contains_base()) {
    const auto current = cs.gp[op.get_base()].get_fixed_quad(0);
    if(((current - offset) & mask) && !tried_to_fix_misalign_) {
      const auto new_byte = (current & mask) - offset;
      fixed.gp[op.get_base()].get_fixed_byte(0) = new_byte;
      tried_to_fix_misalign_ = true;
      return true;
    } else {
      error_message_ = "Could not fix misaligned memory reference.";
      tried_to_fix_misalign_ = false;
      return false;
    }
  } else {
    error_message_ = "Could not find misaligned memory reference.";
    tried_to_fix_misalign_ = false;
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
    return false;
  }

  const auto addr = get_addr(cs, cfg, line);
  const auto size = get_size(cfg, line);

  // We can't do anything about misaligned memory or pre-allocated memory
  if (is_misaligned(addr, size) && !allow_unaligned_) {
    return fix_misalignment(cs, fixed, cfg, line);
  } else if (already_allocated(fixed.stack, addr, size)) {
    tried_to_fix_misalign_ = false;
    error_message_ = "Memory was already allocated in stack.";
    return false;
  } else if (already_allocated(fixed.heap, addr, size)) {
    tried_to_fix_misalign_ = false;
    error_message_ = "Memory was already allocated in heap.";
    return false;
  }

  // If we can't resize stack or heap, give up.
  if (!resize_mem(fixed.stack, addr, size) && !resize_mem(fixed.heap, addr, size)) {
    error_message_ = "Could not resize memory.";
    return false;
  }

  // If stack and heap overlap now, give up. This memory is broken.
  if (!(fixed.heap.upper_bound() < fixed.stack.lower_bound() ||
        fixed.stack.upper_bound() < fixed.heap.lower_bound())) {
    error_message_ = "Heap and stack overlap.";
    return false;
  }

  // Look like we did something right. Return success.
  return true;
}

} // namespace stoke
