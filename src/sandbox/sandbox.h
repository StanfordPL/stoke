// Copyright 2014 eric schkufza
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#ifndef STOKE_SRC_SANDBOX_SANDBOX_H
#define STOKE_SRC_SANDBOX_SANDBOX_H

#include <array>
#include <unordered_map>
#include <vector>

#include "src/ext/x64asm/include/x64asm.h"

#include "src/cfg/cfg.h"
#include "src/sandbox/io_pair.h"
#include "src/sandbox/output_iterator.h"
#include "src/sandbox/stack_snapshot.h"
#include "src/sandbox/state_callback.h"
#include "src/state/cpu_state.h"

namespace stoke {

class Sandbox {
 public:
  /** Creates a sandbox. */
  Sandbox();

  /** Deletes a sandbox. */
  ~Sandbox() {
    clear_inputs();
  }

	/** Sets whether the sandbox should report sigsegv for abi violations. */
	Sandbox& set_abi_check(bool check) {
		abi_check_ = check;
		return *this;
	}
  /** Sets the maximum number of jumps taken before raising SIGINT. */
  Sandbox& set_max_jumps(size_t jumps) {
    max_jumps_ = jumps;
    return *this;
  }
	/** Sets the maximum number of calls performed before raising SIGINT. */
	Sandbox& set_max_calls(size_t calls) {
		max_calls_ = calls;
		return *this;
	}

  /** Clear input set. */
  Sandbox& clear_inputs();
  /** Add a new input. */
  Sandbox& insert_input(const CpuState& input);

  /** Returns the number of inputs installed so far. */
  size_t size() const {
    return io_pairs_.size();
  }

	/** Returns an input */
	const CpuState& get_input(size_t index) const {
		assert(index < size());
		return io_pairs_[index]->in_;
	}

  /** Clears the set of callbacks to invoke during execution. */
  Sandbox& clear_callbacks() {
    before_.clear();
    after_.clear();
    return *this;
  }
  /** Insert a callback to be invoked prior to exeucting a line. */
  Sandbox& insert_before(size_t line, StateCallback cb, void* arg) {
    before_[line].push_back(std::make_pair(cb, arg));
    return *this;
  }
  /** Insert a callback to be invoked after executing a line. */
  Sandbox& insert_after(size_t line, StateCallback cb, void* arg) {
    after_[line].push_back(std::make_pair(cb, arg));
    return *this;
  }

  /** Convenience method. Compile a new code and run for all inputs. */
  void run(const Cfg& cfg) {
    compile(cfg);
    run_all();
  }
  /** Compile a new code. */
  void compile(const Cfg& cfg);
  /** Run a code for all inputs. */
  void run_all();
  /** Run a code for just one input. */
  void run_one(size_t index);

  /** Iterator for return states. */
  output_iterator get_result(size_t index) const {
    assert(index < size());
    return output_iterator(io_pairs_.begin() + index);
  }
  /** Iterator for return states. */
  output_iterator result_begin() const {
    return output_iterator(io_pairs_.begin());
  }
  /** Iterator for return states. */
  output_iterator result_end() const {
    return output_iterator(io_pairs_.end());
  }

 private:
  /** Assembler, no sense in always creating these. */
  x64asm::Assembler assm_;
  /** Function buffer for jit assembling codes. */
  x64asm::Function fxn_;

  /** I/O pairs. These are pointers to simplify vector reallocations. */
  std::vector<IoPair*> io_pairs_;
  /** Stack snapshot for restoring valid stack state as necessary. */
  StackSnapshot snapshot_;

  /** Callbacks to invoke before a line is executed. */
  std::unordered_map<size_t, std::vector<std::pair<StateCallback, void*>>> before_;
  /** Callbacks to invokes after a line is exeucted. */
  std::unordered_map<size_t, std::vector<std::pair<StateCallback, void*>>> after_;

	/** Should the sandbox report errors for linux abi violations? */
	bool abi_check_;
  /** The maximum number of jumps to take before raising SIGINT. */
  size_t max_jumps_;
  /** How many more jumps can be made before SIGINT? */
  size_t jumps_;
	/** The maximum number of calls to make before raising SIGINT. */
	size_t max_calls_;
	/** How many more calls cab be made before SIGINT? */
	size_t calls_;
  /** Has a segfault occurred during this execution? */
  size_t segv_;

  /** Scratch space used here and there by sandboxing code. */
  uint64_t scratch_[16];
  /** Set prior to execution, is memory read only? */
  bool read_only_mem_;
  /** Set prior to execution, the value of the user-provided stack pointer. */
  uint64_t current_frame_;
  /** Set prior to execution, pointer to current state. */
  uint64_t current_state_;
  /** Set prior to execution, function for copying hardware state. */
  uint64_t current_c2o_;
  /** Set prior to execution, function for restoring hardware state. */
  uint64_t current_o2c_;
  /** Set prior to execution, function for sandboxing memory references. */
  uint64_t current_map_addr_;

  /** Emit a memory instruction. */
  void emit_memory_instr(const x64asm::Instruction& instr);
  /** Special case for emitting push. */
  void emit_push(const x64asm::Instruction& instr);
  /** Special case for emitting pop. */
  void emit_pop(const x64asm::Instruction& instr);
  /** Special case for emitting div instructions that read from registers. */
  void emit_reg_div(const x64asm::Instruction& instr);
	/** Special case for emitting div instructions that read from memory. */
	void emit_mem_div(const x64asm::Instruction& instr);

  /** Emits code to save the true callee saved registers. */
  void emit_save_stoke_callee_save();
  /** Emits code to load user-specified register values to cpu. */
  void emit_write_user_state();
  /** Emits code to save the user callee saved registers. */
  void emit_save_user_callee_save();
  /** Emit a callback (before or after) a line. */
  void emit_callbacks(size_t line, bool before);
  /** Emit sandboxing code prior to taking a jump. */
  void emit_pre_jump();
  /** Emit sandboxing code prior to a return. */
  void emit_pre_return();
  /** Emit a special exit for code that signals. */
  void emit_sig_return();

  /** Returns a function which maps rdi into the heap sandbox. */
  x64asm::Function assemble_map_addr(CpuState& cs);
  /** Returns code to check memory for validity and then toggle def bits. */
  void emit_stack_heap_cases(CpuState& cs, bool stack);



	/** Pointer to a function for writing the user's input state (modulo rsp) to the cpu */
	void* in2cpu_;
	/** Pointer to a function for writing the user's output state (modulo rsp) to the cpu */
	void* out2cpu_;
	/** Pointer to a function for reading the user's output state (all of it) from the cpu */
	void* cpu2out_;
	/** The user's current %rsp */
	uint64_t user_rsp_;
		
	/** Pointer to the harness function */
	x64asm::Function harness_;
	/** The harness's %rsp */
	uint64_t harness_rsp_;
	/** STOKE's %rsp */
	uint64_t stoke_rsp_;

	/** Assembles a function for writing user state (modulo rsp) to the cpu */
	x64asm::Function emit_state2cpu(const CpuState& cs);
	/** Assembles a function for reading user state from the cpu */
	x64asm::Function emit_cpu2state(CpuState& cs);
	/** Assembles the harness function */
	x64asm::Function emit_harness();
	/** Assembles the user's function */
	void emit_function(const Cfg& cfg);
	
  /** Emit an instruction (and possibly sandbox memory). */
  void emit_instruction(const x64asm::Instruction& instr);
};

} // namespace stoke

#endif
