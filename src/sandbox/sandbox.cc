// Copyright 2013-2015 Stanford University
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

#include "src/sandbox/dispatch_table.h"

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

void callback_wrapper(StateCallback cb, Code* code, size_t line, CpuState* current, void* arg) {
  cb({*code, line, *current}, arg);
}

} // namespace

namespace stoke {

bool Sandbox::is_supported(Opcode o) {

  // check that the type of each operand is ok
  // TODO: this could be boiled down to a table lookup, but I don't
  // think any performance-critical pieces of code depend on this.
  Instruction instr(o);
  for(size_t i = 0; i < instr.arity(); ++i) {
    switch(instr.type(i)) {
    case Type::HINT:
    case Type::IMM_8:
    case Type::IMM_16:
    case Type::IMM_32:
    case Type::IMM_64:
    case Type::ZERO:
    case Type::ONE:
    case Type::THREE:
    case Type::LABEL:
    case Type::M_8:
    case Type::M_16:
    case Type::M_16_INT:
    case Type::M_32:
    case Type::M_32_INT:
    case Type::M_32_FP:
    case Type::M_64:
    case Type::M_64_INT:
    case Type::M_64_FP:
    case Type::M_128:
    case Type::M_256:
    case Type::M_80_BCD:
    case Type::M_80_FP:
    case Type::MM:
    case Type::R_8:
    case Type::RH:
    case Type::AL:
    case Type::CL:
    case Type::R_16:
    case Type::AX:
    case Type::DX:
    case Type::R_32:
    case Type::EAX:
    case Type::R_64:
    case Type::RAX:
    case Type::XMM:
    case Type::XMM_0:
    case Type::YMM:
      continue;
      break;
    default:
      return false;
      break;
    }
  }

  return unsupported_.find(o) == unsupported_.end();
}

Sandbox::Sandbox() {
  set_abi_check(true);
  set_stack_check(true);
  set_max_jumps(16);

  harness_ = emit_harness();
  signal_trap_ = emit_signal_trap();
  reset();

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

  set_label_pool(x64asm::Label("GLOBAL_LABEL_POOL"));

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

Sandbox& Sandbox::clear_inputs() {
  for (auto io : io_pairs_) {
    delete io;
  }
  io_pairs_.clear();
  return *this;
}

Sandbox& Sandbox::insert_function(const Cfg& cfg) {
  // Look up the name of this function
  assert(cfg.get_function().invariant_first_instr_is_label());
  const auto label = cfg.get_function().get_leading_label();

  // If this is the first time we've seen this function, allocate state
  // Otherwise just replace what's there
  if (!contains_function(label)) {
    fxns_[label] = new x64asm::Function(512 * cfg.get_code().size() + 8192);
    fxns_src_[label] = new Cfg(cfg);
    recompile(cfg);
  } else {
    *fxns_src_[label] = cfg;
    recompile(cfg);
  }

  // If this is the only function it becomes main by default
  if (num_functions() == 1) {
    set_entrypoint(label);
  }
  return *this;
}

Sandbox& Sandbox::clear_functions() {
  for (auto fxn : fxns_) {
    delete fxn.second;
  }
  fxns_.clear();

  for (auto fxn : fxns_src_) {
    delete fxn.second;
  }
  fxns_src_.clear();

  fxns_read_only_.clear();
  all_fxns_read_only_ = true;

  return *this;
}

Sandbox& Sandbox::insert_before(StateCallback cb, void* arg) {
  global_before_ = {cb, arg};
  recompile();
  return *this;
}

Sandbox& Sandbox::insert_before(const Label& l, size_t line, StateCallback cb, void* arg) {
  assert(contains_function(l));
  before_[l][line] = {cb, arg};
  recompile(*get_function(l));
  return *this;
}

Sandbox& Sandbox::insert_after(StateCallback cb, void* arg) {
  global_after_ = {cb, arg};
  recompile();
  return *this;
}

Sandbox& Sandbox::insert_after(const Label& l, size_t line, StateCallback cb, void* arg) {
  assert(contains_function(l));
  after_[l][line] = {cb, arg};
  recompile(*get_function(l));
  return *this;
}

Sandbox& Sandbox::clear_callbacks() {
  global_before_ = {nullptr, nullptr};
  before_.clear();
  global_after_ = {nullptr, nullptr};
  after_.clear();
  recompile();
  return *this;
}

Sandbox& Sandbox::run(size_t index) {
  assert(num_functions() > 0);
  assert(index < num_inputs());
  auto io = io_pairs_[index];

  // Don't bother executing testcases that are in error states
  if (io->in_.code != ErrorCode::NORMAL) {
    return *this;
  }

  // Optimization: In read only mem mode, we don't need to reset output memory
  if (!all_fxns_read_only_) {
    io->out_.stack.copy(io->in_.stack);
    io->out_.heap.copy(io->in_.heap);
    io->out_.data.copy(io->in_.data);
    for(size_t i = 0, ie=io->out_.segments.size(); i < ie; ++i) {
      io->out_.segments[i].copy(io->in_.segments[i]);
    }
  }

  // Reset error-related variables
  jumps_remaining_ = max_jumps_;

  // Initialize input-specific state that the instrumented function relies on
  // State that doesn't vary on a per-input basis (ie: entrypoint_) is set elsewhere
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
    io->out_.code = ErrorCode::SIGCUSTOM_LINKER_ERROR;
  } else if (!sigsetjmp(buf_, 1)) {
    io->out_.code = harness_.call<ErrorCode>();
  } else {
    io->out_.code = ErrorCode::SIGFPE_;
  }

  // Finalize output state
  if (abi_check_ && !check_abi(*io)) {
    io->out_.code = ErrorCode::SIGCUSTOM_ABI_VIOLATION;
  }

  return *this;
}

Sandbox& Sandbox::run() {
  for (size_t i = 0, ie = size(); i < ie; ++i) {
    run(i);
  }
  return *this;
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

size_t Sandbox::get_unused_reg(const Instruction& instr) const {
  const auto rs = instr.maybe_read_set();
  const auto ws = instr.maybe_write_set();

  // Find a register in (r8,r15) that doesn't have any of its subregisters in use
  size_t idx = 8;
  for (; idx < 16 && (rs.contains(r8s[idx]) || ws.contains(r8s[idx])); ++idx);

  assert(idx < 16);
  return idx;
}

void Sandbox::recompile(const Cfg& cfg) {
  // Grab the name of this function
  assert(cfg.get_function().invariant_first_instr_is_label());
  const auto& label = cfg.get_function().get_leading_label();

  // Compile the function and record its source
  assert(fxns_[label] != 0);
  emit_function(cfg, fxns_[label]);

  // Update the read only memory tracker
  fxns_read_only_[label] = is_mem_read_only(cfg);
  all_fxns_read_only_ = true;
  for (const auto& r : fxns_read_only_) {
    all_fxns_read_only_ &= r.second;
  }

  // Relink everything
  lnkr_.start();
  for (auto f : fxns_) {
    lnkr_.link(*(f.second));
  }
  lnkr_.finish();
}

void Sandbox::recompile() {
  // This could be marginally faster if we expanded it since there's no reason
  // to iterate over all_fxns_read_only_ every interation, but we do so much
  // else it's probably not worth saving this little bit
  for (const auto& fxn : fxns_src_) {
    recompile(*fxn.second);
  }
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

  // Load the main function onto the stack and invoke it
  // At this point %rsp is all we have to work with
  // The rest of the user's state must be restored prior to the call
  assm_.push(rax);
  assm_.mov(rax, Moffs64(&entrypoint_));
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

  bool ok = assm_.finish();
  assert(ok);
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

  bool ok = assm_.finish();
  assert(ok);
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

  // Write RFLAGS regs --
  // Ordinarily we would use the Rflags API to avoid setting non-status flags.
  // We can skip that check here because this method is only ever called to load
  // the cpu with known good state,
  assm_.mov(rax, Moffs64(cs.rf.data()));
  assm_.push(rax);
  assm_.popfq();
  // Write SSE regs (width is target dependent)
  for (const auto& s : xmms) {
    assm_.mov((R64)rax, Imm64(cs.sse[s].data()));
#ifdef __AVX2__
    assm_.vmovdqu(ymms[s], M256(rax));
#elif __AVX__
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

  bool ok = assm_.finish();
  assert(ok);
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
#ifdef __AVX2__
    assm_.vmovdqu(M256(rax), ymms[s]);
#elif __AVX__
    assm_.vmovdqu(M256(rax), ymms[s]);
#else
    assm_.movdqu(M128(rax), xmms[s]);
#endif
  }
  // Read RFLAGS --
  // Ordinarily we would use the Rflags API to avoid setting non-status flags.
  // We can skip that check here because this method is only ever called to load
  // known good state from the cpu.
  assm_.pushfq();
  assm_.mov((R64)rax, M64(rsp));
  assm_.mov(Moffs64(cs.rf.data()), rax);
  assm_.popfq();

  // Restore scratch regs
  assm_.pop(rax);

  // Done
  assm_.ret();

  bool ok = assm_.finish();
  assert(ok);
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

  // Populate a list of memory segments we need to emit code for
  vector<Memory*> segments;
  vector<Label> segment_cases;

  if(cs.stack.size())
    segments.push_back(&cs.stack);
  if(cs.heap.size())
    segments.push_back(&cs.heap);
  if(cs.data.size())
    segments.push_back(&cs.data);
  for(auto seg : cs.segments)
    if(seg.size())
      segments.push_back(&seg);

  // get labels
  auto done = get_label();
  auto fail = get_label();

  if(segments.size()) {
    for(size_t i = 0; i < segments.size() - 1; ++i)
      segment_cases.push_back(get_label());
  }
  segment_cases.push_back(fail);

  // Check alignment: A well aligned address won't change
  // Following this check, rsi is free for use as scratch space
  assm_.and_(rsi, rdi);
  assm_.cmp(rsi, rdi);
  assm_.jne_1(fail);

  // emit the code to figure out which segment we're writing to.
  for(size_t i = 0; i < segments.size(); ++i) {
    Memory* segment = segments[i];

    if(i > 0)
      assm_.bind(segment_cases[i-1]);

    // Compare the address (rdi) with the upper bound of the segment (rax).
    // Look out for overflow!  upper_bound() could be zero at the end of the
    // address space!  In which case, we skip this check.  This is safe because
    // we're only emitting code for segments with non-zero size, and the lower
    // bound check will make sure things are sane.
    if(segment->upper_bound()) {
      assm_.mov((R64)rax, Imm64(segment->upper_bound()));
      assm_.cmp(rdi, rax);
      assm_.ja_1(segment_cases[i]);
    }

    // compare the address (rdi) with the lower bound of the segment (rax)
    assm_.mov((R64)rax, Imm64(segment->lower_bound()));
    assm_.cmp(rdi, rax);
    assm_.jb_1(segment_cases[i]);

    // subtract the lower bound from rdi to get the offset into the segment
    assm_.sub(rdi, rax);

    // emit the memory access
    emit_map_addr_cases(fail, done, segment);

  }

  // If control reaches here, invoke the signal_trap handler for sigsegv
  assm_.bind(fail);
  emit_signal_trap_call(ErrorCode::SIGSEGV_);

  // Done; get out of here
  assm_.bind(done);
  assm_.ret();

  bool ok = assm_.finish();
  assert(ok);
  return fxn;
}

/** Back in the day, this function did a switch() statement to choose between
 * the stack/heap/data segments, rather than receiving a pointer to memory.
 * Hence "cases" in the name.  It could, probably, be
 * renamed/removed/refactored.  And we can do that.  But for now, as a tribute
 * to Eric's work on the Sandbox, it's gonna stick around here. -- BRC */
void Sandbox::emit_map_addr_cases(const Label& fail, const Label& done, Memory* mem) {
  // Save rcx (we need to use it for the shift instruction below)
  assm_.mov(rax, rcx);
  // We have a valid address, divide by to find the corresponding address in the mask array
  assm_.mov(rsi, rdi);
  assm_.shr(rsi, Imm8(3));
  // Now shift the byte masks based on offsets in those arrays
  assm_.mov(ecx, Imm32(0x07));
  assm_.and_(rcx, rdi);
  assm_.shl(rdx, cl);
  assm_.shl(rax, cl);
  // Restore rcx
  assm_.mov(rcx, rax);

  // The read mask shouldn't change when and'ed against the valid mask
  assm_.mov((R64)rax, Imm64(mem->valid_mask()));
  assm_.mov(rax, M64(rax, rsi, Scale::TIMES_1));
  assm_.and_(rax, rdx);
  assm_.cmp(rax, rdx);
  assm_.jne_1(fail);

  // The write mask shouldn't change when and'ed against the valid mask
  assm_.mov((R64)rax, Imm64(mem->valid_mask()));
  assm_.mov(rax, M64(rax, rsi, Scale::TIMES_1));
  assm_.and_(rax, rcx);
  assm_.cmp(rax, rcx);
  assm_.jne_1(fail);

  // Do final remapping
  assm_.mov((R64)rax, Imm64(mem->data()));
  assm_.add(rax, rdi);

  // Get out of here
  assm_.jmp_1(done);
}

bool Sandbox::is_mem_read_only(const Cfg& cfg) const {
  for (auto b = ++cfg.reachable_begin(), be = cfg.reachable_end(); b != be; ++b) {
    if (cfg.is_exit(*b)) {
      continue;
    }

    const auto begin = cfg.get_index(Cfg::loc_type(*b, 0));
    for (size_t i = begin, ie = begin + cfg.num_instrs(*b); i < ie; ++i) {
      const auto& instr = cfg.get_code()[i];
      if (instr.is_implicit_memory_dereference() && instr.get_opcode() != RET) {
        return false;
      }
      if (instr.is_explicit_memory_dereference()) {
        const auto mi = instr.mem_index();
        if (instr.maybe_write(mi) || instr.maybe_undef(mi)) {
          return false;
        }
      }
    }
  }

  return true;
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

bool Sandbox::emit_function(const Cfg& cfg, Function* fxn) {
  assert(cfg.get_function().invariant_first_instr_is_label());

  assm_.start(*fxn);

  // Grab the name of this function
  const auto label = cfg.get_function().get_leading_label();
  set_label_pool(label);

  // The label that begins a function must precede instrumentation .
  // Inter-function calls should target this label.
  assm_.assemble(cfg.get_code()[0]);
  // Now load the user's %rsp and emit a hidden label that intra-function jumps should target
  emit_load_user_rsp();
  const auto entry = get_label();
  assm_.bind(entry);

  // Make a unique label for representing the end
  const auto exit = get_label();

  // Assemble instructions and add instrumentation for reachable blocks
  for (Cfg::id_type b = 0, be = cfg.num_blocks(); b < be; ++b) {
    if (!cfg.is_reachable(b)) {
      continue;
    }

    const auto size = cfg.num_instrs(b);
    const auto begin = size == 0 ? 0 : cfg.get_index(Cfg::loc_type(b, 0));

    for (auto i = begin, ie = begin + size; i < ie; ++i) {
      assert(i < cfg.get_code().size());
      // Look up instruction and rip that points beyond this instruction
      const auto& f = cfg.get_function();
      const auto& instr = f.get_code()[i];
      const auto hex_offset = f.get_rip_offset() + f.hex_offset(i) + f.hex_size(i);

      // Emit callbacks and instruction
      if (global_before_.first != nullptr || !before_.empty()) {
        emit_before(cfg.get_function().get_leading_label(), i);
      }
      emit_instruction(instr, label, hex_offset, entry, exit);
      if (global_after_.first != nullptr || !after_.empty()) {
        emit_after(cfg.get_function().get_leading_label(), i);
      }
    }
  }
  // Catch for run-away code
  emit_signal_trap_call(ErrorCode::SIGCUSTOM_NO_RETURN);

  // All returns in this function point to here
  assm_.bind(exit);

  // Restore the STOKE %rsp and return
  emit_load_stoke_rsp();
  assm_.ret();

  bool ok = assm_.finish();
  assert(ok);
  return ok;
}

void Sandbox::emit_callback(const pair<StateCallback, void*>& cb, const Label& fxn, size_t line) {
  // Reload the STOKE %rsp, we're about to call some functions
  emit_load_stoke_rsp();

  // Read the user's state without disturbing any state in the process
  assm_.push(rax);
  assm_.mov(rax, Moffs64(&cpu2out_));
  assm_.xchg(rax, M64(rsp));
  assm_.call(M64(rsp));
  assm_.lea(rsp, M64(rsp, Imm32(8)));

  // rdi = callback function pointer
  assm_.mov(rdi, Imm64(cb.first));
  // rsi = pointer to current code
  assm_.mov(rsi, Imm64(&(fxns_src_[fxn]->get_code())));
  // rdx = line number
  assm_.mov(rdx, Imm64(line));
  // rcx = pointer to current state
  assm_.mov(rax, Moffs64(&out_));
  assm_.mov(rcx, rax);
  // r8 = pointer to callback arg
  assm_.mov(r8, Imm64(cb.second));
  // rax = callback wrapper call
  assm_.mov((R64)rax, Imm64(&callback_wrapper));
  assm_.call(rax);

  // Restore the user's state
  // This leaves STOKE's %rsp in place, but that's what we want
  assm_.mov(rax, Moffs64(&out2cpu_));
  assm_.call(rax);

  // Back to userland, reload the user %rsp
  emit_load_user_rsp();
}

void Sandbox::emit_before(const Label& label, size_t line) {
  if (global_before_.first != nullptr) {
    emit_callback(global_before_, label, line);
  }
  const auto i = before_.find(label);
  if (i == before_.end()) {
    return;
  }
  const auto j = i->second.find(line);
  if (j == i->second.end()) {
    return;
  }
  emit_callback(j->second, label, line);
}

void Sandbox::emit_after(const Label& label, size_t line) {
  if (global_after_.first != nullptr) {
    emit_callback(global_after_, label, line);
  }
  const auto i = after_.find(label);
  if (i == after_.end()) {
    return;
  }
  const auto j = i->second.find(line);
  if (j == i->second.end()) {
    return;
  }
  emit_callback(j->second, label, line);
}

void Sandbox::emit_instruction(const Instruction& instr, const Label& fxn, uint64_t hex_offset, const Label& entry, const Label& exit) {
  static DispatchTable table;
  switch(table.lookup(instr)) {
  case DispatchTable::SIGILL_:
    emit_signal_trap_call(ErrorCode::SIGILL_);
    break;
  case DispatchTable::LABEL_DEFN:
    if (instr.get_operand<Label>(0) != fxn) {
      assm_.assemble(instr);
    }
    break;
  case DispatchTable::ANY_JUMP:
    if (instr.get_operand<Label>(0) == fxn) {
      emit_jump({instr.get_opcode(), {entry}});
    } else {
      emit_jump(instr);
    }
    break;
  case DispatchTable::CALL_LABEL:
    if (stack_check_) {
      emit_call_with_stack_check(instr, hex_offset);
    } else {
      emit_call(instr, hex_offset);
    }
    break;
  case DispatchTable::RET:
    emit_ret(instr, exit);
    break;
  case DispatchTable::MEM_DIV:
    emit_mem_div(instr);
    break;
  case DispatchTable::MEM_PUSH:
    emit_mem_push(instr);
    break;
  case DispatchTable::MEM_POP:
    emit_mem_pop(instr);
    break;
  case DispatchTable::MEM_BT:
    emit_mem_bt(instr);
    break;
  case DispatchTable::MEM_INSTR:
    emit_memory_instruction(instr, hex_offset);
    break;
  case DispatchTable::PUSH:
    emit_push(instr);
    break;
  case DispatchTable::PUSHF:
    emit_pushf(instr);
    break;
  case DispatchTable::POP:
    emit_pop(instr);
    break;
  case DispatchTable::POPF:
    emit_popf(instr);
    break;
  case DispatchTable::LEAVE:
    emit_leave(instr);
    break;
  case DispatchTable::REG_DIV:
    emit_reg_div(instr);
    break;
  case DispatchTable::INSTR:
    assm_.assemble(instr);
    break;
  default:
    assert(false);
  }
}

void Sandbox::emit_memory_instruction(const Instruction& instr, uint64_t hex_offset) {
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

  // Does this address use rsp or rip offset indexing?
  const auto rsp_base = old_op.contains_base() && (old_op.get_base() == rsp);
  const auto rsp_index = old_op.contains_index() && (old_op.get_index() == rsp);
  const auto uses_rsp = rsp_base || rsp_index;
  const auto rip_offset = old_op.rip_offset();

  // Some special case handling here for rip offset style dereferences.
  // Either way, the effective address is going into rdi
  if (rip_offset) {
    assm_.mov(rdi, Imm64(hex_offset + old_op.get_disp()));
  } else {
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
  }

  // Load the alignment mask into rsi, and the read/write mask into rdx/rcx
  switch (instr.type(mi)) {
  case Type::M_256:
    // Berkeley says that 256-bit values DON'T have to be aligned? Is this true?
    assm_.mov(rsi, Imm64(0xffffffffffffffe0));
    assm_.mov(rdx, Imm64(0x00000000ffffffff));
    break;
  case Type::M_128:
    assm_.mov(rsi, Imm64(0xfffffffffffffff0));
    assm_.mov(rdx, Imm64(0x000000000000ffff));
    break;
  case Type::M_80_BCD:
  case Type::M_80_FP:
    // I'm not sure whether 128-bit alignment is required for 80-bit types or just preferred
    assm_.mov(rsi, Imm64(0xfffffffffffffff0));
    assm_.mov(rdx, Imm64(0x00000000000003ff));
    break;
  case Type::M_64:
  case Type::M_64_FP:
  case Type::M_64_INT:
    assm_.mov(rsi, Imm64(0xffffffffffffffff));
    assm_.mov(rdx, Imm64(0x00000000000000ff));
    break;
  case Type::M_32:
  case Type::M_32_FP:
  case Type::M_32_INT:
    assm_.mov(rsi, Imm64(0xffffffffffffffff));
    assm_.mov(rdx, Imm64(0x000000000000000f));
    break;
  case Type::M_16:
  case Type::M_16_INT:
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
  // Instructions that take Rh operands preclude the use of r8-15.
  // Fortunately, we know apriori that they only use ah-dh so it's easy to find a replacement.
  const auto rx = uses_rh(instr) ? rbp : get_unused_quad(instr);
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
  // (Check that we've generated a correct instruction in place of the original)
  temp->set_operand(mi, M8(rx));
  assert(temp->check());
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
  const auto okay = get_label();
  assm_.jne_1(okay);
  emit_signal_trap_call(ErrorCode::SIGCUSTOM_EXCEEDED_MAX_JUMPS);
  assm_.bind(okay);

  // Restore rflags and rax
  assm_.popfq();
  assm_.pop(rax);
  // Reload the user's %rsp
  emit_load_user_rsp();

  // If this is a jump to an 8-bit offset, replace with a 32-bit one if possible
  Instruction copy = instr;
  copy.label32_transform();

  // Go ahead and do the jump
  assm_.assemble(copy);
}

void Sandbox::emit_call(const Instruction& instr, uint64_t hex_offset) {
  // TODO: we cannot use scratch_[eax], because emit_push uses that already,
  // so we use an extra scratch here.  this is ugly, and should be improved.

  // Push the rip offset that follows this instruction
  // Sandboxing the memory dereference will catch infinite recursions
  assm_.mov(Moffs64(&scratch_[SANDBOX_SCRATCH_EXTRA_1]), rax);
  assm_.mov((R64)rax, Imm64(hex_offset));
  emit_push({PUSH_R64, {rax}});
  assm_.mov(rax, Moffs64(&scratch_[SANDBOX_SCRATCH_EXTRA_1]));

  // Restore the STOKE %rsp before the call and the user's rsp after
  emit_load_stoke_rsp();
  assm_.assemble(instr);
  emit_load_user_rsp();

  // This pop doesn't actually have to go anywhere.
  // We just want to be able to catch an rsp that was left in a bad location
  assm_.mov(Moffs64(&scratch_[SANDBOX_SCRATCH_EXTRA_1]), rax);
  assm_.mov((R64)rax, Imm64(hex_offset));
  emit_pop({POP_R64, {rax}});
  assm_.mov(rax, Moffs64(&scratch_[SANDBOX_SCRATCH_EXTRA_1]));
}

void Sandbox::emit_call_with_stack_check(const Instruction& instr, uint64_t hex_offset) {
  // TODO: same comment about scratch space as emit_call

  // Push the rip offset that follows this instruction
  // Sandboxing the memory dereference will catch infinite recursions
  assm_.mov(Moffs64(&scratch_[SANDBOX_SCRATCH_EXTRA_1]), rax);
  assm_.mov((R64)rax, Imm64(hex_offset));
  emit_push({PUSH_R64, {rax}});
  assm_.mov(rax, Moffs64(&scratch_[SANDBOX_SCRATCH_EXTRA_1]));

  // Restore the STOKE %rsp before the call
  emit_load_stoke_rsp();
  assm_.assemble(instr);

  // Backup some regs while we still have the stoke rsp
  assm_.push(rax);
  assm_.push(rbx);
  assm_.pushfq();

  // Restore the user's rsp just long enough to pop the return address
  emit_load_user_rsp();
  emit_pop({POP_R64, {rax}});

  // Now back to the stoke rsp to check the result and fix up the stack
  emit_load_stoke_rsp();

  const auto okay = get_label();
  assm_.mov((R64)rbx, Imm64(hex_offset));
  assm_.cmp(rax, rbx);
  assm_.je_1(okay);
  emit_signal_trap_call(ErrorCode::SIGCUSTOM_STACK_SMASH);

  assm_.bind(okay);
  assm_.popfq();
  assm_.pop(rbx);
  assm_.pop(rax);

  // Leave with the user's rsp in place
  emit_load_user_rsp();
}

void Sandbox::emit_ret(const Instruction& instr, const Label& exit) {
  assm_.jmp_1(exit);
}

void Sandbox::emit_leave(const Instruction& instr) {
  assm_.mov(rsp, rbp);
  emit_pop({POP_R64, {rbp}});
}

void Sandbox::emit_mem_bt(const Instruction& instr) {
  // We're going to need to compute some values and modify eflags in the process.
  // Grab the STOKE rsp to back them up along with some registers while we have it.
  emit_load_stoke_rsp();
  assm_.push(rdi);
  assm_.push(rsi);
  assm_.push(r8);
  assm_.pushfq();
  emit_load_user_rsp();

  // All bt instructions that use memory have it as their first operand.
  // Load the effective address of that operand (M64 is as good as anything) into rdi
  assm_.lea(rdi, instr.get_operand<M64>(0));

  // Move the second operand into an R64 (again, as good as anything) ...
  switch (instr.type(1)) {
  case Type::IMM_8:
    assm_.xor_(rsi, rsi);
    assm_.mov(sil, instr.get_operand<Imm8>(1));
    break;
  case Type::R_16:
    assm_.xor_(rsi, rsi);
    assm_.mov(si, instr.get_operand<R16>(1));
    break;
  case Type::R_32:
    assm_.mov(esi, instr.get_operand<R32>(1));
    break;
  case Type::R_64:
    assm_.mov(rsi, instr.get_operand<R64>(1));
    break;

  default:
    assert(false);
    break;
  }
  // ... and use it to figure out the byte address we'll ACTUALLY derefence
  assm_.mov(r8, rsi);
  assm_.shr(r8, Imm8(3));
  assm_.lea(rdi, M64(rdi, r8, Scale::TIMES_1));
  // ... and a bit index relative to that byte
  assm_.and_(rsi, Imm8(0x07));

  // Restore eflags
  emit_load_stoke_rsp();
  assm_.popfq();
  emit_load_user_rsp();

  // Now we're ready to invoke the instruction using %rdi and %rsi
  // (Any memory operand variant is equivalent to any other.)
  if (instr.is_bt()) {
    emit_memory_instruction({BT_M64_R64, {M64(rdi), rsi}});
  } else if (instr.is_btc()) {
    emit_memory_instruction({BTC_M64_R64, {M64(rdi), rsi}});
  } else if (instr.is_btr()) {
    emit_memory_instruction({BTR_M64_R64, {M64(rdi), rsi}});
  } else if (instr.is_bts()) {
    emit_memory_instruction({BTS_M64_R64, {M64(rdi), rsi}});
  }

  // None of these variants write registers. Restore the values we saved.
  emit_load_stoke_rsp();
  assm_.pop(r8);
  assm_.pop(rsi);
  assm_.pop(rdi);
  emit_load_user_rsp();
}

void Sandbox::emit_mem_div(const Instruction& instr) {
  // Backup rbx --
  // It isn't totally obvious why this use of scratch_ won't collide with
  // the use inside emit_memory_instruction. The reason is that rx appears
  // in every invocation. This prevents get_unused_reg from proposing it
  // a second time around.
  assm_.mov(Moffs64(&scratch_[rax]), rax);
  assm_.mov(rax, rbx);
  assm_.mov(Moffs64(&scratch_[rbx]), rax);
  assm_.mov(rax, Moffs64(&scratch_[rax]));

  // Move the mem operand into its place (this will catch a sigsegv)
  // Perform the register div on rbx (this will catch a sigfpe)
  switch (instr.get_opcode()) {
  case DIV_M8:
    emit_memory_instruction({MOV_R8_M8, {bl, instr.get_operand<M8>(0)}});
    emit_reg_div({DIV_R8, {bl}});
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
    emit_memory_instruction({MOV_R8_M8, {bl, instr.get_operand<M8>(0)}});
    emit_reg_div({IDIV_R8, {bl}});
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
  // Optimization opportunity:
  // The memory write that happens here is to force the memory operand to
  // xchg to be defined. Rather than go all the way through emit_memory_instr()
  // it might be faster to have a method that just forces those bits to true.

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
  case POP_R16_1:
    assm_.lea(rsp, M64(rsp, Imm32(2)));
    emit_memory_instruction({MOV_R16_M16, {instr.get_operand<R16>(0), M16(rsp, Imm32(-2))}});
    break;
  case POP_R64:
  case POP_R64_1:
    assm_.lea(rsp, M64(rsp, Imm32(8)));
    emit_memory_instruction({MOV_R64_M64, {instr.get_operand<R64>(0), M64(rsp, Imm32(-8))}});
    break;

  default:
    assert(false);
  }
}

void Sandbox::emit_popf(const Instruction& instr) {
  // Two masks for reasoning about rflags. One is what the user can modify, the other is the inverse.
  // It's possible that it's reasonable to modify more than these, but for now, this is all we
  // support.
  constexpr uint32_t user_mask = 0x000008d5; // rflags[11,7,6,4,2,0]
  constexpr uint32_t reserved_mask = ~user_mask;

  // Backup some scratch space
  emit_load_stoke_rsp();
  assm_.push(r15);
  assm_.push(r14);
  emit_load_user_rsp();

  // Restore the user's rsp and try to take some bits off of his stack
  // If a segv were going to happen, we would catch it here
  if (instr.get_opcode() == POPFQ) {
    emit_pop({POP_R64, {r15}});
  } else {
    assm_.lea(r15, M64(Imm32(0)));
    emit_pop({POP_R16, {r15w}});
  }

  // Now back to stoke to do some real work
  emit_load_stoke_rsp();
  // Load rflags
  assm_.pushfq();

  // Check whether any of the user-provided data disagrees with any non-condition flags
  assm_.mov(r14, M64(rsp));
  assm_.xor_(r14, r15);
  assm_.and_(r14d, Imm32(reserved_mask));
  // If the value is non-zero (meaning there was a disagreement), trigger a segfault (meaning freak out)
  const auto okay = get_label();
  assm_.je_1(okay);
  emit_signal_trap_call(ErrorCode::SIGCUSTOM_INVALID_POPF);
  assm_.bind(okay);

  // Now that we know the user's value agrees on reserved bits, extract just the new bits
  assm_.and_(r15d, Imm32(user_mask));
  // Let's also copy the original rflags state to a temp register and zero out these bits
  assm_.mov(r14, M64(rsp));
  assm_.and_(r14, Imm32(reserved_mask));
  // And now put the results together into r15
  assm_.or_(r15, r14);

  // Load this value onto the stack and pop into rflags
  assm_.push(r15);
  assm_.popfq();
  // One more pop to put the stack back where it was (we can clobber r14)
  assm_.pop(r14);

  // Restore everything and reload the user's rsp
  assm_.pop(r14);
  assm_.pop(r15);
  emit_load_user_rsp();
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
  case PUSH_R16_1:
    emit_memory_instruction({MOV_M16_R16, {M16(rsp, Imm32(-2)), instr.get_operand<R16>(0)}});
    assm_.lea(rsp, M64(rsp, Imm32(-2)));
    break;
  case PUSH_R64:
  case PUSH_R64_1:
    emit_memory_instruction({MOV_M64_R64, {M64(rsp, Imm32(-8)), instr.get_operand<R64>(0)}});
    assm_.lea(rsp, M64(rsp, Imm32(-8)));
    break;

  default:
    assert(false);
    break;
  }
}

void Sandbox::emit_pushf(const Instruction& instr) {
  // We need to do some pushing and popping, so reload the stoke rsp
  emit_load_stoke_rsp();
  // Backup the value of r15, which we're going to clobber and move rflags there
  assm_.push(r15);
  assm_.pushfq();
  assm_.pop(r15);

  // Now restore the user's rsp and try pushing r15 onto the user's stack
  // If a segfault were going to happen, we would catch it here.
  emit_load_user_rsp();
  if (instr.get_opcode() == PUSHFQ) {
    emit_push({PUSH_R64, {r15}});
  } else {
    emit_push({PUSH_R16, {r15w}});
  }

  // Now switch back to stoke's rsp just long enough to restore the original r15
  emit_load_stoke_rsp();
  assm_.pop(r15);
  emit_load_user_rsp();
}

void Sandbox::emit_reg_div(const Instruction& instr) {
  // First check whether this instruction is trying to read from some part of rsp
  auto rsp_op = false;
  switch (instr.type(0)) {
  case Type::R_8:
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
  // There are some code paths to here where the stoke stack pointer is
  // already in place. Doing this anyway doesn't hurt anything.
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
