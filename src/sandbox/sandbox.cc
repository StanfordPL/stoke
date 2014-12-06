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

#include "src/sandbox/sandbox.h"

#include <cassert>
#include <set>
#include <setjmp.h>
#include <signal.h>

using namespace std;
using namespace stoke;
using namespace x64asm;

namespace {

set<Opcode> unsupported_ {{
#include "src/sandbox/tables/unsupported.h"
  }
};

sigjmp_buf buf_;
void sigfpe_handler(int signum, siginfo_t* si, void* data) {
  siglongjmp(buf_, 1);
}

void callback_wrapper(StateCallback cb, size_t line, CpuState* current, void* arg) {
  cb({line, *current}, arg);
}

} // namespace

namespace stoke {

bool Sandbox::is_supported(Opcode o) {
  return unsupported_.find(o) == unsupported_.end();
}

Sandbox::Sandbox() : fxn_(32 * 1024) {
  fxn_.reserve(32 * 1024);
  clear_inputs();
  clear_functions();
  clear_callbacks();
  set_abi_check(true);
  set_max_jumps(16);

  harness_ = emit_harness();
  signal_trap_ = emit_signal_trap();

  static bool once = false;
  if (!once) {
    once = true;

    struct sigaction sa;
    sa.sa_sigaction = sigfpe_handler;
    sigemptyset(&sa.sa_mask);
    sa.sa_flags = SA_RESTART | SA_ONSTACK | SA_SIGINFO | SA_NODEFER;

    const auto res = sigaction(SIGFPE, &sa, 0);
    (void) res;
    assert(res != -1 && "Unable to install sigfpe handler!");
  }
}

Sandbox& Sandbox::insert_input(const CpuState& input) {
  io_pairs_.push_back(new IoPair());
  auto io = io_pairs_.back();

  // Use this input as both input AND output
  io->in_ = input;
  io->out_ = input;

  // Assemble helper functions for this io pair.
  io->in2cpu_ = emit_state2cpu(io->in_);
  io->out2cpu_ = emit_state2cpu(io->out_);
  io->cpu2out_ = emit_cpu2state(io->out_);
  io->map_addr_ = emit_map_addr(io->out_);

  return *this;
}

void Sandbox::compile(const Cfg& cfg) {
  // Compile a new main function
  main_fxn_read_only_ = emit_function(cfg, true);

  // Relink everything
  lnkr_.start();
  lnkr_.link(fxn_);
  for (auto f : aux_fxns_) {
    lnkr_.link(*f);
  }
  lnkr_.finish();
}

void Sandbox::run_all() {
  for (size_t i = 0, ie = size(); i < ie; ++i) {
    run_one(i);
  }
}

void Sandbox::run_one(size_t index) {
  assert(index < size());
  auto io = io_pairs_[index];

  // Optimization: In read only mem mode, we don't need to reset output memory
  if (!aux_fxn_read_only_ || !main_fxn_read_only_) {
    io->out_.stack.copy_defined(io->in_.stack);
    io->out_.heap.copy_defined(io->in_.heap);
  }

  // Reset error-related variables
  jumps_remaining_ = max_jumps_;

  // Initialize state that the instrumented function relies on
  out_ = &io->out_;
  in2cpu_ = io->in2cpu_.get_entrypoint();
  out2cpu_ = io->out2cpu_.get_entrypoint();
  cpu2out_ = io->cpu2out_.get_entrypoint();
  map_addr_ = io->map_addr_.get_entrypoint();

  // Initialize state related to %rsp tracking
  user_rsp_ = io->in_.gp[rsp].get_fixed_quad(0);
  harness_rsp_ = 0;
  stoke_rsp_ = 0;

  // Run the code (control exits abnormally for sigfpe or if linking failed)
  if (!lnkr_.good()) {
    io->out_.code = ErrorCode::SIGBUS_;
  } else if (!sigsetjmp(buf_, 1)) {
    io->out_.code = harness_.call<ErrorCode>();
  } else {
    io->out_.code = ErrorCode::SIGFPE_;
  }

  // Check for abi violations
  if (abi_check_ && !check_abi(*io)) {
    io->out_.code = ErrorCode::SIGSEGV_;
  }
}

bool Sandbox::check_abi(const IoPair& iop) const {
  for (const auto& r : {
  rbx, rbp, rsp, r12, r13, r14, r15
}) {
    if (iop.in_.gp[r].get_fixed_quad(0) != iop.out_.gp[r].get_fixed_quad(0)) {
      return false;
    }
  }
  return true;
}

// Main entrypoint for sandboxed code.
//
// Calling Context:
//   - run_one()
// Assumptions:
//   - This function is called in an x86 abi-consistent state
//   - The class variable user_rsp_ holds the value of the user's %rsp
//   - The class variable in2cpu_ holds a function pointer for writing state
//   - The class variable cpu2out_ holds a function pointer for reading state
// Requirements:
//   - MUST leave callee-save registers unmodified
//   - MUST leave class variables listed above unmodified
// Arguments:
//   - <none>
// Returns:
//   - Error code associated with execution

Function Sandbox::emit_harness() {
  Function fxn;
  assm_.start(fxn);

  // Almost immediately, all bets will be off.
  // Backup ALL callee-saved registers right away
  assm_.push(rbx);
  assm_.push(rbp);
  assm_.push(r12);
  assm_.push(r13);
  assm_.push(r14);
  assm_.push(r15);

  // Save the %rsp for this stack frame
  // If control ever traps an exception, we'll restore the %rsp here
  // and jump back out of this function
  assm_.mov(rax, rsp);
  assm_.mov(Moffs64(&harness_rsp_), rax);

  // Call the function that loads the user's CPU state
  // This DOES NOT include the user's %rsp (if it did we would crash on return)
  assm_.mov(rax, Moffs64(&in2cpu_));
  assm_.call(rax);

  // Load the user's function onto the stack and invoke it
  // At this point %rsp is all we have to work with
  // The rest of the user's state must be restored prior to the call
  assm_.push(rax);
  assm_.mov((R64)rax, Imm64(fxn_.get_entrypoint()));
  assm_.xchg(rax, M64(rsp));
  assm_.call(M64(rsp));
  assm_.lea(rsp, M64(rsp, Imm32(8)));

  // Now load the function that reads user state and invoke it
  // The same restrictions apply here; we can't disturb the user's state
  assm_.push(rax);
  assm_.mov(rax, Moffs64(&cpu2out_));
  assm_.xchg(rax, M64(rsp));
  assm_.call(M64(rsp));
  assm_.lea(rsp, M64(rsp, Imm32(8)));

  // Restore callee-save state
  assm_.pop(r15);
  assm_.pop(r14);
  assm_.pop(r13);
  assm_.pop(r12);
  assm_.pop(rbp);
  assm_.pop(rbx);

  // If control has made it back here, we've exited normally; return 0
  assm_.mov(rax, Imm32(0));
  assm_.ret();

  assm_.finish();
  return fxn;
}

// Emits a function that sets the value of the error code and jumps control
// back into stoke code
//
// Calling Context:
//   - Potentially anywhere that instrumented code could throw a signal
// Assumptions:
//   - The class variable harness_rsp_ contains the STOKE %rsp associated with the harness_
//   - Called in a state that contains the value of the current STOKE %rsp
// Requirements:
//   - MUST restore %rsp to what it was saved as in the harness_;
//   - MUST restore callee-saved registers by popping the values saved in harness_
//   - MUST then return back to STOKE code
//   - MUST set the return code %rax to %rdi
// Arguments:
//   - %rdi - The error code

Function Sandbox::emit_signal_trap() {
  Function fxn;
  assm_.start(fxn);

  // Restore the stack pointer from the harness_
  assm_.mov(rax, Moffs64(&harness_rsp_));
  assm_.mov(rsp, rax);

  // Pop off the callee-saved register state we left in the harness
  assm_.pop(r15);
  assm_.pop(r14);
  assm_.pop(r13);
  assm_.pop(r12);
  assm_.pop(rbp);
  assm_.pop(rbx);

  // Return the error code and go back to STOKE
  assm_.mov(rax, rdi);
  assm_.ret();

  assm_.finish();
  return fxn;
}

// Write user state (modulo %rsp) to the cpu.
//
// Calling Context:
//   - harness_(), instrumented functions post callback
// Assumptions:
//   - Called in a context with STOKE's %rsp
// Requirements:
//   - MUST leave %rsp unmodified
// Arguments:
//   - <none>

Function Sandbox::emit_state2cpu(const CpuState& cs) {
  Function fxn;
  assm_.start(fxn);

  // Write RFLAGS regs
  assm_.mov(rax, Moffs64(cs.rf.data()));
  assm_.push(rax);
  assm_.popfq();
  // Write SSE regs (width is target dependent)
  for (const auto& s : xmms) {
    assm_.mov((R64)rax, Imm64(cs.sse[s].data()));
#ifdef __AVX__
    assm_.vmovdqu(ymms[s], M256(rax));
#else
    assm_.movdqu(xmms[s], M128(rax));
#endif
  }
  // Write GP regs
  for (const auto& r : r64s) {
    if (r != rsp) {
      assm_.mov(r, Imm64(cs.gp[r].data()));
      assm_.mov(r, M64(r));
    }
  }
  // Done
  assm_.ret();

  assm_.finish();
  return fxn;
}

// Reads user state (modulo %rsp) from the cpu. Reads user %rsp
// rsp from the class variable user_rsp_.
//
// Calling Context:
//   - harness_(), instrumented functions prior to callback
// Assumptions:
//   - Called in a context with STOKE's %rsp
//   - user_rsp_ contains the current value of the user's %rsp
// Requirements:
//   - MUST leave machine state unmodified
// Arguments:
//   - <none>

Function Sandbox::emit_cpu2state(CpuState& cs) {
  Function fxn;
  assm_.start(fxn);

  // Backup scratch registers no matter what
  assm_.push(rax);

  // Read non-rsp GP regs
  for (const auto& r : r64s) {
    if (r != rsp) {
      assm_.mov(rax, r);
      assm_.mov(Moffs64(cs.gp[r].data()), rax);
    }
  }
  // Read user's %rsp
  assm_.mov(rax, Moffs64(&user_rsp_));
  assm_.mov(Moffs64(cs.gp[rsp].data()), rax);
  // Read SSE regs (width is target dependent)
  for (const auto& s : xmms) {
    assm_.mov((R64)rax, Imm64(cs.sse[s].data()));
#ifdef __AVX__
    assm_.vmovdqu(M256(rax), ymms[s]);
#else
    assm_.movdqu(M128(rax), xmms[s]);
#endif
  }
  // Read RFLAGS regs
  assm_.pushfq();
  assm_.mov((R64)rax, M64(rsp));
  assm_.mov(Moffs64(cs.rf.data()), rax);
  assm_.popfq();

  // Restore scratch regs
  assm_.pop(rax);

  // Done
  assm_.ret();

  assm_.finish();
  return fxn;
}

// Maps a virtual address to a physical address in the user's memory sandbox
//
// Calling Context:
//   - emit_memory_instruction()
// Assumptions:
//   - Called in a context with STOKE's %rsp
// Requirements:
//   - MUST not modify registers aside from %rax, %rcx, %rdx, %rdi, %rsi
//   - MUST invoke the signal_trap handler if unable to map
// Arguments:
//   - %rdi = virtual address
//   - %rsi = alignment mask to check against
//   - %rdx = byte read mask
//   - %rcx = byte write mask
// Return Vale:
//   - %rax = physical address
Function Sandbox::emit_map_addr(CpuState& cs) {
  Function fxn;
  assm_.start(fxn);

  // Define labels
  Label fail;
  Label done;
  Label heap_case;

  // Check alignment: A well aligned address won't change
  // Following this check, rsi is free for use as scratch space
  assm_.and_(rsi, rdi);
  assm_.cmp(rsi, rdi);
  assm_.jne(fail);

  // Check whether this address is stack or heap
  assm_.mov((R64)rax, Imm64(cs.stack.lower_bound()));
  assm_.cmp(rdi, rax);
  assm_.jl(heap_case);

  // Stack case: Check that this address is inside the stack
  assm_.sub(rdi, rax);
  assm_.mov((R64)rax, Imm64(cs.stack.size()));
  assm_.cmp(rdi, rax);
  assm_.jge(fail);
  // This address is at least in range, move on to harder checks:
  emit_map_addr_cases(cs, fail, done, true);

  // Heap case: Check that the address is inside the heap
  assm_.bind(heap_case);
  assm_.mov((R64)rax, Imm64(cs.heap.lower_bound()));
  assm_.cmp(rdi, rax);
  assm_.jl(fail);
  assm_.sub(rdi, rax);
  assm_.mov((R64)rax, Imm64(cs.heap.size()));
  assm_.cmp(rdi, rax);
  assm_.jge(fail);
  // This address is at least in range, move on to harder checks:
  emit_map_addr_cases(cs, fail, done, false);

  // If control reaches here, invoke the signal_trap handler for sigsegv
  assm_.bind(fail);
  emit_signal_trap_call(ErrorCode::SIGSEGV_);

  // Done; get out of here
  assm_.bind(done);
  assm_.ret();

  assm_.finish();
  return fxn;
}

void Sandbox::emit_map_addr_cases(CpuState& cs, const Label& fail, const Label& done, bool stack) {
  // Save rcx (we need to use it for the shift instruction below)
  assm_.mov(rax, rcx);
  // We have a valid address, divide by to find the corresponding address in the mask arrays
  assm_.mov(rsi, rdi);
  assm_.shr(rsi, Imm8(3));
  // Now shift the byte masks based on offsets in those arrays
  assm_.mov(ecx, Imm32(0x07));
  assm_.and_(rcx, rdi);
  assm_.shl(rdx, cl);
  assm_.shl(rax, cl);
  // Restore rcx
  assm_.mov(rcx, rax);

  // The read mask shouldn't change when and'ed against the def mask
  if (stack) {
    assm_.mov((R64)rax, Imm64(cs.stack.defined_mask()));
  } else {
    assm_.mov((R64)rax, Imm64(cs.heap.defined_mask()));
  }
  assm_.mov(rax, M64(rax, rsi, Scale::TIMES_1));
  assm_.and_(rax, rdx);
  assm_.cmp(rax, rdx);
  assm_.jne(fail);

  // The write mask shouldn't change when and'ed against the valid mask
  if (stack) {
    assm_.mov((R64)rax, Imm64(cs.stack.valid_mask()));
  } else {
    assm_.mov((R64)rax, Imm64(cs.heap.valid_mask()));
  }
  assm_.mov(rax, M64(rax, rsi, Scale::TIMES_1));
  assm_.and_(rax, rcx);
  assm_.cmp(rax, rcx);
  assm_.jne(fail);

  // Set new defined bits
  if (stack) {
    assm_.mov((R64)rax, Imm64(cs.stack.defined_mask()));
  } else {
    assm_.mov((R64)rax, Imm64(cs.heap.defined_mask()));
  }
  assm_.or_(M64(rax, rsi, Scale::TIMES_1), rcx);

  // Do final remapping
  if (stack) {
    assm_.mov((R64)rax, Imm64(cs.stack.data()));
  } else {
    assm_.mov((R64)rax, Imm64(cs.heap.data()));
  }
  assm_.add(rax, rdi);

  // Get out of here
  assm_.jmp(done);
}

// Emits an instrumented version of a user's function into a persistent
// buffer to reduce memory allocation time
//
// Calling Context:
//   - harness_(), or other instrumented functions (including this one!)
// Assumptions:
//   - Called in a state that consists of user data (modulo %rsp)
//   - %rsp contain's STOKE's stack pointer
//   - The class variable user_rsp_ holds the value of the user's %rsp
//   - The class variable signal_trap_ contains a pointer to the signal trap function
// Requirements:
//   - MUST the STOKE %rsp before return
//   - MUST load the user's stack pointer before attempting to execute instructions
// Arguments:
//   <none>

bool Sandbox::emit_function(const Cfg& cfg, bool callbacks) {
  // Index reachable instructions
  vector<size_t> instrs;
  for (auto b = ++cfg.reachable_begin(), be = cfg.reachable_end(); b != be; ++b) {
    if (cfg.is_exit(*b)) {
      continue;
    }
    const auto begin = cfg.get_index(Cfg::loc_type(*b, 0));
    for (size_t i = begin, ie = begin + cfg.num_instrs(*b); i < ie; ++i) {
      instrs.push_back(i);
    }
  }

  // Flags to track: do we read memory and is the first instr a label?
  auto read_only_mem = true;
  const auto first_is_label = cfg.get_code()[instrs[0]].is_label_defn();

  assm_.start(fxn_);

  // If the first instruction is a label, it must precede instrumentation
  if (first_is_label) {
    assm_.assemble(cfg.get_code()[instrs[0]]);
  }

  // Load the user's %rsp
  emit_load_user_rsp();

  // Create a new unique label for representing the end of this function
  Label exit;

  // Assemble every other reachable instruction
  for (size_t i = first_is_label ? 1 : 0, ie = instrs.size(); i < ie; ++i) {
    const auto idx = instrs[i];
    const auto& instr = cfg.get_code()[idx];

    // This is conservative, we assume anything implicit is a write
    if (instr.is_implicit_memory_dereference()) {
      read_only_mem = false;
    } else if (instr.is_explicit_memory_dereference()) {
      const auto mi = instr.mem_index();
      read_only_mem &= (!instr.maybe_write(mi) && !instr.maybe_undef(mi));
    }

    // Emit instruction and optionally, callbacks
    if (callbacks && !before_.empty()) {
      emit_callbacks(idx, true);
    }
    emit_instruction(instr, exit);
    if (callbacks && !after_.empty())  {
      emit_callbacks(idx, false);
    }
  }
  // Catch for run-away code
  emit_signal_trap_call(ErrorCode::SIGSEGV_);

  // All returns in this function point to here
  assm_.bind(exit);

  // Restore the STOKE %rsp and return
  emit_load_stoke_rsp();
  assm_.ret();
  assm_.finish();

  return read_only_mem;
}

void Sandbox::emit_callbacks(size_t line, bool before) {
  // Reload the STOKE %rsp, we're about to call some functions
  emit_load_stoke_rsp();

  const auto& cbs = before ? before_[line] : after_[line];
  for (const auto& cb : cbs) {
    // Read the user's state without disturbing any state in the process
    assm_.push(rax);
    assm_.mov(rax, Moffs64(&cpu2out_));
    assm_.xchg(rax, M64(rsp));
    assm_.call(M64(rsp));
    assm_.lea(rsp, M64(rsp, Imm32(8)));

    // Invoke the callback through the callback wrapper
    assm_.mov(rdi, Imm64(cb.first));
    assm_.mov(rsi, Imm64(line));
    assm_.mov(rax, Moffs64(&out_));
    assm_.mov(rdx, rax);
    assm_.mov(rcx, Imm64(cb.second));
    assm_.mov((R64)rax, Imm64(&callback_wrapper));
    assm_.call(rax);

    // Restore the user's state
    // This leaves STOKE's %rsp in place, but that's what we want
    assm_.mov(rax, Moffs64(&out2cpu_));
    assm_.call(rax);
  }

  // Back to userland, reload the user %rsp
  emit_load_user_rsp();
}

void Sandbox::emit_instruction(const Instruction& instr, const Label& exit) {
  // First things first. If it's unsupported, give up.
  if (!is_supported(instr)) {
    emit_signal_trap_call(ErrorCode::SIGILL_);
  }
  // Labels are translated directly
  else if (instr.is_label_defn()) {
    assm_.assemble(instr);
  }
  // Jumps are instrumented with premature exit logic
  else if (instr.is_any_jump()) {
    emit_jump(instr);
  }
  // Limited support for calls, label arguments are allowed
  else if (instr.get_opcode() == CALL_LABEL) {
    emit_call(instr);
  }
  // Returns are turned into jumps to the function-wide common return
  else if (instr.get_opcode() == RET) {
    emit_ret(instr, exit);
  }
  // Explicit memory dereferences need some pretty serious sandboxing
  else if (instr.is_explicit_memory_dereference()) {
    if (instr.is_div() || instr.is_idiv()) {
      emit_mem_div(instr);
    } else if (instr.is_push()) {
      emit_mem_push(instr);
    } else if (instr.is_pop()) {
      emit_mem_pop(instr);
    } else {
      emit_memory_instruction(instr);
    }
  }
  // Implicits are even harder (we most likely bail out here as well)
  else if (instr.is_implicit_memory_dereference()) {
    if (instr.is_push()) {
      emit_push(instr);
    } else if (instr.is_pop()) {
      emit_pop(instr);
    } else {
      emit_signal_trap_call(ErrorCode::SIGILL_);
    }
  }
  // For everything else there are a few cases but mostly we hope for the best
  else {
    if (instr.is_div() || instr.is_idiv()) {
      emit_reg_div(instr);
    } else if (instr.get_opcode() == UD2) {
      emit_signal_trap_call(ErrorCode::SIGILL_);
    } else {
      assm_.assemble(instr);
    }
  }
}

void Sandbox::emit_memory_instruction(const Instruction& instr) {
  // Grab the memory operand (no sense copying if we can promise to be const)
  const auto mi = instr.mem_index();
  auto* temp = const_cast<Instruction*>(&instr);
  const auto old_op = temp->get_operand<M64>(mi);

  // We'll be doing some function calls, and need some scratch, so load STOKE's rsp
  emit_load_stoke_rsp();
  // Backup some scratch values and the rflags register
  assm_.push(rax);
  assm_.push(rcx);
  assm_.push(rdx);
  assm_.push(rdi);
  assm_.push(rsi);
  assm_.pushfq();

  // Does this address use rsp?
  const auto rsp_base = old_op.contains_base() && (old_op.get_base() == rsp);
  const auto rsp_index = old_op.contains_index() && (old_op.get_index() == rsp);
  const auto uses_rsp = rsp_base || rsp_index;

  // Load the effective address into rdi
  if (uses_rsp) {
    assm_.mov(rsp, Imm64(&user_rsp_));
    assm_.mov(rsp, M64(rsp));
  }
  assm_.lea(rdi, old_op);
  if (uses_rsp) {
    // STOKE's rsp has changed... careful here, mind the push's
    assm_.mov(rsp, Imm64(&stoke_rsp_));
    assm_.mov(rsp, M64(rsp));
    assm_.lea(rsp, M64(rsp, Imm32(-48)));
  }

  // Load the alignment mask into rsi, and the read/write mask into rdx/rcx
  switch (instr.type(mi)) {
  case Type::M_256:
    assm_.mov(rsi, Imm64(0xffffffffffffffe0));
    assm_.mov(rdx, Imm64(0x00000000ffffffff));
    break;
  case Type::M_128:
    assm_.mov(rsi, Imm64(0xfffffffffffffff0));
    assm_.mov(rdx, Imm64(0x000000000000ffff));
    break;
  case Type::M_64:
    assm_.mov(rsi, Imm64(0xffffffffffffffff));
    assm_.mov(rdx, Imm64(0x00000000000000ff));
    break;
  case Type::M_32:
    assm_.mov(rsi, Imm64(0xffffffffffffffff));
    assm_.mov(rdx, Imm64(0x000000000000000f));
    break;
  case Type::M_16:
    assm_.mov(rsi, Imm64(0xffffffffffffffff));
    assm_.mov(rdx, Imm64(0x0000000000000003));
    break;
  case Type::M_8:
    assm_.mov(rsi, Imm64(0xffffffffffffffff));
    assm_.mov(rdx, Imm64(0x0000000000000001));
    break;
  default:
    assert(false);
    break;
  }
  // Some special instructions get a bye for alignment
  if (instr.is_unaligned()) {
    assm_.mov(rsi, Imm64(0xffffffffffffffff));
  }
  // Finish up setting the read/write masks
  if (instr.maybe_write(mi)) {
    assm_.mov(rcx, rdx);
  } else {
    assm_.mov(rcx, Imm64(0));
  }
  if (!instr.maybe_read(mi)) {
    assm_.mov(rdx, Imm64(0));
  }

  // Invoke the mapping function, this will place a result in rax on return
  // SIGSEGV is trapped inside this function, no need to worry about it beyond here
  assm_.mov(rax, Moffs64(&map_addr_));
  assm_.call(rax);

  // Find an unused register to hold the sandboxed address
  const auto rx = get_unused_quad(instr);
  // Backup rx and store the value there
  assm_.mov(rdi, Imm64(&scratch_[rx]));
  assm_.mov(M64(rdi), rx);
  assm_.mov(rx, rax);

  // Restore the scratch space
  assm_.popfq();
  assm_.pop(rsi);
  assm_.pop(rdi);
  assm_.pop(rdx);
  assm_.pop(rcx);
  assm_.pop(rax);
  // Along with the user's rsp
  emit_load_user_rsp();

  // Assemble the instruction using the temp operand instead
  temp->set_operand(mi, M8(rx));
  assm_.assemble(*temp);
  temp->set_operand(mi, old_op);

  // Restore rx
  assm_.mov(rx, Imm64(&scratch_[rx]));
  assm_.mov(rx, M64(rx));
}

void Sandbox::emit_jump(const Instruction& instr) {
  // Load the STOKE %rsp, we'll need to do some pushing here
  emit_load_stoke_rsp();

  // Backup rax and rflags
  assm_.push(rax);
  assm_.pushfq();

  // Decrement the jump counter
  assm_.mov((R64)rax, Imm64(&jumps_remaining_));
  assm_.dec(M64(rax));

  // Jump over the signal trap call if we haven't hit zero yet
  Label okay;
  assm_.jne(okay);
  emit_signal_trap_call(ErrorCode::SIGKILL_);
  assm_.bind(okay);

  // Restore rflags and rax
  assm_.popfq();
  assm_.pop(rax);

  // Go ahead and do the jump
  assm_.assemble(instr);

  // Reload the user's %rsp
  emit_load_user_rsp();
}

void Sandbox::emit_call(const Instruction& instr) {
  // Simulate push %rip (using a random value)
  // Sandboxing the memory dereference will catch infinite recursions
  assm_.lea(rsp, M64(rsp, Imm32(-8)));
  emit_memory_instruction({MOV_M64_IMM32, {M64(rsp), Imm32(0x01234567)}});

  // Restore the STOKE %rsp
  emit_load_stoke_rsp();
  // Invoke the call
  assm_.assemble(instr);
  // Load the user's %rsp
  emit_load_user_rsp();

  // Simulate pop %rip; all that matters is moving %rsp
  assm_.lea(rsp, M64(rsp, Imm32(8)));
}

void Sandbox::emit_ret(const Instruction& instr, const Label& exit) {
  assm_.jmp(exit);
}

void Sandbox::emit_mem_div(const Instruction& instr) {
  // Backup rbx
  assm_.mov(Moffs64(&scratch_[rax]), rax);
  assm_.mov(rax, rbx);
  assm_.mov(Moffs64(&scratch_[rbx]), rax);
  assm_.mov(rax, Moffs64(&scratch_[rax]));

  // Move the mem operand into its place (this will catch a sigsegv)
  // Perform the register div on rbx (this will catch a sigfpe)
  switch (instr.get_opcode()) {
  case DIV_M8:
    emit_memory_instruction({MOV_RL_M8, {bl, instr.get_operand<M8>(0)}});
    emit_reg_div({DIV_RL, {bl}});
    break;
  case DIV_M16:
    emit_memory_instruction({MOV_R16_M16, {bx, instr.get_operand<M16>(0)}});
    emit_reg_div({DIV_R16, {bx}});
    break;
  case DIV_M32:
    emit_memory_instruction({MOV_R32_M32, {ebx, instr.get_operand<M32>(0)}});
    emit_reg_div({DIV_R32, {ebx}});
    break;
  case DIV_M64:
    emit_memory_instruction({MOV_R64_M64, {rbx, instr.get_operand<M64>(0)}});
    emit_reg_div({DIV_R64, {rbx}});
    break;
  case IDIV_M8:
    emit_memory_instruction({MOV_RL_M8, {bl, instr.get_operand<M8>(0)}});
    emit_reg_div({IDIV_RL, {bl}});
    break;
  case IDIV_M16:
    emit_memory_instruction({MOV_R16_M16, {bx, instr.get_operand<M16>(0)}});
    emit_reg_div({IDIV_R16, {bx}});
    break;
  case IDIV_M32:
    emit_memory_instruction({MOV_R32_M32, {ebx, instr.get_operand<M32>(0)}});
    emit_reg_div({IDIV_R32, {ebx}});
    break;
  case IDIV_M64:
    emit_memory_instruction({MOV_R64_M64, {rbx, instr.get_operand<M64>(0)}});
    emit_reg_div({IDIV_R64, {rbx}});
    break;

  default:
    assert(false);
    break;
  }

  // Restore rbx
  assm_.mov(Moffs64(&scratch_[rax]), rax);
  assm_.mov(rax, Moffs64(&scratch_[rbx]));
  assm_.mov(rbx, rax);
  assm_.mov(rax, Moffs64(&scratch_[rax]));
}

void Sandbox::emit_mem_pop(const Instruction& instr) {
  switch (instr.get_opcode()) {
  case POP_M16: {
    const auto rx = get_unused_word(instr);
    emit_memory_instruction({XCHG_R16_M16, {rx, M16(rsp)}});
    emit_memory_instruction({MOV_M16_R16, {instr.get_operand<M16>(0), rx}});
    emit_memory_instruction({XCHG_R16_M16, {rx, M64(rsp)}});
    assm_.lea(rsp, M64(rsp, Imm32(2)));
    break;
  }
  case POP_M64: {
    const auto rx = get_unused_quad(instr);
    emit_memory_instruction({XCHG_R64_M64, {rx, M64(rsp)}});
    emit_memory_instruction({MOV_M64_R64, {instr.get_operand<M64>(0), rx}});
    emit_memory_instruction({XCHG_R64_M64, {rx, M64(rsp)}});
    assm_.lea(rsp, M64(rsp, Imm32(8)));
    break;
  }

  default:
    assert(false);
  }
}

void Sandbox::emit_mem_push(const Instruction& instr) {
  switch (instr.get_opcode()) {
  case PUSH_M16: {
    const auto rx = get_unused_word(instr);
    emit_memory_instruction({XCHG_R16_M16, {rx, M16(rsp, Imm32(-2))}});
    emit_memory_instruction({MOV_R16_M16, {rx, instr.get_operand<M16>(0)}});
    emit_memory_instruction({XCHG_R16_M16, {rx, M64(rsp, Imm32(-2))}});
    assm_.lea(rsp, M64(rsp, Imm32(-2)));
    break;
  }
  case PUSH_M64: {
    const auto rx = get_unused_quad(instr);
    emit_memory_instruction({XCHG_R64_M64, {rx, M64(rsp, Imm32(-8))}});
    emit_memory_instruction({MOV_R64_M64, {rx, instr.get_operand<M64>(0)}});
    emit_memory_instruction({XCHG_R64_M64, {rx, M64(rsp, Imm32(-8))}});
    assm_.lea(rsp, M64(rsp, Imm32(-8)));
    break;
  }

  default:
    assert(false);
    break;
  }
}

void Sandbox::emit_pop(const Instruction& instr) {
  switch (instr.get_opcode()) {
  case POP_R16:
    assm_.lea(rsp, M64(rsp, Imm32(2)));
    emit_memory_instruction({MOV_R16_M16, {instr.get_operand<R16>(0), M16(rsp, Imm32(-2))}});
    break;
  case POP_R64:
    assm_.lea(rsp, M64(rsp, Imm32(8)));
    emit_memory_instruction({MOV_R64_M64, {instr.get_operand<R64>(0), M64(rsp, Imm32(-8))}});
    break;

  default:
    assert(false);
  }
}

void Sandbox::emit_push(const Instruction& instr) {
  switch (instr.get_opcode()) {
  case PUSH_IMM16:
    emit_memory_instruction({MOV_M16_IMM16, {M16(rsp, Imm32(-2)), instr.get_operand<Imm16>(0)}});
    assm_.lea(rsp, M64(rsp, Imm32(-2)));
    break;
  case PUSH_IMM32:
    emit_memory_instruction({MOV_M32_IMM32, {M32(rsp, Imm32(-4)), instr.get_operand<Imm32>(0)}});
    assm_.lea(rsp, M64(rsp, Imm32(-4)));
    break;
  case PUSH_IMM8:
    emit_memory_instruction({MOV_M8_IMM8, {M8(rsp, Imm32(-1)), instr.get_operand<Imm8>(0)}});
    assm_.lea(rsp, M64(rsp, Imm32(-1)));
    break;
  case PUSH_R16:
    emit_memory_instruction({MOV_M16_R16, {M16(rsp, Imm32(-2)), instr.get_operand<R16>(0)}});
    assm_.lea(rsp, M64(rsp, Imm32(-2)));
    break;
  case PUSH_R64:
    emit_memory_instruction({MOV_M64_R64, {M64(rsp, Imm32(-8)), instr.get_operand<R64>(0)}});
    assm_.lea(rsp, M64(rsp, Imm32(-8)));
    break;

  default:
    assert(false);
    break;
  }
}

void Sandbox::emit_reg_div(const Instruction& instr) {
  // First check whether this instruction is trying to read from some part of rsp
  auto rsp_op = false;
  switch (instr.type(0)) {
  case Type::RL:
  case Type::RH:
  case Type::RB:
  case Type::R_16:
  case Type::R_32:
  case Type::R_64:
    rsp_op = instr.get_operand<R64>(0) == rsp;
    break;
  default:
    break;
  }

  // Depending on how things go, we might throw sigsegv, so we need the STOKE rsp back
  emit_load_stoke_rsp();
  if (rsp_op) {
    // If the user's rsp is the operand, we'll need to move it someplace where we can use it
    // div implicitly reads/writes rax, so we'll need to use rdi instead.
    assm_.push(rdi);
    assm_.mov(rdi, Imm64(&user_rsp_));
    assm_.mov(rdi, M64(rdi));
    // Emit the instruction (with rdi substituted for rsp)
    assm_.assemble({instr.get_opcode(), {rdi}});
    // Restore rdi.
    assm_.pop(rdi);
  } else {
    // This is the easy case... just go for it, man
    assm_.assemble(instr);
  }
  // Now that we're safely finished, reload the user's rsp
  emit_load_user_rsp();
}

void Sandbox::emit_signal_trap_call(ErrorCode ec) {
  // Reload the stoke stack pointer
  assm_.mov(rax, Moffs64(&stoke_rsp_));
  assm_.mov(rsp, rax);
  // Load up the error code argument
  assm_.mov(rdi, Imm32((uint32_t)ec));
  // Invoke the handler
  assm_.mov((R64)rax, Imm64(signal_trap_.get_entrypoint()));
  assm_.call(rax);
}

void Sandbox::emit_load_user_rsp() {
  // Save the stoke %rsp
  assm_.mov(Moffs64(&scratch_[rax]), rax);
  assm_.mov(rax, rsp);
  assm_.mov(Moffs64(&stoke_rsp_), rax);
  // Load the user %rsp
  assm_.mov(rax, Moffs64(&user_rsp_));
  assm_.mov(rsp, rax);
  assm_.mov(rax, Moffs64(&scratch_[rax]));
}

void Sandbox::emit_load_stoke_rsp() {
  // Save the user %rsp
  assm_.mov(Moffs64(&scratch_[rax]), rax);
  assm_.mov(rax, rsp);
  assm_.mov(Moffs64(&user_rsp_), rax);
  // Load the stoke %rsp
  assm_.mov(rax, Moffs64(&stoke_rsp_));
  assm_.mov(rsp, rax);
  assm_.mov(rax, Moffs64(&scratch_[rax]));
}

} // namespace stoke
