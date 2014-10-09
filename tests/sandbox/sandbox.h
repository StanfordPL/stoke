
#include "src/ext/x64asm/src/reg_set.h"
#include "src/state/cpu_state.h"
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
  stoke::CpuState tc;

  sb.set_max_jumps(1);
  sb.insert_input(tc);

  // Run it
  sb.run({c, x64asm::RegSet::empty(), x64asm::RegSet::empty()});

  ASSERT_EQ(stoke::ErrorCode::NORMAL, sb.result_begin()->code);


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
  ss << ".L1:" << std::endl;
  ss << "incq %rcx" << std::endl;
  ss << "cmpq $0x10, %rcx" << std::endl;
  ss << "jne .L1" << std::endl;
  ss << "retq" << std::endl;

  ss >> c;

  // Setup the sandbox
  stoke::Sandbox sb;
  stoke::CpuState tc;

  sb.set_max_jumps(17);
  sb.insert_input(tc);

  // Run it
  sb.run({c, x64asm::RegSet::empty(), x64asm::RegSet::empty()});

  ASSERT_EQ(stoke::ErrorCode::NORMAL, sb.result_begin()->code);


}

TEST(SandboxTest, ShortLoopOneTooManyIterations) {

  x64asm::Code c;
  std::stringstream ss;

  // Here's the input program
  ss << ".L1:" << std::endl;
  ss << "incq %rcx" << std::endl;
  ss << "cmpq $0x10, %rcx" << std::endl;
  ss << "jne .L1" << std::endl;
  ss << "retq" << std::endl;

  ss >> c;

  // Setup the sandbox
  stoke::Sandbox sb;
  stoke::CpuState tc;

  sb.set_max_jumps(16);
  sb.insert_input(tc);

  // Run it
  sb.run({c, x64asm::RegSet::empty(), x64asm::RegSet::empty()});

  ASSERT_EQ(stoke::ErrorCode::SIGKILL_, sb.result_begin()->code);


}

