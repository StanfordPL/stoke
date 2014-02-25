#ifndef STOKE_SRC_COST_COST_FUNCTION_H
#define STOKE_SRC_COST_COST_FUNCTION_H

#include <cassert>
#include <stdint.h>

#include <vector>

#include "src/ext/x64asm/include/x64asm.h"

#include "src/cfg/cfg.h"
#include "src/cost/cost.h"
#include "src/cost/distance.h"
#include "src/cost/performance_term.h"
#include "src/cost/reduction.h"
#include "src/sandbox/sandbox.h"
#include "src/state/cpu_state.h"
#include "src/state/memory.h"
#include "src/state/regs.h"

namespace stoke {

class CostFunction {
	public:
		typedef std::pair<bool, Cost> result_type;

		static constexpr auto max_cost = (Cost)(0x1ul << 62);
		static constexpr auto max_error_cost = (Cost)(0x1ul << 32);
		static constexpr auto max_testcase_cost = (Cost)(0x1l << 42);

		CostFunction(Sandbox* sb) : sandbox_(sb) { 
			set_distance(Distance::HAMMING);
			set_target({{{x64asm::RET}}, x64asm::RegSet::empty(), x64asm::RegSet::empty()});
			set_sse_width(1);
			set_sse_count(1);
			set_live_out(x64asm::RegSet::empty());
			set_stack_out(false);
			set_heap_out(false);
			set_relax_reg(false);
			set_relax_mem(false);
			set_misalign_penalty(1);
			set_min_ulp(0);
			set_reduction(Reduction::SUM);

			set_performance_term(PerformanceTerm::NONE);
			set_nesting_weight(1);
		}

		CostFunction& set_distance(Distance d) {
			distance_ = d;
			return *this;
		}

		CostFunction& set_target(const Cfg& target);

		CostFunction& set_sse_width(size_t bytes) {
			sse_width_ = bytes;
			return *this;
		}

		CostFunction& set_sse_count(size_t count) {
			sse_count_ = count;
			return *this;
		}

		CostFunction& set_live_out(const x64asm::RegSet& lo) {
			live_out_ = lo;
			return *this;
		}

		CostFunction& set_stack_out(bool so) {
			stack_out_ = so;
			return *this;
		}

		CostFunction& set_heap_out(bool ho) {
			heap_out_ = ho;
			return *this;
		}

		CostFunction& set_relax_reg(bool r) {
			relax_reg_ = r;
			return *this;
		}

		CostFunction& set_relax_mem(bool r) {
			relax_mem_ = r;
			return *this;
		}

		CostFunction& set_misalign_penalty(Cost mp) {
			misalign_penalty_ = mp;
			return *this;
		}

		CostFunction& set_min_ulp(Cost mu) {
			min_ulp_ = mu;
			return *this;
		}

		CostFunction& set_reduction(Reduction r) {
			reduction_ = r;
			return *this;
		}

		CostFunction& set_performance_term(PerformanceTerm t) {
			pterm_ = t;
			return *this;
		}

		CostFunction& set_nesting_weight(Cost nw) {
			nesting_weight_ = nw;
			return *this;
		}

		result_type operator()(const Cfg& cfg, Cost max = max_cost) {
			auto cost = evaluate_correctness(cfg, max);
			const auto correct = cost == 0;

			if ( cost < max && pterm_ != PerformanceTerm::NONE ) {
				cost += evaluate_performance(cfg, max);
			}

			assert(cost <= max_cost);
			return result_type(correct, cost);
		}

	private:
		Distance distance_;
		Sandbox* sandbox_;
		std::vector<CpuState> reference_out_;
		size_t sse_width_;
		size_t sse_count_;
		x64asm::RegSet live_out_;
		bool stack_out_;
		bool heap_out_;
		bool relax_reg_;
		bool relax_mem_;
		Cost misalign_penalty_;
		Cost min_ulp_;
		Reduction reduction_;

		PerformanceTerm pterm_;
		Cost nesting_weight_;

		std::vector<x64asm::R64> target_gp_out_;
		std::vector<x64asm::Xmm> target_sse_out_;
		std::vector<x64asm::R64> rewrite_gp_out_;
		std::vector<x64asm::Xmm> rewrite_sse_out_;

		void recompute_defs(const x64asm::RegSet& rs, std::vector<x64asm::R64>& gp_out,
				std::vector<x64asm::Xmm>& sse_out);

		Cost evaluate_correctness(const Cfg& cfg, Cost max);
		Cost correctness_max(const Cfg& cfg, Cost max);
		Cost correctness_sum(const Cfg& cfg, Cost max);
		Cost error(const CpuState& t, const CpuState& r) const;
		Cost gp_error(const Regs& t, const Regs& r) const;
		Cost sse_error(const Regs& t, const Regs& r) const;
		Cost mem_error(const Memory& t, const Memory& r) const;
		Cost distance(uint64_t t, uint64_t r) const;

		Cost evaluate_performance(const Cfg& cfg, Cost max);
		Cost size(const Cfg& cfg) const;
		Cost latency(const Cfg& cfg) const;
};

} // namespace stoke

#endif
