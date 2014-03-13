#ifndef STOKE_SRC_SANDBOX_SANDBOX_H
#define STOKE_SRC_SANDBOX_SANDBOX_H

#include <array>
#include <unordered_map>
#include <vector>

#include "src/ext/x64asm/include/x64asm.h"

#include "src/cfg/cfg.h"
#include "src/sandbox/stack_snapshot.h"
#include "src/sandbox/state_callback.h"
#include "src/state/cpu_state.h"

namespace stoke {

class Sandbox {
 private:
  /** POD struct for holding state related to input/output state pairs. */
  struct IoPair {
    /** Input state (this never changes). */
    CpuState in_;
    /** Copies input state to cpu. */
    x64asm::Function in2cpu_;

    /** Output state (this is modified as code executes). */
    CpuState out_;
    /** Copies output state to cpu. */
    x64asm::Function out2cpu_;
    /** Reads output state from cpu. */
    x64asm::Function cpu2out_;
    /** Sandboxes memory accesses for this output state. */
    x64asm::Function map_addr_;
  };

 public:
  /** Simple input iterator for exposing output states. */
  class output_iterator {
    friend class Sandbox;

   public:
    const CpuState& operator*() const {
      return (*itr_)->out_;
    }
    const CpuState* operator->() const {
      return &((*itr_)->out_);
    }

    output_iterator& operator++() {
      itr_++;
      return *this;
    }

    bool operator==(const output_iterator& rhs) const {
      return itr_ == rhs.itr_;
    }
    bool operator!=(const output_iterator& rhs) const {
      return itr_ != rhs.itr_;
    }

   private:
    output_iterator(std::vector<IoPair*>::const_iterator itr) {
      itr_ = itr;
    }

    std::vector<IoPair*>::const_iterator itr_;
  };

  /** Creates a sandbox. */
  Sandbox();

  /** Deletes a sandbox. */
  ~Sandbox() {
    clear_inputs();
  }

  /** Sets the maximum number of jumps taken before premature exit. */
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
  output_iterator result(size_t index) const {
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

  /** The maximum number of jumps to take before exiting. */
  size_t max_jumps_;
  /** How many jumps have been taken during this execution. */
  size_t jumps_;
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

  /** Emit an instruction (and possibly sandbox memory). */
  void emit_instruction(const x64asm::Instruction& instr);
	/** Emit a memory instruction. */
	void emit_memory_instr(const x64asm::Instruction& instr);
	/** Special case for emitting push. */
	void emit_push(const x64asm::Instruction& instr);
	/** Special case for emitting pop. */
	void emit_pop(const x64asm::Instruction& instr);
	/** Special case for emitting the div family of instructions. */
	void emit_div(const x64asm::Instruction& instr);

  /** Emits code to save the true callee saved registers. */
  void emit_save_stoke_callee_save();
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
};

} // namespace stoke

#endif
