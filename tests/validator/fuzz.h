
#include "src/ext/x64asm/include/x64asm.h"

class ValidatorFuzzTest : public ValidatorTest { };

/** This test is vicious.  It picks random instructions, random states, runs
 * the validator on it, runs the sandbox on it, and compares the results.
 * While it's for testing the validator handlers, it implicitly also tests a
 * ton of other functionality. */
TEST_F(ValidatorFuzzTest, RandomInstructionRandomState) {

  // Initialize handler, solver, transforms, stategen, etc.
  const size_t iterations = 10;

  stoke::ComboHandler ch;
  stoke::Z3Solver z3;

  stoke::Transforms t;
  std::stringstream flags;
  flags << "{ popcnt sse sse2 ssse3 sse4 avx }";
  x64asm::FlagSet flag_set = x64asm::FlagSet::empty();
  flags >> flag_set;

  t.set_opcode_pool(flag_set, 0, false, false, {}, {})
  .set_operand_pool({}, x64asm::RegSet::empty());

  t.insert_immediate(x64asm::Imm64(0x00));
  t.insert_immediate(x64asm::Imm64(0x01));
  t.insert_immediate(x64asm::Imm64(0x64));
  t.insert_immediate(x64asm::Imm64(0x7f));
  t.insert_immediate(x64asm::Imm64(0x80));
  t.insert_immediate(x64asm::Imm64(0xc0));
  t.insert_immediate(x64asm::Imm64(0xff));
  t.insert_immediate(x64asm::Imm64(0x7fff));
  t.insert_immediate(x64asm::Imm64(0x8000));
  t.insert_immediate(x64asm::Imm64(0xc0de));
  t.insert_immediate(x64asm::Imm64(0xffff));
  t.insert_immediate(x64asm::Imm64(0x7fffffff));
  t.insert_immediate(x64asm::Imm64(0x80000000));
  t.insert_immediate(x64asm::Imm64(0xc0decafe));
  t.insert_immediate(x64asm::Imm64(0xffffffff));
  t.insert_immediate(x64asm::Imm64(0x7fffffffffffffff));
  t.insert_immediate(x64asm::Imm64(0x8000000000000000));
  t.insert_immediate(x64asm::Imm64(0xc0decafec0decafe));
  t.insert_immediate(x64asm::Imm64(0xffffffffffffffff));

  stoke::Sandbox sb;
  stoke::StateGen sg(&sb);



  for(size_t i = 0; i < iterations; ++i) {
    // Build an instruction and CFG at random
    x64asm::Instruction ins({x64asm::LAHF});
    stoke::Cfg pre_cfg({{ins}, x64asm::RegSet::universe(), x64asm::RegSet::empty()});

    bool found = false;
    for(size_t j = 0; j < 20; ++j) {
      if (t.instruction_move(pre_cfg)) {
        found = true;
        break;
      }
    }
    if(!found)
      continue;

    ins = pre_cfg.get_code()[0];
    stoke::Cfg cfg({{ins}, ins.maybe_read_set(), ins.must_write_set()});

    std::cout << "[          ]  " << ins << std::endl;

    // Make sure we support this instruction
    if(ch.get_support(ins) == stoke::Handler::NONE)
      continue;

    // Build a state at random, if possible
    stoke::CpuState cs;
    if(!sg.get(cs, cfg))
      continue;

    // Build a circuit for this instruction
    std::vector<stoke::SymBool> constraints;

    stoke::SymState state(cs);
    stoke::SymState end("FINAL");

    ch.build_circuit(ins, state);

    for(auto it : state.constraints)
      constraints.push_back(it);
    for(auto it : state.equality_constraints(end))
      constraints.push_back(it);

    bool b = z3.is_sat(constraints);
    EXPECT_TRUE(b) << "StateGen worked, but could not find end state";

    // Solve for the final state
    stoke::CpuState validator_final(z3, "_FINAL");

    // Use the sandbox to compute a final state
    sb.insert_input(cs);
    sb.run(cfg);

    stoke::CpuState sandbox_final = *sb.get_result(0);

    // Compare the final states
    EXPECT_EQ(sandbox_final, validator_final);
  }

}

