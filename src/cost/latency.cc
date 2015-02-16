
#include <array>

#include "src/cost/latency.h"

using namespace std;

namespace {

array<stoke::Cost, 3976> latencies_ {{
#include "src/cost/tables/haswell_latency.h"
  }
};

} // namespace

namespace stoke {

LatencyCost::result_type LatencyCost::operator()(const Cfg& cfg, Cost max) {
  Cost latency = 0;

  const auto& code = cfg.get_code();
  for (auto b = ++cfg.reachable_begin(), be = cfg.reachable_end(); b != be; ++b) {
    if (cfg.is_exit(*b)) {
      continue;
    }

    Cost block_latency = 0;
    const auto first = cfg.get_index(Cfg::loc_type(*b, 0));
    for (size_t i = first, ie = first + cfg.num_instrs(*b); i < ie; ++i) {
      // Record latency for non nop instructions
      if (!code[i].is_nop()) {
        block_latency += latencies_[code[i].get_opcode()];
      }
    }

    // Increment latency by block latency scaled by nesting penalty
    // The call to pow() is expensive, so we hide it behind a faster check
    const auto nd = cfg.nesting_depth(*b);
    if (nd > 1) {
      latency += block_latency * pow(nesting_penalty_, cfg.nesting_depth(*b));
    } else {
      latency += block_latency;
    }

    if(latency >= max) {
      return result_type(true, max);
    }
  }

  return result_type(true, latency);
}

} //namespace stoke

