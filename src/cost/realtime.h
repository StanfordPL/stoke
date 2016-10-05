// Copyright 2013-2016 Stanford University
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

#ifndef STOKE_SRC_COST_REALTIME_H
#define STOKE_SRC_COST_REALTIME_H

#include <sys/wait.h>

#include "src/cost/cost_function.h"
#include "src/ext/cpputil/include/io/console.h"

#include "tools/io/stoke_path.h"

// IMPORTANT: for a high-level documentation of how this cost function works,
// see tools/apps/realtimep.cc

namespace stoke {

namespace {

void safe_write(int handle, const void* data, int nbytes) {
  if (write(handle, data, nbytes) != nbytes) {
    cpputil::Console::error() << "Failed to send data to realtimep (realtime)." << std::endl;
  }
}

void safe_read(int handle, void* buf, int size) {
  auto nread = read(handle, buf, size);
  if (size != nread) {
    cpputil::Console::error() << "Failed to read sufficient number of bytes; read " << nread << " instead of " << size << " (realtime)." << std::endl;
  }
}

}

class RealtimeCost : public CostFunction {

public:

  /** Yes, we need to use the sandbox */
  bool need_perf_sandbox() {
    return true;
  }

  /** Set up a second process for performance measurements */
  // NOTE: the process created here is never stopped, it'll die when the parent dies
  RealtimeCost& setup_perf_sandbox(Sandbox* sb) {
    perf_sandbox_ = sb;

    testcase = *sb->get_input(0);

    start_realtimep();

    return *this;
  }

  /** Set up the realtimep process. */
  void start_realtimep() {
    // create a pipe for communication
    if (pipe(pc) || pipe(cp)) {
      cpputil::Console::error() << "Failed to create pipe to communicate with realtimep." << std::endl;
    }

    // fork
    pid = fork();
    if (pid == (pid_t) 0) {
      // child process

      // close stdin and make it the read end of the parent to child pipe
      close(0);
      // close stderr and make it write end of child to parent pipe
      close(2);
      if (dup(pc[0]) == -1 || dup(cp[1]) == -1) {
        cpputil::Console::error() << "Failed to create pipe (dup) to communicate with realtimep." << std::endl;
      }

      // close unused ends of pipes
      close(pc[1]);
      close(cp[0]);

      // exec realtimep binary
      std::string realtimep_path = stoke_bin_path() + "/realtimep";
      auto ret = execl(realtimep_path.c_str(), realtimep_path.c_str(), (char*)0);
      // we should not reach this point if exec succeeds
      cpputil::Console::error() << "Exec of " << realtimep_path <<  " failed: " << ret << "." << std::endl;
    } else if (pid < (pid_t) 0) {
      cpputil::Console::error() << "Fork for realtimep failed: " << strerror(errno) << "." << std::endl;
    }

    // parent process
    close(pc[0]);
    close(cp[1]);

    // send testcase memory information
    int n = testcase.get_nonempty_segments().size();
    safe_write(pc[1], &n, sizeof(n));
    for (auto segment : testcase.get_nonempty_segments()) {
      uint64_t addr = segment->lower_bound();
      safe_write(pc[1], &addr, sizeof(addr));
      uint64_t size = segment->size();
      safe_write(pc[1], &size, sizeof(size));
      safe_write(pc[1], segment->data(), size);
    }

    // send target address
    safe_write(pc[1], &rip_offset, sizeof(rip_offset));

    // send the ymm values, and read the address they will be stored
    for (int i = 0; i < 16; i++) {
      safe_write(pc[1], testcase.sse[i].data(), 256 / 8);
      safe_read(cp[0], &ymm_ptr[i], sizeof(ymm_ptr[i]));
    }

    // send the value of rsp
    uint64_t rsp = testcase.gp[x64asm::rsp].get_fixed_quad(0);
    safe_write(pc[1], &rsp, sizeof(rsp));

    // read rsp backup pointer value
    safe_read(cp[0], &rsp_backup_ptr, sizeof(rsp_backup_ptr));

    // read timer temp pointer
    safe_read(cp[0], &timer_start_ptr, sizeof(timer_start_ptr));

    // send repetitions
    safe_write(pc[1], &repetitions, sizeof(repetitions));

    // read address of cleanup code
    safe_read(cp[0], &cleanup_addr, sizeof(cleanup_addr));

    // send setup and cleanup code
    send_setup();
    send_cleanup();
  }

  /** Emit rdtscp instruction. */
  void emit_rdtscp(x64asm::Function& f) {
    f.emit_byte(0x0f);
    f.emit_byte(0x01);
    f.emit_byte(0xf9);
  }

  void send_setup() {
    x64asm::Function buffer;
    x64asm::Assembler assm;
    assm.start(buffer);

    // save callee-saved registers
    assm.push_1(x64asm::rbx);
    assm.push_1(x64asm::rbp);
    assm.push_1(x64asm::r12);
    assm.push_1(x64asm::r13);
    assm.push_1(x64asm::r14);
    assm.push_1(x64asm::r15);

    // backup rsp to fixed location
    assm.mov(x64asm::rax, x64asm::rsp);
    assm.mov(x64asm::Moffs64(rsp_backup_ptr), x64asm::rax);

    // initialize return address to point to the cleanup code
    assm.mov((x64asm::R64)x64asm::rax, x64asm::Imm64(cleanup_addr));
    auto rsp_from_testcase = testcase.gp[x64asm::rsp].get_fixed_quad(0);
    assm.mov((x64asm::R64)x64asm::rcx, x64asm::Imm64(rsp_from_testcase));
    assm.mov(x64asm::M64(x64asm::rcx), x64asm::rax);

    // initialize registers from testcase
    // - flags
    assm.mov((x64asm::R64)x64asm::rax, x64asm::Imm64(*((uint64_t*)testcase.rf.data())));
    assm.push_1(x64asm::rax);
    assm.popfq();
    // - sse registers
    for (const auto& s : x64asm::xmms) {
      assm.mov((x64asm::R64)x64asm::rax, x64asm::Imm64(ymm_ptr[s]));
#if defined(HASWELL_BUILD) || defined(SANDYBRIDGE_BUILD)
      assm.vmovdqu(x64asm::ymms[s], x64asm::M256(x64asm::rax));
#else
      assm.movdqu(x64asm::xmms[s], x64asm::M128(x64asm::rax));
#endif
    }
    // - most gp registers
    std::vector<x64asm::R64> later = { x64asm::rax, x64asm::rcx, x64asm::rdx };
    for (const auto& r : x64asm::r64s) {
      if (find(later.begin(), later.end(), r) == later.end()) {
        assm.mov(r, x64asm::Imm64(testcase.gp[r].get_fixed_quad(0)));
      }
    }

    // record start time (doing this as late as possible)
    emit_rdtscp(buffer);
    assm.shl(x64asm::rdx, x64asm::Imm8(32));
    assm.add(x64asm::rax, x64asm::rdx);
    assm.mov(x64asm::Moffs64(timer_start_ptr), x64asm::rax);

    // - remaining gp registers
    for (const auto& r : later) {
      assm.mov(r, x64asm::Imm64(testcase.gp[r].get_fixed_quad(0)));
    }

    // jump to the actual code (the pointer to the code is stored at a fixed address)
    assm.jmp(x64asm::M64(x64asm::Imm32(0x10000)));

    bool ok = assm.finish();
    assert(ok);

    // send code
    int n;
    n = buffer.size();
    safe_write(pc[1], &n, sizeof(n));
    safe_write(pc[1], buffer.data(), n);
  }

  void send_cleanup() {
    x64asm::Function buffer;
    x64asm::Assembler assm;
    assm.start(buffer);

    // record end time
    emit_rdtscp(buffer);
    assm.shl(x64asm::rdx, x64asm::Imm8(32));
    assm.add(x64asm::rax, x64asm::rdx);

    // calculate timing
    assm.mov(x64asm::rcx, x64asm::rax);
    assm.mov(x64asm::rax, x64asm::Moffs64(timer_start_ptr));
    assm.sub(x64asm::rcx, x64asm::rax);

    // restore rsp
    assm.mov(x64asm::rax, x64asm::Moffs64(rsp_backup_ptr));
    assm.mov(x64asm::rsp, x64asm::rax);

    // restore callee-saved registers
    assm.pop_1(x64asm::r15);
    assm.pop_1(x64asm::r14);
    assm.pop_1(x64asm::r13);
    assm.pop_1(x64asm::r12);
    assm.pop_1(x64asm::rbp);
    assm.pop_1(x64asm::rbx);

    // move timing into rax as the result
    assm.mov(x64asm::rax, x64asm::rcx);

    // return
    assm.ret();

    bool ok = assm.finish();
    assert(ok);

    // send code
    int n;
    n = buffer.size();
    safe_write(pc[1], &n, sizeof(n));
    safe_write(pc[1], buffer.data(), n);
  }

  /** Measures the real running time */
  result_type operator()(const Cfg& cfg, Cost max = max_cost) {
    auto sandbox_result = *perf_sandbox_->get_output(0);

    // if there was a segfault or other kind of error, it is not safe to run the code outside of a sandbox
    if (sandbox_result.code != ErrorCode::NORMAL) {
      return result_type(true, max);
    }

    // check if the code read/wrote the top of the stack
    if (perf_sandbox_->did_readwrite_topofstack()) {
      return result_type(true, max);
    }

    // assemble code
    x64asm::Function buffer;
    x64asm::Assembler assm;
    assm.start(buffer);

    x64asm::Code code = cfg.get_code();

    // assemble function
    for (size_t i = 0; i < code.size(); i++) {
      auto& instr = code[i];
      assm.assemble(instr);
    }

    bool ok = assm.finish();
    assert(ok);

    // send code
    int n;
    n = buffer.size();
    safe_write(pc[1], &n, sizeof(n));
    safe_write(pc[1], buffer.data(), n);

    // read execution time
    uint64_t exec;
    auto nread = read(cp[0], &exec, sizeof(exec));
    if (sizeof(exec) != nread) {
      // if we ran into an issue of the child not responding..

      // .. close all channels, ..
      close(cp[0]);
      close(pc[1]);

      // .. kill the child, ..
      if (kill(pid, SIGKILL) != 0) {
        cpputil::Console::error() << "kill failed: " << strerror(errno) << "." << std::endl;
      }
      std::cout << "killed" << std::endl;

      // .. collect the child to free up it's resources
      int status;
      waitpid(pid, &status, 0);


      // .. and start it again.
      start_realtimep();

      // we report a high cost for this
      return result_type(true, max);
    }

    return result_type(true, exec);
  }

  RealtimeCost& set_repetitions(int r) {
    repetitions = r;
    return *this;
  }

  RealtimeCost& set_rip_offset(uint64_t rip_offs) {
    rip_offset = rip_offs;
    return *this;
  }

private:

  /** PID of the realtimep process. */
  pid_t pid;
  /** parent to child pipe */
  int pc[2];
  /** child to parent pipe */
  int cp[2];
  /** pointer in realtimep to a location where rsp can be backed up. */
  uint64_t* rsp_backup_ptr;
  /** pointers to ymm value location in realtimep to initialize ymm registers. */
  uint64_t* ymm_ptr[16];
  /** the testcase we use */
  CpuState testcase;
  /** The number of repetitions */
  int repetitions;
  /** The address where the code should be placed. */
  uint64_t rip_offset;
  /** A pointer to the cleanup code. */
  uint64_t cleanup_addr;
  /** pointer in realtimep to a location where the start time can be stored. */
  uint64_t* timer_start_ptr;
};

} // namespace stoke

#endif
