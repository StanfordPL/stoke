#ifndef STOKE_SRC_VERIFIER_VERIFIER_H
#define STOKE_SRC_VERIFIER_VERIFIER_H

#include <utility>

#include "src/cfg/cfg.h"
#include "src/sandbox/sandbox.h"
#include "src/state/cpu_state.h"
#include "src/verifier/fail_callback.h"
#include "src/verifier/pass_callback.h"
#include "src/verifier/strategy.h"

namespace stoke {

class Verifier {
	public:
		Verifier() : 
				strategy_(Strategy::REGRESSION), fail_{nullptr,0}, pass_{nullptr,0} { }

		Verifier& set_strategy(Strategy s) {
			strategy_ = s;
			return *this;
		}

		Verifier& set_fail_callback(FailCallback cb, void* arg) {
			fail_ = std::make_pair(cb, arg);
			return *this;
		}

		Verifier& set_pass_callback(PassCallback cb, void* arg) {
			pass_ = std::make_pair(cb, arg);
			return *this;
		}

		Verifier& set_sandbox(const Sandbox& sb) {
			sandbox_ = sb;
			return *this;
		}
			
		bool verify(const Cfg& target, const Cfg& rewrite);
		
		const CpuState& get_counter_example() const {
			return counter_example_;
		}

	private:
		Strategy strategy_;
		CpuState counter_example_;

		std::pair<FailCallback, void*> fail_;
		std::pair<PassCallback, void*> pass_;

		Sandbox sandbox_;

		bool regression(const Cfg& target, const Cfg& rewrite);
		bool formal(const Cfg& target, const Cfg& rewrite);
		bool random(const Cfg& target, const Cfg& rewrite);
};

} // namespace stoke

#endif
