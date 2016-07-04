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

#include <iostream>

#include <sys/wait.h>

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/cpputil/include/io/filterstream.h"
#include "src/ext/cpputil/include/io/column.h"
#include "src/ext/cpputil/include/io/console.h"
#include "src/ext/cpputil/include/signal/debug_handler.h"
#include "src/ext/x64asm/src/function.h"

#include "tools/args/cost.inc"
#include "tools/args/rewrite.inc"
#include "tools/args/target.inc"
#include "tools/gadgets/cost_function.h"
#include "tools/gadgets/functions.h"
#include "tools/gadgets/rewrite.h"
#include "tools/gadgets/sandbox.h"
#include "tools/gadgets/seed.h"
#include "tools/gadgets/target.h"
#include "tools/gadgets/testcases.h"

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;

void safe_write(int handle, const void* data, int nbytes) {
  if (write(handle, data, nbytes) != nbytes) {
    Console::error() << "Failed to send data to stoked." << endl;
  }
}

void safe_read(int handle, void* buf, int size) {
  auto nread = read(handle, buf, size);
  if (size != nread) {
    cout << "Failed to read sufficient number of bytes; read " << nread << " instead of " << size << "." << endl;
    exit(1);
  }
}

int main(int argc, char** argv) {
  CommandLineConfig::strict_with_convenience(argc, argv);
  DebugHandler::install_sigsegv();
  DebugHandler::install_sigill();

  FunctionsGadget aux_fxns;
  TargetGadget target(aux_fxns, false);
  RewriteGadget rewrite(aux_fxns);

  SeedGadget seed;
  TrainingSetGadget train_tcs(seed);
  SandboxGadget training_sb(train_tcs, aux_fxns);
  PerformanceSetGadget perf_tcs(seed);
  SandboxGadget perf_sb(perf_tcs, aux_fxns);
  CostFunctionGadget fxn(target, &training_sb, &perf_sb);

  pid_t pid;
  int pc[2]; // parent to child pipe
  int cp[2]; // child to parent pipe

  // create a pipe for communication
  if (pipe(pc) || pipe(cp)) {
    Console::error() << "Failed to create pipe to communicate with stoked." << endl;
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
      Console::error() << "Failed to create pipe (dup) to communicate with stoked." << endl;
    }

    // close unused ends of pipes
    close(pc[1]);
    close(cp[0]);

    // exec stoked binary
    string stoked_path = "/home/sheule/dev/strata/stoke/bin/stoked";
    auto ret = execl(stoked_path.c_str(), stoked_path.c_str(), (char*)0);
    // we should not reach this point if exec succeeds
    Console::error() << "Exec of " << stoked_path <<  " failed: " << ret << "." << endl;
  } else if (pid < (pid_t) 0) {
    Console::error() << "Fork for stoked failed." << endl;
  } else {
    // parent process
    close(pc[0]);
    close(cp[1]);
    // stringstream ss;
    // ss << perf_tcs[0];
    // auto str = ss.str();
    // int n = str.length();
    // safe_write(pc[1], &n, sizeof(n));
    // safe_write(pc[1], str.c_str(), str.length());
  }

  // send testcase memory information
  auto& testcase = perf_tcs[0];
  int n = testcase.get_nonempty_segments().size();
  safe_write(pc[1], &n, sizeof(n));
  for (auto segment : testcase.get_nonempty_segments()) {
    uint64_t addr = segment->lower_bound();
    safe_write(pc[1], &addr, sizeof(addr));
    uint64_t size = segment->size();
    safe_write(pc[1], &size, sizeof(size));
    safe_write(pc[1], segment->data(), size);
  }

  // read rsp backup pointer value
  uint64_t* rsp_backup_ptr = NULL;
  safe_read(cp[0], &rsp_backup_ptr, sizeof(rsp_backup_ptr));

  // assemble code
  Function buffer;
  Assembler assm;
  assm.start(buffer);

  Code code;
// #define STRAIGHT_LINE
#ifdef STRAIGHT_LINE
  stringstream tmp;
  tmp << ".test:" << std::endl;
  // tmp << "movq $0x400f28, %rax" << endl;
  // tmp << "movq (%rax), %rax" << endl;
  // tmp << "retq" << std::endl;
  tmp << "movl $0x0, %eax" << endl;
  for (int i = 0; i < 490; i++) {
    tmp << "addq $0x1, %rax" << endl;
    tmp << "cmpb $0x0, (%rdi,%rax,1)" << endl;
  }
  tmp >> code;
#else
  code = target.get_code();
#endif
  // cout << code << endl;

  // save callee-saved registers
  assm.push_1(rbx);
  assm.push_1(rbp);
  assm.push_1(r12);
  assm.push_1(r13);
  assm.push_1(r14);
  assm.push_1(r15);

  // backup rsp to fixed location
  assm.mov(rax, rsp);
  assm.mov(Moffs64(rsp_backup_ptr), rax);

  // initialize registers from testcase
  // - flags
  // assm.mov(rax, Moffs64(cs.rf.data()));
  // assm.push_1(rax);
  // assm.popfq();
  // - sse registers
//   for (const auto& s : xmms) {
//     assm.mov((R64)rax, Imm64(cs.sse[s].data()));
// #if defined(HASWELL_BUILD) || defined(SANDYBRIDGE_BUILD)
//     assm.vmovdqu(ymms[s], M256(rax));
// #else
//     assm.movdqu(xmms[s], M128(rax));
// #endif
//   }
  // - gp registers
  for (const auto& r : r64s) {
    if (r != rsp) {
      assm.mov(r, Imm64(*((uint64_t*)testcase.gp[r].data())));
    }
  }

  // label for the clean-up code
  const Label exit;

  // assemble function
  for (size_t i = 0; i < code.size(); i++) {
    auto& instr = code[i];
    // turn returns into jumps to the tear-down code
    if (instr.get_opcode() == RET) {
      assm.jmp(exit);
    } else {
      assm.assemble(instr);
    }
  }

  // what follows is all cleanup code
  assm.bind(exit);

  // restore rsp
  assm.mov(rcx, rax);
  assm.mov(rax, Moffs64(rsp_backup_ptr));
  assm.mov(rsp, rax);
  assm.mov(rax, rcx);

  // restore callee-saved registers
  assm.pop_1(r15);
  assm.pop_1(r14);
  assm.pop_1(r13);
  assm.pop_1(r12);
  assm.pop_1(rbp);
  assm.pop_1(rbx);

  // return
  assm.ret();

  bool ok = assm.finish();
  assert(ok);

  n = buffer.size();
  safe_write(pc[1], &n, sizeof(n));
  safe_write(pc[1], buffer.data(), n);

  // read execution time
  uint64_t exec;
  safe_read(cp[0], &exec, sizeof(exec));
  // cout << exec << endl;

  // done
  close(pc[1]);
  close(cp[0]);

  int returnStatus;
  waitpid(pid, &returnStatus, 0);
  // cout << "child finished with: " << returnStatus << endl;
  return 0;

  ofilterstream<Column> os(Console::msg());
  os.filter().padding(3);

  os << "Target" << endl;
  os << endl;
  os << target_arg.value().get_code() << endl;
  os.filter().next();

  os << "Rewrite" << endl;
  os << endl;
  os << rewrite_arg.value().get_code() << endl;
  os.filter().done();

  Console::msg() << endl;

  const auto res = fxn(rewrite, max_cost_arg.value());

  Console::msg() << "Correct: " << (res.first ? "yes" : "no") << endl;
  Console::msg() << "Cost: " << res.second << endl;
  Console::msg() << endl;

  return 0;
}
