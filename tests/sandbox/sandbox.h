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


#include "src/ext/x64asm/src/reg_set.h"
#include "src/state/cpu_state.h"
#include "src/stategen/stategen.h"
#include "src/sandbox/sandbox.h"

TEST(SandboxTest, TrivialExampleWorks) {

  x64asm::Code c;
  std::stringstream ss;

  // Here's the input program
  ss << "incq %rcx" << std::endl;
  ss << "addq $0x8, %rdx" << std::endl;
  ss << "retq" << std::endl;

  ss >> c;

  // Setup the sandbox
  stoke::Sandbox sb;
  stoke::CpuState tc;

  sb.set_max_jumps(1);
  sb.insert_input(tc);

  // Run it
  sb.run({c, x64asm::RegSet::empty(), x64asm::RegSet::empty()});

  ASSERT_EQ(stoke::ErrorCode::NORMAL, sb.result_begin()->code);

  stoke::CpuState output = *sb.result_begin();

  ASSERT_EQ(1, output.gp[1].get_fixed_quad(0));
  ASSERT_EQ(8, output.gp[2].get_fixed_quad(0));


}


TEST(SandboxTest, AllGPRegistersWork) {

  x64asm::Code c;
  std::stringstream ss;

  // Here's the input program
  ss << "addq $0x1, %rax" << std::endl;
  ss << "addq $0x2, %rcx" << std::endl;
  ss << "addq $0x3, %rdx" << std::endl;
  ss << "addq $0x4, %rbx" << std::endl;
  ss << "addq $0x5, %rsp" << std::endl;
  ss << "addq $0x6, %rbp" << std::endl;
  ss << "addq $0x7, %rsi" << std::endl;
  ss << "addq $0x8, %rdi" << std::endl;
  ss << "addq $0x9, %r8" << std::endl;
  ss << "addq $0xa, %r9" << std::endl;
  ss << "addq $0xb, %r10" << std::endl;
  ss << "addq $0xc, %r11" << std::endl;
  ss << "addq $0xd, %r12" << std::endl;
  ss << "addq $0xe, %r13" << std::endl;
  ss << "addq $0xf, %r14" << std::endl;
  ss << "addq $0x10, %r15" << std::endl;
  ss << "retq" << std::endl;

  ss >> c;

  // Setup the sandbox
  stoke::Sandbox sb;
  sb.set_abi_check(false);
  stoke::CpuState tc;

  sb.set_max_jumps(1);
  sb.insert_input(tc);

  // Run it
  sb.run({c, x64asm::RegSet::empty(), x64asm::RegSet::empty()});

  ASSERT_EQ(stoke::ErrorCode::NORMAL, sb.result_begin()->code);

  stoke::CpuState output = *sb.result_begin();

  for (int i = 0; i < 16; ++i) {
    ASSERT_EQ(1 + i, output.gp[i].get_fixed_quad(0));
  }


}


TEST(SandboxTest, RegisterValuesArePreserved) {

  x64asm::Code c;
  std::stringstream ss;

  // Here's the input program
  ss << "retq" << std::endl;

  ss >> c;

  // Setup the sandbox
  stoke::Sandbox sb;
  sb.set_abi_check(false);

  stoke::CpuState tc;
  stoke::StateGen sg(&sb);
  sg.get(tc);

  sb.set_max_jumps(1);
  sb.insert_input(tc);

  // Run it
  sb.run({c, x64asm::RegSet::empty(), x64asm::RegSet::empty()});

  ASSERT_EQ(stoke::ErrorCode::NORMAL, sb.result_begin()->code);

  stoke::CpuState output = *sb.result_begin();

  for (int i = 0; i < 16; ++i) {
    ASSERT_EQ(tc.gp[i].get_fixed_quad(0), output.gp[i].get_fixed_quad(0)) << " i = " << i;
  }


}





/* This test exists because the Sandbox used to throw a
   segfault if the code violates the ABI */
TEST(SandboxTest, ModifyingRbxWorks) {

  x64asm::Code c;
  std::stringstream ss;

  // Here's the input program
  ss << "incq %rcx" << std::endl;
  ss << "addq $0x8, %rbx" << std::endl;
  ss << "retq" << std::endl;

  ss >> c;

  // Setup the sandbox
  stoke::Sandbox sb;
  sb.set_abi_check(false);

  stoke::CpuState tc;

  sb.set_max_jumps(1);
  sb.insert_input(tc);

  // Run it
  sb.run({c, x64asm::RegSet::empty(), x64asm::RegSet::empty()});

  ASSERT_EQ(stoke::ErrorCode::NORMAL, sb.result_begin()->code);

  stoke::CpuState output = *sb.result_begin();

  ASSERT_EQ(1, output.gp[1].get_fixed_quad(0));
  ASSERT_EQ(8, output.gp[3].get_fixed_quad(0));


}


TEST(SandboxTest, ModifyingRbxFailsIfAbiEnforced) {

  x64asm::Code c;
  std::stringstream ss;

  // Here's the input program
  ss << "incq %rcx" << std::endl;
  ss << "addq $0x8, %rbx" << std::endl;
  ss << "retq" << std::endl;

  ss >> c;

  // Setup the sandbox; it's going to check abi.
  stoke::Sandbox sb;

  stoke::CpuState tc;

  sb.set_max_jumps(1);
  sb.insert_input(tc);

  // Run it
  sb.run({c, x64asm::RegSet::empty(), x64asm::RegSet::empty()});

  ASSERT_EQ(stoke::ErrorCode::SIGSEGV_, sb.result_begin()->code);
}


TEST(SandboxTest, RflagsRegistersArePreserved) {

  x64asm::Code c;
  std::stringstream ss;

  // Here's the input program
  ss << "cmovzl %ebp, %esp" << std::endl;
  ss << "retq" << std::endl;
  ss >> c;

  // Setup the sandbox and generate a random state
  stoke::Sandbox sb;

  stoke::CpuState tc;
  tc.rf.set(7, 1);
  //set rsp
  tc.gp[4].get_fixed_quad(0) = 0xfffaffe4;
  //set rbp
  tc.gp[5].get_fixed_quad(0) = 0x05001b;

  sb.set_max_jumps(2)
  .set_abi_check(false)
  .insert_input(tc);

  // Run it
  sb.run({c, x64asm::RegSet::universe(), x64asm::RegSet::universe()});

  // Check answers
  stoke::CpuState result = *sb.result_begin();
  EXPECT_EQ(tc.rf.is_set(0), result.rf.is_set(0));
  EXPECT_EQ(tc.rf.is_set(2), result.rf.is_set(2));
  EXPECT_EQ(tc.rf.is_set(4), result.rf.is_set(4));
  EXPECT_EQ(tc.rf.is_set(6), result.rf.is_set(6));
  EXPECT_EQ(tc.rf.is_set(7), result.rf.is_set(7));
  EXPECT_EQ(tc.rf.is_set(11), result.rf.is_set(11));

}


TEST(SandboxTest, NullDereferenceFails) {

  x64asm::Code c;
  std::stringstream ss;

  // Here's the input program
  ss << "incq %rcx" << std::endl;
  ss << "movq (%rax), %rcx" << std::endl;
  ss << "addq $0x8, %rdx" << std::endl;
  ss << "retq" << std::endl;

  ss >> c;

  // Setup the sandbox
  stoke::Sandbox sb;
  stoke::CpuState tc;

  sb.set_max_jumps(1);
  sb.insert_input(tc);

  // Run it
  sb.run({c, x64asm::RegSet::empty(), x64asm::RegSet::empty()});

  ASSERT_EQ(stoke::ErrorCode::SIGSEGV_, sb.result_begin()->code);


}


TEST(SandboxTest, DivideByZeroFails) {

  x64asm::Code c;
  std::stringstream ss;

  // Here's the input program
  ss << "divq %rcx" << std::endl;
  ss << "addq $0x8, %rdx" << std::endl;
  ss << "retq" << std::endl;

  ss >> c;

  // Setup the sandbox
  stoke::Sandbox sb;
  stoke::CpuState tc;

  sb.set_max_jumps(1);
  sb.insert_input(tc);

  // Run it
  sb.run({c, x64asm::RegSet::empty(), x64asm::RegSet::empty()});

  ASSERT_EQ(stoke::ErrorCode::SIGFPE_, sb.result_begin()->code);


}



TEST(SandboxTest, InfiniteLoopFails) {

  x64asm::Code c;
  std::stringstream ss;

  // Here's the input program
  ss << ".L1:" << std::endl;
  ss << "incq %rcx" << std::endl;
  ss << "jmpq .L1" << std::endl;
  ss << "retq" << std::endl;

  ss >> c;

  // Setup the sandbox
  stoke::Sandbox sb;
  stoke::CpuState tc;
  stoke::StateGen sg(&sb);
  sg.get(tc);

  sb.set_max_jumps(100);
  sb.insert_input(tc);

  // Run it
  sb.run({c, x64asm::RegSet::empty(), x64asm::RegSet::empty()});

  ASSERT_EQ(stoke::ErrorCode::SIGKILL_, sb.result_begin()->code);


}



TEST(SandboxTest, ShortLoopMaxIterationsOk) {

  x64asm::Code c;
  std::stringstream ss;

  // Here's the input program
  ss << "xorq %rcx, %rcx" << std::endl;
  ss << ".L1:" << std::endl;
  ss << "incq %rcx" << std::endl;
  ss << "cmpq $0x10, %rcx" << std::endl;
  ss << "jne .L1" << std::endl;
  ss << "retq" << std::endl;

  ss >> c;

  // Setup the sandbox
  stoke::Sandbox sb;
  stoke::CpuState tc;
  stoke::StateGen sg(&sb);
  sg.get(tc);

  sb.set_max_jumps(17);
  sb.insert_input(tc);
  sb.set_abi_check(false);

  // Run it
  sb.run({c, x64asm::RegSet::empty(), x64asm::RegSet::empty()});

  ASSERT_EQ(stoke::ErrorCode::NORMAL, sb.result_begin()->code);


}

TEST(SandboxTest, ShortLoopOneTooManyIterations) {

  x64asm::Code c;
  std::stringstream ss;

  // Here's the input program
  ss << "xorq %rcx, %rcx" << std::endl;
  ss << ".L1:" << std::endl;
  ss << "incq %rcx" << std::endl;
  ss << "cmpq $0x10, %rcx" << std::endl;
  ss << "jne .L1" << std::endl;
  ss << "retq" << std::endl;

  ss >> c;

  // Setup the sandbox
  stoke::Sandbox sb;
  stoke::CpuState tc;
  stoke::StateGen sg(&sb);
  sg.get(tc);

  sb.set_max_jumps(16);
  sb.insert_input(tc);
  sb.set_abi_check(false);

  // Run it
  sb.run({c, x64asm::RegSet::empty(), x64asm::RegSet::empty()});

  ASSERT_EQ(stoke::ErrorCode::SIGKILL_, sb.result_begin()->code);


}

TEST(SandboxTest, LahfSahfOkay) {
  x64asm::Code c;
  std::stringstream ss;

  // Here's the input program
  ss << "xorq %rax, %rax" << std::endl;
  ss << "lahf" << std::endl;
  ss << "sahf" << std::endl;
  ss << "retq" << std::endl;

  ss >> c;

  // Setup the sandbox
  stoke::Sandbox sb;
  stoke::CpuState tc;
  stoke::StateGen sg(&sb);
  sg.get(tc);

  sb.insert_input(tc);

  // Run it
  sb.run({c, x64asm::RegSet::empty(), x64asm::RegSet::empty()});
  ASSERT_EQ(stoke::ErrorCode::NORMAL, sb.result_begin()->code);
}

TEST(SandboxTest, UndefSymbolError) {
  x64asm::Code c;
  std::stringstream ss;

  // Here's the input program
  ss << "xorq %rax, %rax" << std::endl;
  ss << "callq .no_target" << std::endl;
  ss << "retq" << std::endl;

  ss >> c;

  // Setup the sandbox
  stoke::Sandbox sb;
  stoke::CpuState tc;
  sb.insert_input(tc);

  // Run it (we shouldn't ever actually run, so testcase doesn't matter)
  sb.run({c, x64asm::RegSet::empty(), x64asm::RegSet::empty()});
  ASSERT_EQ(stoke::ErrorCode::SIGBUS_, sb.result_begin()->code);
}

TEST(SandboxTest, Issue239) {
  x64asm::Code c;
  std::stringstream ss;

  // Here's the input program
  ss << "movl $0x3300, %esp" << std::endl;
  ss << "movl $0x81d1, %r14d" << std::endl;
  ss << "leaw 0x40(%rsp,%r14,1), %bx" << std::endl;
  ss << "retq" << std::endl;

  ss >> c;

  // Setup the sandbox
  stoke::Sandbox sb;
  stoke::CpuState tc;
  sb.set_abi_check(false);
  sb.insert_input(tc);

  // Run it (we shouldn't ever actually run, so testcase doesn't matter)
  sb.run({c, x64asm::RegSet::empty(), x64asm::RegSet::empty() + x64asm::bx});
  ASSERT_EQ(stoke::ErrorCode::NORMAL, sb.result_begin()->code);

  stoke::CpuState output = *sb.result_begin();

  ASSERT_EQ(0xb511, output.gp[x64asm::rbx].get_fixed_quad(0));


}
