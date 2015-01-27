// Copyright 2013-2015 Eric Schkufza, Rahul Sharma, Berkeley Churchill, Stefan Heule
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
#include "src/sandbox/input_iterator.h"
#include "src/sandbox/output_iterator.h"
#include "src/sandbox/state_callback.h"
#include "src/state/cpu_state.h"

namespace stoke {

class Sandbox {
public:
	/** Iterator for auxiliary function source */
	typedef std::vector<Cfg>::const_iterator function_iterator;
		
  /** Returns true if this instruction is supported. */
  static bool is_supported(const x64asm::Instruction& instr) {
    return is_supported(instr.get_opcode());
  }
  /** Returns true if this opcode is supported. */
  static bool is_supported(x64asm::Opcode o);

  /** Creates a sandbox. */
  Sandbox();
  /** Deletes a sandbox. */
  ~Sandbox() {
    clear_inputs();
    clear_functions();
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

  /** Add a new input. */
  Sandbox& insert_input(const CpuState& input);
  /** Clear input set. */
  Sandbox& clear_inputs();
  /** Returns the number of inputs installed so far. */
  size_t num_inputs() const {
    return io_pairs_.size();
  }

  /** Iterator for input states. */
  input_iterator get_input(size_t index) const {
    assert(index < size());
    return input_iterator(io_pairs_.begin() + index);
  }
  /** Iterator for input states. */
  input_iterator input_begin() const {
    return input_iterator(io_pairs_.begin());
  }
  /** Iterator for input states. */
  input_iterator input_end() const {
    return input_iterator(io_pairs_.end());
  }

  /** Iterator for output states. */
  output_iterator get_output(size_t index) const {
    assert(index < size());
    return output_iterator(io_pairs_.begin() + index);
  }
  /** Iterator for output states. */
  output_iterator output_begin() const {
    return output_iterator(io_pairs_.begin());
  }
  /** Iterator for output states. */
  output_iterator output_end() const {
    return output_iterator(io_pairs_.end());
  }

  /** Insert an auxiliary function which can be called at runtime */
  Sandbox& compile_function(const Cfg& cfg);
  /** Clear auxiliary function set */
  Sandbox& clear_functions();
  /** Returns the number of installed functions */
  size_t num_functions() const {
    return aux_fxns_.size();
  }

	/** Iterator over auxiliary function source. */
	function_iterator function_begin() const {
		return aux_fxns_src_.begin();
	}
	/** Iterator over auxiliary function source. */
	function_iterator function_end() const {
		return aux_fxns_src_.end();
	}

  /** Insert a callback to be invoked prior to any line in any function. */
  Sandbox& insert_before(StateCallback cb, void* arg);
  /** Insert a callback to be invoked prior to any line in any function. */
  Sandbox& insert_after(StateCallback cb, void* arg);
  /** Insert a callback to be invoked prior to exeucting a line in the main function. */
  Sandbox& insert_before(size_t line, StateCallback cb, void* arg);
  /** Insert a callback to be invoked after executing a line in the main function. */
  Sandbox& insert_after(size_t line, StateCallback cb, void* arg);
  /** Clears the set of callbacks to invoke during execution. */
  Sandbox& clear_callbacks();
  /** Returns the number of installed callbacks */
  size_t num_callbacks() const;

  /** Compile a new main function. */
  void compile_main(const Cfg& cfg);
	/** Access the source of the main function. */
	const Cfg& get_main() const {
		return fxn_src_;
	}

  /** Run a main function for just one input. */
  void run_one(size_t index);
  /** Run a main function for all inputs. */
  void run_all();
  /** Convenience method. Compile a new main function and run for all inputs. */
  void run(const Cfg& cfg) {
    compile_main(cfg);
    run_all();
  }

  /** Flag labels allocated after this call as disposable. */
  void start_reusing_labels() {
    label_checkpoint_ = next_label_;
  }
  /** Start recycling any labels that were allocated since the last call to
    start_reusing_labels(); invalidates EVERYTHING that was sandboxed in
    the interim. Make sure you know what you're doing. */
  void start_recycling_labels() {
    next_label_ = label_checkpoint_;
  }

  /** @deprecated Use num_inputs() */
  size_t size() const {
    return num_inputs();
  }
  /** @deprecated Use get_output() */
  output_iterator get_result(size_t index) const {
    return get_output(index);
  }
  /** @deprecated Use output_begin() */
  output_iterator result_begin() const {
    return output_begin();
  }
  /** @deprecated Use output_end() */
  output_iterator result_end() const {
    return output_end();
  }
  /** @deprecated Use compile_main */
  void compile(const Cfg& cfg) {
    compile_main(cfg);
  }
  /** @deprecated Use compile_function */
  Sandbox& insert_function(const Cfg& cfg) {
    compile_function(cfg);
  }

private:
  /** Should the sandbox report errors for linux abi violations? */
  bool abi_check_;
  /** The maximum number of jumps to take before raising SIGINT. */
  size_t max_jumps_;

  /** Optimization flag, do any of the auxiliary functions write memory? */
  bool aux_fxn_read_only_;
  /** Optimization flag, does the main function write memory? */
  bool main_fxn_read_only_;

  /** I/O pairs. These are pointers to simplify vector reallocations. */
  std::vector<IoPair*> io_pairs_;

  /** Global callback to invoke before any line is executed. */
  std::pair<StateCallback, void*> global_before_;
  /** Global callback to invoke after any line is executed. */
  std::pair<StateCallback, void*> global_after_;
  /** Callbacks to invoke before a line is executed. */
  std::unordered_map<size_t, std::vector<std::pair<StateCallback, void*>>> before_;
  /** Callbacks to invokes after a line is exeucted. */
  std::unordered_map<size_t, std::vector<std::pair<StateCallback, void*>>> after_;

  /** Assembler, no sense in always creating these. */
  x64asm::Assembler assm_;
  /** Linker, no sense in always creating these either. */
  x64asm::Linker lnkr_;

  /** Reusable labels... if left unchecked, endless sandboxing will deplete memory */
  std::vector<x64asm::Label> labels_;
  /** The label that was available the last time start_reusing_labels() was called */
  size_t label_checkpoint_;
  /** The next label to pull out of the pool. */
  size_t next_label_;

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
  /** Functions that the code may invoke at runtime. Pointers to simplify reallocation. */
  std::vector<x64asm::Function*> aux_fxns_;
  /** Auxiliary function source (saved in case recompilation is necessary). */
  std::vector<Cfg> aux_fxns_src_;
  /** Function buffer for jit assembling codes; the main function */
  x64asm::Function fxn_;
  /** Main function source (saved in case recompilation is necessary). */
  Cfg fxn_src_;

  /** Recompiles just the main function */
  void recompile_main();
  /** Recompiles main and auxiliary functions from saved source */
  void recompile_all();

  /** Returns a register that doesn't appear in an instruction or the scratch space. */
  size_t get_unused_reg(const x64asm::Instruction& instr) const;
  /** Returns an unused word register. */
  const x64asm::R16& get_unused_word(const x64asm::Instruction& instr) const {
    return x64asm::r16s[get_unused_reg(instr)];
  }
  /** Returns an unused quad register. */
  const x64asm::R64& get_unused_quad(const x64asm::Instruction& instr) const {
    return x64asm::r64s[get_unused_reg(instr)];
  }

  /** Initialize the reusable label pool */
  void init_labels() {
    labels_.resize(16);
    label_checkpoint_ = 0;
    next_label_ = 0;
  }
  /** Take a label from the pool. */
  const x64asm::Label& get_label() {
    if (next_label_ == labels_.size()) {
      labels_.resize(labels_.size()*2);
    }
    return labels_[next_label_++];
  }

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
  void emit_map_addr_cases(CpuState& cs, const x64asm::Label& fail, const x64asm::Label& done,
                           bool stack);

  /** Check whether a function is read only wrt memory */
  bool is_mem_read_only(const Cfg& cfg) const;
  /** Assembles the user's function */
  void emit_function(const Cfg& cfg, bool is_main);
  /** Emit a single callback for this line. */
  void emit_callback(const std::pair<StateCallback, void*>& cb, size_t line);
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

  /** Special case for emitting bt instructions that read from memory. */
  void emit_mem_bt(const x64asm::Instruction& instr);
  /** Special case for emitting div instructions that read from memory. */
  void emit_mem_div(const x64asm::Instruction& instr);
  /** Special case for emitting pop to memory. */
  void emit_mem_pop(const x64asm::Instruction& instr);
  /** Special case for emitting push from memory. */
  void emit_mem_push(const x64asm::Instruction& instr);
  /** Special case for emitting pop. */
  void emit_pop(const x64asm::Instruction& instr);
  /** Special case for emitting popf. */
  void emit_popf(const x64asm::Instruction& instr);
  /** Special case for emitting push. */
  void emit_push(const x64asm::Instruction& instr);
  /** Special case for emitting pushf. */
  void emit_pushf(const x64asm::Instruction& instr);
  /** Special case for emitting div instructions that read from registers. */
  void emit_reg_div(const x64asm::Instruction& instr);

  /** Emits a bail-out call to the signal trap */
  void emit_signal_trap_call(ErrorCode ec);
  /** Emit code that swaps stoke_rsp_ out of and user_rsp_ into %rsp */
  void emit_load_user_rsp();
  /** Emit code that swaps user_rsp_ out of and stoke_rsp_ into %rsp */
  void emit_load_stoke_rsp();
};

} // namespace stoke

#endif
