#include "src/state/cpu_state.h"

using namespace std;

namespace stoke {

ostream& CpuState::write(ostream& os) const {
	const char* gps[] = {
		"%rax", "%rcx", "%rdx", "%rbx", "%rsp", "%rbp", "%rsi", "%rdi",
		"%r8", "%r9", "%r10", "%r11", "%r12", "%r13", "%r14", "%r15"
	};
	const char* sses[] = {
		"%ymm0", "%ymm1", "%ymm2", "%ymm3", "%ymm4", "%ymm5", "%ymm6", "%ymm7",
		"%ymm8", "%ymm9", "%ymm10", "%ymm11", "%ymm12", "%ymm13", "%ymm14", "%ymm15"
	};
	gp.write(os, gps, 5);
	os << endl;
	sse.write(os, sses, 3);
	os << endl;
	stack.write(os);
	os << endl << endl;
	heap.write(os);
	os << endl << endl;

	return os;
}

} // namespace stoke
