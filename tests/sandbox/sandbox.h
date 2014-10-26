
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

  for(int i = 0; i < 16; ++i) {
    ASSERT_EQ(1+i, output.gp[i].get_fixed_quad(0));
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

  for(int i = 0; i < 16; ++i) {
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

  sb.set_max_jumps(1000000000000000000);
  sb.insert_input(tc);

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

  sb.set_max_jumps(16);
  sb.insert_input(tc);

  // Run it
  sb.run({c, x64asm::RegSet::empty(), x64asm::RegSet::empty()});

  ASSERT_EQ(stoke::ErrorCode::SIGKILL_, sb.result_begin()->code);


}

