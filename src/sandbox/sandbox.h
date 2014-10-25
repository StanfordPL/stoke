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

#include <unordered_map>
#include <vector>

#include "src/ext/x64asm/include/x64asm.h"

#include "src/cfg/cfg.h"
#include "src/sandbox/io_pair.h"
#include "src/sandbox/output_iterator.h"
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
	/** Should the sandbox report errors for linux abi violations? */
	bool abi_check_;
  /** The maximum number of jumps to take before raising SIGINT. */
  size_t max_jumps_;
  /** Set prior to execution, is memory read only? */
  bool read_only_mem_;

  /** I/O pairs. These are pointers to simplify vector reallocations. */
  std::vector<IoPair*> io_pairs_;

  /** Callbacks to invoke before a line is executed. */
  std::unordered_map<size_t, std::vector<std::pair<StateCallback, void*>>> before_;
  /** Callbacks to invokes after a line is exeucted. */
  std::unordered_map<size_t, std::vector<std::pair<StateCallback, void*>>> after_;

  /** Assembler, no sense in always creating these. */
  x64asm::Assembler assm_;
  /** Scratch space used here and there by sandboxing code. */
  uint64_t scratch_[16];

  /** How many more jumps can be made before SIGKILL? */
  size_t jumps_remaining_;

	/** Pointer to the user's state */
	void* out_;
	/** Pointer to a function for writing the user's input state (modulo rsp) to the cpu */
	void* in2cpu_;
	/** Pointer to a function for writing the user's output state (modulo rsp) to the cpu */
	void* out2cpu_;
	/** Pointer to a function for reading the user's output state (all of it) from the cpu */
	void* cpu2out_;
  /** Pointer to a function for mapping virtual addresses to physical addresses */
  void* map_addr_;

	/** The user's current %rsp */
	uint64_t user_rsp_;
	/** The harness's %rsp */
	uint64_t harness_rsp_;
	/** STOKE's %rsp */
	uint64_t stoke_rsp_;
		
	/** Pointer to the harness function */
	x64asm::Function harness_;
	/** Pointer to the signal trap function */
	x64asm::Function signal_trap_;
  /** Function buffer for jit assembling codes. */
  x64asm::Function fxn_;

	/** Check for abi violations between input and output states */
	bool check_abi(const IoPair& iop) const;

	/** Assembles the harness function */
	x64asm::Function emit_harness();
	/** Assembles a signal handler trap */
	x64asm::Function emit_signal_trap();
	/** Assembles a function for writing user state (modulo rsp) to the cpu */
	x64asm::Function emit_state2cpu(const CpuState& cs);
	/** Assembles a function for reading user state from the cpu */
	x64asm::Function emit_cpu2state(CpuState& cs);
  /** Returns a function that maps virtual addresses to physical addresses. */
  x64asm::Function emit_map_addr(CpuState& cs);
  /** Returns code to check memory for validity and then toggle def bits. */
  void emit_map_addr_cases(CpuState& cs, const x64asm::Label& fail, const x64asm::Label& done, bool stack);

	/** Assembles the user's function */
	void emit_function(const Cfg& cfg);
  /** Emit a callback (before or after) a line. */
  void emit_callbacks(size_t line, bool before);
  /** Emit an instruction (and possibly sandbox memory). */
  void emit_instruction(const x64asm::Instruction& instr, const x64asm::Label& exit);
  /** Emit a memory instruction. */
  void emit_memory_instruction(const x64asm::Instruction& instr);
  /** Emit a jump instruction */
  void emit_jump(const x64asm::Instruction& instr);
	/** Emit the CALL LABEL instruction. */
	void emit_call(const x64asm::Instruction& instr);
	/** Emit the RET instruction. */
	void emit_ret(const x64asm::Instruction& instr, const x64asm::Label& exit);
  /** Special case for emitting push. */
  void emit_push(const x64asm::Instruction& instr);
  /** Special case for emitting pop. */
  void emit_pop(const x64asm::Instruction& instr);
  /** Special case for emitting div instructions that read from registers. */
  void emit_reg_div(const x64asm::Instruction& instr);
	/** Special case for emitting div instructions that read from memory. */
	void emit_mem_div(const x64asm::Instruction& instr);

	/** Emits a bail-out call to the signal trap */
	void emit_signal_trap_call(ErrorCode ec);
	/** Emit code that swaps stoke_rsp_ out of and user_rsp_ into %rsp */
	void emit_load_user_rsp();
	/** Emit code that swaps user_rsp_ out of and stoke_rsp_ into %rsp */
	void emit_load_stoke_rsp();
};

} // namespace stoke

#endif
