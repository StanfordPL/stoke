
#include <set>
#include <sys/time.h>

#include "src/ext/x64asm/include/x64asm.h"

class ValidatorFuzzTest : public ValidatorTest { };

/** This test is vicious.  It picks random instructions, random states, runs
 * the validator on it, runs the sandbox on it, and compares the results.
 * While it's for testing the validator handlers, it implicitly also tests a
 * ton of other functionality. */
TEST_F(ValidatorFuzzTest, RandomInstructionRandomState) {

  struct timeval tv;
  gettimeofday(&tv, NULL);
  uint64_t seed = (uint64_t)tv.tv_usec;

  // Generate a random seed
  std::cout << "[----------] * Seed " << seed << std::endl;

  // Parameters for the test
  unsigned long iterations = 100;
  const char * iterations_str = getenv("TEST_VALIDATOR_FUZZ_COUNT");
  if(iterations_str != NULL)
    iterations = strtol(iterations_str, NULL, 10);
  if(iterations == 0)
    iterations == 100;

  const size_t min_success = iterations/4;
  size_t success = 0;  //counts number of iterations tested

  // Initialize handler, solver, transforms, stategen, etc.
  stoke::ComboHandler ch;
  stoke::Z3Solver z3;

  stoke::Transforms t;
  std::stringstream flags;
  flags << "{ popcnt sse sse2 ssse3 sse4 avx }";
  x64asm::FlagSet flag_set = x64asm::FlagSet::empty();
  flags >> flag_set;

  std::set<x64asm::Opcode> blacklist;
  blacklist.insert(x64asm::ENTER_IMM8_IMM16);
  blacklist.insert(x64asm::ENTER_ONE_IMM16);
  blacklist.insert(x64asm::ENTER_ZERO_IMM16);

  t.set_opcode_pool(flag_set, 0, 0, false, false, blacklist, {})
  .set_operand_pool({}, x64asm::RegSet::empty())
  .set_seed(seed);

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

  x64asm::RegSet supported_regs = (x64asm::RegSet::all_gps() | x64asm::RegSet::all_ymms()) +
                                  x64asm::eflags_cf + x64asm::eflags_of + x64asm::eflags_pf +
                                  x64asm::eflags_zf + x64asm::eflags_sf;

  for(size_t i = 0; i < iterations; ++i) {

    stoke::Sandbox sb;
    sb.set_abi_check(false)
    .set_max_jumps(1);

    stoke::StateGen sg(&sb);
    sg.set_max_memory(1024)
    .set_max_attempts(40);

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
    x64asm::RegSet liveouts = (ins.must_write_set() - ins.maybe_undef_set()) & supported_regs;

    stoke::Cfg cfg({{ins, x64asm::Instruction({x64asm::RET})}, ins.maybe_read_set(), liveouts});

    std::cout << "[----------] * " << ins << std::endl;

    // Make sure we support this instruction
    if(ch.get_support(ins) == stoke::Handler::NONE) {
      std::cout << "[----------]   - No validator support" << std::endl;
      continue;
    }

    // Build a state at random, if possible
    stoke::CpuState cs;
    if(!sg.get(cs, cfg)) {
      std::cout << "[----------]   - Could not generate state: " << sg.get_error() << std::endl;
      continue;
    }

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
    EXPECT_TRUE(b) << "Circuit not satisfiable";
    EXPECT_FALSE(z3.has_error()) << "Z3 encountered: " << z3.get_error();
    if(!b)
      continue;

    if (!z3.has_model()) {
      std::cout << "[----------]   - SMT solver could not produce model" << std::endl;
      continue;
    }

    // Solve for the final state and counterexample
    stoke::CpuState validator_final(z3, "_FINAL");

    // Use the sandbox to compute a final state
    sb.insert_input(cs);
    sb.run(cfg);

    stoke::CpuState sandbox_final = *sb.get_result(0);

    // Compare the final states
    std::stringstream ss;
    ss << "Counterexample:" << std::endl;
    ss << cs << std::endl;
    ss << "Validator and sandbox disagree on output.";
    expect_cpustate_eq(sandbox_final, validator_final, liveouts,
                       ss.str());

    // If we did the comparison, then we performed the test right
    success++;
  }

  // Make sure we supported enough of the instructions
  EXPECT_GE(success, min_success);

}

