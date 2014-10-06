
#include <sstream>
#include <cstdlib>
#include <time.h>

#include "src/ext/x64asm/include/x64asm.h"
#include "src/stategen/stategen.h"
#include "src/cfg/cfg.h"

TEST(StateGenTest, Issue44) {

  time_t seed;
  time(&seed);
  srand((unsigned int)seed);
  std::cout << "seed = " << seed << std::endl;
  // Build example
  std::stringstream ss;
  ss << "movq $0x4eb4b0, (%rdi)" << std::endl;
  ss << "movq $0x0, 0x10(%rdi) " << std::endl;
  ss << "movq $0x0, 0x18(%rdi) " << std::endl;
  ss << "movl $0x0, 0x8(%rdi)  " << std::endl;

  x64asm::Code c;
  ss >> c;

  // Run stategen
  stoke::Cfg cfg_t(c, x64asm::RegSet::universe(), x64asm::RegSet::empty());
  stoke::StateGen sg;
  sg.set_max_attempts(10)
    .set_max_memory(1000)
    .set_max_jumps(2);

  stoke::CpuState tc;
  ASSERT_TRUE(sg.get(tc, cfg_t)) << "Failed with seed = " << seed;

}
