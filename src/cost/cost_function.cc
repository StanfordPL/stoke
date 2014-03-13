#include <cmath>

#include <algorithm>
#include <array>
#include <limits>

#include "src/ext/cpputil/include/bits/bit_manip.h"

#include "src/cost/cost_function.h"

using namespace cpputil;
using namespace std;
using namespace x64asm;

namespace {

array<stoke::Cost, 3976> latencies_ {{
	#include "src/cost/tables/haswell_latency.h"
}};

} // namespace

namespace stoke {

CostFunction& CostFunction::set_target(const Cfg& target, bool stack_out, bool heap_out) {
	assert(sandbox_ != nullptr);

	live_out_ = target.live_outs();
	stack_out_ = stack_out;
	heap_out_ = heap_out;

	reference_out_.clear();
	recompute_defs(target.live_outs(), target_gp_out_, target_sse_out_);

	sandbox_->run(target);
	for ( auto i = sandbox_->result_begin(), ie = sandbox_->result_end(); i != ie; ++i ) {
		reference_out_.push_back(*i);
	}
	return *this;
}

void CostFunction::recompute_defs(const RegSet& rs, vector<R64>& gp_out, vector<Xmm>& sse_out) {
	gp_out.clear();
	for ( const auto& r : r64s )
		if ( rs.contains(r) )
			gp_out.push_back(r);

	sse_out.clear();
	for ( const auto& s : xmms )
		if ( rs.contains(s) )
			sse_out.push_back(s);
}

Cost CostFunction::evaluate_correctness(const Cfg& cfg, Cost max) {
	recompute_defs(cfg.live_outs(), rewrite_gp_out_, rewrite_sse_out_);
	switch ( reduction_ ) {
		case Reduction::MAX:
			return correctness_max(cfg, max);
		case Reduction::SUM:
			return correctness_sum(cfg, max);
		default:
			assert(false);
			return 0;
	}
}

Cost CostFunction::correctness_max(const Cfg& cfg, Cost max) {
  Cost res = 0;
	sandbox_->compile(cfg);
	auto t = reference_out_.begin();

	for ( size_t i = 0, ie = sandbox_->size(); res < max && i < ie; ++i, ++t ) {
		sandbox_->run_one(i);
		const auto r = sandbox_->result(i);

		res = std::max(res, error(*t, *r));
		assert(res <= max_testcase_cost);
	}

	return res;
} 

Cost CostFunction::correctness_sum(const Cfg& cfg, Cost max) {
	Cost res = 0;
	sandbox_->compile(cfg);
	auto t = reference_out_.begin();

	for ( size_t i = 0, ie = sandbox_->size(); res < max && i < ie; ++i, ++t ) {
		sandbox_->run_one(i);
		const auto r = sandbox_->result(i);

		const auto err = error(*t, *r);
		assert(err <= max_testcase_cost);

		res += err;
	}

	return res;
} 

Cost CostFunction::error(const CpuState& t, const CpuState& r) const {
	if ( t.code != r.code ) {
		return sig_penalty_;
	}

	Cost cost = 0;
	cost += gp_error(t.gp, r.gp);
	cost += sse_error(t.sse, r.sse);
	if ( stack_out_ ) {
		cost += mem_error(t.stack, r.stack);
	}
	if ( heap_out_ ) {
		cost += mem_error(t.heap, r.heap);
	}

	return cost;
}

Cost CostFunction::gp_error(const Regs& t, const Regs& r) const {
	Cost cost = 0;

	for ( const auto& r_t : target_gp_out_ ) {
		auto delta = max_error_cost;
		const auto val_t = t[r_t].get_fixed_quad(0);	

		for ( const auto& r_r : rewrite_gp_out_ ) {
			if ( r_t != r_r && !relax_reg_ ) {
				continue;
			}
			
			const auto val_r = r[r_r].get_fixed_quad(0);
			const auto eval = distance(val_t, val_r) + (r_t == r_r) ? 0 : misalign_penalty_;

			delta = min(delta, eval);
		}
		cost += delta;
	}

	return cost;
}

Cost CostFunction::sse_error(const Regs& t, const Regs& r) const {
	Cost cost = 0;

	for ( size_t i = 0; i < sse_count_; ++i ) {
		for ( const auto& s_t : target_sse_out_ ) {
			auto delta = max_error_cost;
			auto val_t = 0;
			switch ( sse_width_ ) {
				case 1: val_t = t[s_t].get_fixed_byte(i);
								break;
				case 2: val_t = t[s_t].get_fixed_word(i);
								break;
				case 4: val_t = t[s_t].get_fixed_double(i);
								break;
				case 8: val_t = t[s_t].get_fixed_quad(i);
								break;
				default: assert(false);
								 break;
			}

			for ( const auto& s_r : rewrite_sse_out_ ) {
				if ( s_t != s_r && !relax_reg_ ) {
					continue;
				}

				auto val_r = 0;
				switch ( sse_width_ ) {
					case 1: val_r = r[s_r].get_fixed_byte(i);
									break;
					case 2: val_r = r[s_r].get_fixed_word(i);
									break;
					case 4: val_r = r[s_r].get_fixed_double(i);
									break;
					case 8: val_r = r[s_r].get_fixed_quad(i);
									break;
					default: assert(false);
									 break;
				}
				const auto eval = distance(val_t, val_r) + (s_t == s_r) ? 0 : misalign_penalty_;
				delta = min(delta, eval);
			}
			cost += delta;
		}
	}

	return cost;
}

Cost CostFunction::mem_error(const Memory& t, const Memory& r) const {
	Cost cost = 0;

	for ( auto i = t.defined_begin(), ie = t.defined_end(); i != ie; ++i ) {
		if ( relax_mem_ ) {
			Cost delta = max_error_cost;
			for ( auto j = r.defined_begin(), je = r.defined_end(); j != je; ++j ) {
				delta = min(delta, distance(t[*i], r[*j]));
			}
			cost += delta;
		} else if ( r.is_defined(*i) ) {
			cost += distance(t[*i], r[*i]);
		} else {
			cost += max_error_cost;
		}
	}

	return cost;
}

Cost CostFunction::distance(uint64_t x, uint64_t y) const {
	if ( distance_ == Distance::HAMMING ) {
		return BitManip<uint64_t>::pop_count(x ^ y);
	} else {
		auto t = *((int64_t*)&x);
		t = t < 0 ? numeric_limits<int64_t>::min() - t : t;

		auto r = *((int64_t*)&y);
		r = r < 0 ? numeric_limits<int64_t>::min() - r : r;

		uint64_t ulp = t >= r ? t - r : r - t;
		ulp = ulp < min_ulp_ ? 0 : ulp - min_ulp_;
		ulp = ulp > max_error_cost ? max_error_cost : ulp;
	}
}

Cost CostFunction::evaluate_performance(const Cfg& cfg, Cost max) {
	switch ( pterm_ ) {
		case PerformanceTerm::SIZE:
			return size(cfg);
		case PerformanceTerm::LATENCY:
			return latency(cfg);
		default:
			assert(false);
			return 0;
	}
}

Cost CostFunction::size(const Cfg& cfg) const {
	Cost size = 0;

  const auto& code = cfg.get_code();
	for ( auto b = cfg.reachable_begin(), be = cfg.reachable_end(); b != be; ++b ) {
		const auto first = cfg.get_index(Cfg::loc_type(*b,0));
		for ( size_t i = first, ie = first + cfg.num_instrs(*b); i < ie; ++i ) {
		  if ( !code[i].is_nop() ) {
			  size++;
			}
    }
	}

	return size;
}

Cost CostFunction::latency(const Cfg& cfg) const {
	Cost latency = 0;

  const auto& code = cfg.get_code();
	for ( auto b = cfg.reachable_begin(), be = cfg.reachable_end(); b != be; ++b ) {
		Cost block_latency = 0;

		const auto first = cfg.get_index(Cfg::loc_type(*b,0));
		for ( size_t i = first, ie = first + cfg.num_instrs(*b); i < ie; ++i ) {
			block_latency += latencies_[code[i].get_opcode()];
    }

		latency += block_latency * pow(nesting_penalty_, cfg.nesting_depth(*b));
	}

	return latency;
}

} // namespace stoke
