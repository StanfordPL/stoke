#include "src/ext/x64asm/include/x64asm.h"
#include "src/cfg/cfg.h"
#include "src/sandbox/sandbox.h"
#include "src/stategen/stategen.h"

class StateFixtureTest : public ::testing::Test {
	private:
		void SetUp() {
			stoke::Sandbox sb;
			sb.set_abi_check(true)
				.set_max_jumps(1024);

			x64asm::Code code{{x64asm::RET, {}}};
			x64asm::RegSet rs = x64asm::RegSet::empty();
			stoke::Cfg cfg(code, rs, rs);

			stoke::StateGen sg(&sb);
			sg.get(state_, cfg);
		}
	
	protected:
		stoke::CpuState state_;
};

// Checks whether write_bin and read_bin are inverses
TEST_F(StateFixtureTest, Issue55Bin) {
	std::stringstream ss;
	state_.write_bin(ss);

	stoke::CpuState result;
	result.read_bin(ss);

	ASSERT_EQ(state_,result);
}

// Checks whether write_text and read_text are inverses
TEST_F(StateFixtureTest, Issue55Text) {
	std::stringstream ss;
	state_.write_text(ss);

	stoke::CpuState result;
	result.read_text(ss);

	ASSERT_EQ(state_,result);
}
