#include "src/cfg/cfg_transforms.h"

using namespace x64asm;

namespace stoke {

void CfgTransforms::remove_unreachable(Cfg& cfg) {
  Code temp;
  for (auto b = cfg.reachable_begin(), be = cfg.reachable_end(); b != be; ++b) {
    for (auto i = cfg.instr_begin(*b), ie = cfg.instr_end(*b); i != ie; ++i) {
      temp.push_back(*i);
    }
  }

  cfg.get_code() = temp;
  cfg.recompute();
}

void CfgTransforms::remove_nop(Cfg& cfg) {
  Code temp;
  for (auto b = cfg.get_entry(), be = cfg.get_exit(); b != be; ++b) {
    for (auto i = cfg.instr_begin(b), ie = cfg.instr_end(b); i != ie; ++i) {
      if (!i->is_nop()) {
        temp.push_back(*i);
      }
    }
  }

  cfg.get_code() = temp;
  cfg.recompute();
}

} // namespace stoke
