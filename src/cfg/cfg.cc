// Copyright 2013-2016 Stanford University
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#include "src/cfg/cfg.h"

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;

namespace stoke {

Assembler Cfg::assembler_ = Assembler();
Function Cfg::buffer_ = Function();

Cfg::loc_type Cfg::get_loc(size_t idx) const {
  assert(idx < get_code().size());
  for (auto i = get_exit() - 1; i > get_entry(); --i)
    if (idx >= blocks_[i]) {
      return loc_type(i, idx - blocks_[i]);
    }

  assert(false);
  return loc_type(0, 0);
}

bool Cfg::invariant_no_undef_reads() const {
  // NOTE: if this method changes, then which_undef_read must be adapted accordingly!

  // No need to check the entry; this will consider the exit, but it will be a nop.
  for (auto i = ++reachable_begin(), ie = reachable_end(); i != ie; ++i) {
    for (size_t j = 0, je = num_instrs(*i); j < je; ++j) {
      const auto idx = get_index({*i, j});
      const auto r = maybe_read_set(get_code()[idx]);
      const auto di = def_ins_[idx];

      if (!di.contains(r)) {
        return false;
      }
    }
  }

  return true;
}

bool Cfg::invariant_no_undef_live_outs() const {
  // NOTE: if this method changes, then which_undef_read must be adapted accordingly!
  const auto di_end = def_ins_[blocks_[get_exit()]];
  return di_end.contains(fxn_live_outs_);
}

bool Cfg::invariant_can_assemble() const {
  bool need_check = false;
  auto code = get_code();
  for (auto instr : code) {
    Opcode op = instr.get_opcode();
    if (label32_transform(op) != op) {
      need_check = true;
      break;
    }
  }

  if (!need_check)
    return true;

  buffer_.clear();
  buffer_.reserve(code.size()*32);
  return assembler_.assemble(buffer_, code);
}

string Cfg::which_undef_read() const {
  // NOTE: if this method changes, then performs_undef_read must be adapted accordingly!
  assert(performs_undef_read());

  ostringstream ss;
  bool empty = true;

  // No need to check the entry; this will consider the exit, but it will be a nop.
  for (auto i = ++reachable_begin(), ie = reachable_end(); i != ie; ++i) {
    for (size_t j = 0, je = num_instrs(*i); j < je; ++j) {
      const auto idx = get_index({*i, j});
      const auto r = maybe_read_set(get_code()[idx]);
      const auto di = def_ins_[idx];

      if (!di.contains(r)) {
        ss << (empty ? "" : ". ") << "Instruction '" << get_code()[idx] << "' reads " << r << " but only " << di << " are defined.";
        empty = false;
        return ss.str();
      }
    }
  }

  // Check that the live outs are all defined
  // i.e. every life_out is also def in at the end
  const auto di_end = def_ins_[blocks_[get_exit()]];
  if (!di_end.contains(fxn_live_outs_)) {
    ss << (empty ? "" : ". ") << "At the end, " << fxn_live_outs_ << " should be defined, but only " << di_end << " are.";
    empty = false;
  }

  assert(!empty);
  return ss.str();
}

void Cfg::recompute_blocks() {
  blocks_.clear();

  boundaries_.resize_for_bits(get_code().size() + 1);
  boundaries_.reset();

  // We know a-priori that these are boundaries
  boundaries_[0] = true;
  boundaries_[get_code().size()] = true;

  // Labels define the beginning of blocks; jumps and returns define the ends. */
  for (size_t i = 0, ie = get_code().size(); i < ie; ++i) {
    // make every instruction its own basic block.
    boundaries_[i] = true;
    /*
    const auto& instr = get_code()[i];
    if (instr.is_label_defn()) {
      boundaries_[i] = true;
    } else if (instr.is_jump() || instr.is_return()) {
      boundaries_[i + 1] = true;
    }
    */
  }

  // Add sentinels for entry and exit blocks along with boundaries
  blocks_.push_back(0);
  for (auto i = boundaries_.set_bit_index_begin(), ie = boundaries_.set_bit_index_end(); i != ie;
       ++i) {
    blocks_.push_back(*i);
  }
  blocks_.push_back(get_code().size());
}

void Cfg::recompute_labels() {
  labels_.clear();
  for (auto i = get_entry() + 1, ie = get_exit(); i < ie; ++i) {
    if (num_instrs(i) > 0) {
      const auto& instr = get_code()[get_index({i, 0})];
      if (instr.is_label_defn()) {
        labels_[instr.get_operand<Label>(0)] = i;
      }
    }
  }
}

void Cfg::recompute_succs() {
  succs_.resize(num_blocks());
  for (auto& s : succs_) {
    s.clear();
  }

  for (auto i = get_entry(), ie = get_exit(); i < ie; ++i) {
    // Control passes from empty blocks to the next.
    if (num_instrs(i) == 0) {
      succs_[i].push_back(i + 1);
      continue;
    }
    // Control passes from return statements to the exit.
    const auto& instr = get_code()[get_index({i, num_instrs(i) - 1})];
    if (instr.is_return()) {
      succs_[i].push_back(get_exit());
      continue;
    }
    // Conditional jump targets are always listed second in succs_.
    const auto itr = labels_.find(instr.get_operand<Label>(0));
    const auto dest = itr == labels_.end() ? get_exit() : itr->second;
    if (instr.is_uncond_jump()) {
      succs_[i].push_back(dest);
    } else {
      succs_[i].push_back(i + 1);
      if (instr.is_cond_jump()) {
        succs_[i].push_back(dest);
      }
    }
  }
}

void Cfg::recompute_preds() {
  preds_.resize(num_blocks());
  for (auto& p : preds_) {
    p.clear();
  }

  for (auto i = get_entry(), ie = get_exit(); i < ie; ++i) {
    for (auto s = succ_begin(i), se = succ_end(i); s != se; ++s) {
      preds_[*s].push_back(i);
    }
  }
}

void Cfg::recompute_reachable() {
  reachable_.resize_for_bits(num_blocks());
  reachable_.reset();

  work_list_.clear();

  work_list_.push_back(get_entry());
  reachable_[get_entry()] = true;

  for (size_t i = 0; i < work_list_.size(); ++i) {
    const auto next = work_list_[i];
    for (auto s = succ_begin(next), se = succ_end(next); s != se; ++s) {
      if (!reachable_[*s]) {
        reachable_[*s] = true;
        work_list_.push_back(*s);
      }
    }
  }
}

void Cfg::recompute_defs_gen_kill() {
  gen_.assign(num_blocks(), RegSet::empty());
  kill_.assign(num_blocks(), RegSet::empty());

  // No sense in checking the entry; we'll consider the exit, but it'll be a nop.
  for (auto i = ++reachable_begin(), ie = reachable_end(); i != ie; ++i) {
    for (auto j = instr_begin(*i), je = instr_end(*i); j != je; ++j) {
      gen_[*i] |= must_write_set(*j);
      gen_[*i] -= maybe_undef_set(*j);

      kill_[*i] |= maybe_undef_set(*j);
      kill_[*i] -= maybe_write_set(*j);
    }
  }
}
void Cfg::recompute_defs() {
  recompute_defs_gen_kill();

  // Need a little extra room for def_ins_[get_exit()]
  // You'll notice that this function uses blocks_[...] instead of get_index(...)
  // This is to subvert the assertion we'd blow for trying to call get_index(get_exit(),0)

  def_ins_.resize(get_code().size() + 1, RegSet::empty());
  def_outs_.resize(num_blocks(), RegSet::empty());

  // Boundary conditions
  def_outs_[get_entry()] = fxn_def_ins_;

  // Initial conditions
  for (auto i = ++reachable_begin(), ie = reachable_end(); i != ie; ++i) {
    def_outs_[*i] = RegSet::universe();
  }

  // Iterate until fixed point
  for (auto changed = true; changed;) {
    changed = false;

    for (auto i = ++reachable_begin(), ie = reachable_end(); i != ie; ++i) {
      // Meet operator
      def_ins_[blocks_[*i]] = RegSet::universe();
      for (auto p = pred_begin(*i), pe = pred_end(*i); p != pe; ++p) {
        if (is_reachable(*p)) {
          def_ins_[blocks_[*i]] &= def_outs_[*p];
        }
      }
      // Transfer function
      const auto new_out = (def_ins_[blocks_[*i]] - kill_[*i]) | gen_[*i];

      // Check for fixed point
      changed |= def_outs_[*i] != new_out;
      def_outs_[*i] = new_out;
    }
  }

  // Compute dataflow values for each instruction
  for (auto i = ++reachable_begin(), ie = reachable_end(); i != ie; ++i) {
    for (size_t j = 1, je = num_instrs(*i); j < je; ++j) {
      const auto idx = blocks_[*i] + j;
      def_ins_[idx] = def_ins_[idx - 1];

      const auto& instr = get_code()[idx - 1];
      def_ins_[idx] |= must_write_set(instr);
      def_ins_[idx] -= maybe_undef_set(instr);
    }
  }
}

void Cfg::recompute_liveness() {
  recompute_liveness_use_kill();

  // IMPORTANT NOTE: both vectors indexed by code size
  live_ins_.assign(get_code().size() + 1, RegSet::empty());
  live_outs_.assign(get_code().size() + 1, RegSet::empty());

  // If we ever encounter an indirect jump, we need to assume that everything
  // which we ever use (i.e. read) becomes live-out at that point.  So, let's
  // get the set of stuff we *ever* read.
  RegSet ever_read = fxn_live_outs_;

  // Note: maybe_read_set doesn't work for call, which
  // is why I need this loop.
  for (auto it : get_code()) {
    if (it.is_call()) {
      ever_read |= maybe_read_set(it);
    } else if (it.is_any_call()) {
      // we don't support this.
      // abort is a mean, evil way.
      std::cerr << "Instruction " << it << " not supported by liveness."
                << " @ " << __FILE__ << ":" << __LINE__ << endl;
      exit(1);
    } else {
      ever_read |= maybe_read_set(it);
    }

  }


  // Initial Conditions
  for (auto i = reachable_begin(), ie = reachable_end();
       i != ie; ++i) {

    if (num_instrs(*i) == 0) {
      continue;
    }

    // Set the live-in of each block to the empty set.
    live_ins_[blocks_[*i]] = RegSet::empty();

    // Set the live-out of each block to the empty set.  this requires
    // looking up the index of the last instruction in the block.  Except if
    // we have an indirect jump, in which case we need to add in everything
    // (see the note above)
    size_t last_instr_index = blocks_[*i] + num_instrs(*i) - 1;
    Instruction last_instr = get_code()[last_instr_index];
    if (last_instr.is_any_indirect_jump()) {
      live_outs_[last_instr_index] = ever_read;
    } else {
      live_outs_[last_instr_index] = RegSet::empty();
    }
  }
  live_ins_[blocks_[get_exit()]] = fxn_live_outs_;

  // Fixedpoint algorithm
  for (auto changed = true; changed;) {
    changed = false;

    for (auto i = reachable_begin(), ie = reachable_end();
         i != ie; ++i) {
      //iterate through all blocks except the exit
      if (num_instrs(*i) == 0) {
        continue;
      }

      // Meet operator.  Starting with the empty-set, union in the live-ins
      // from the first statement of every successor block.  Like before, we
      // need to check for indirect jumps here to see if we need to add in
      // all the registers ever read.
      size_t last_instr_index = blocks_[*i] + num_instrs(*i) - 1;
      Instruction last_instr = get_code()[last_instr_index];
      if (last_instr.is_any_indirect_jump()) {
        live_outs_[last_instr_index] = ever_read;
      } else {
        live_outs_[last_instr_index] = RegSet::empty();
      }

      for (auto s = succ_begin(*i), si = succ_end(*i); s != si; ++s) {
        if (is_reachable(*s)) {
          live_outs_[last_instr_index] |= live_ins_[blocks_[*s]];
        }
      }

      // Transfer function.
      // Take the live outs at the end of the block, remove the
      // kill set, and union in the use set.
      const auto new_in =
        (live_outs_[blocks_[*i] + num_instrs(*i) - 1] - liveness_kill_[*i]) |
        liveness_use_[*i];

      changed |= live_ins_[blocks_[*i]] != new_in;
#ifdef DEBUG_CFG_LIVENESS
      if (changed) {
        cout << "block " << *i << " from " << live_ins_[blocks_[*i]] << " --> " << new_in << endl;
        cout << "   " << "live out: " << live_outs_[blocks_[*i] + num_instrs(*i) - 1] << endl;
        cout << "   " << "kill: " << liveness_kill_[*i] << endl;
        cout << "   " << "use:  " << liveness_use_[*i] << endl;
      }
#endif
      live_ins_[blocks_[*i]] = new_in;
    }
  }

  // Compute dataflow values for each instruction
  for (auto i = reachable_begin(), ie = reachable_end(); i != ie; ++i) {
    //iterate through all blocks w/ at least 2 instructions
    if (num_instrs(*i) < 2) {
      continue;
    }

    // Go from the second-to-last instruction to the first
    // Update the live outs for each
    for (int j = num_instrs(*i) - 2; j >= 0; --j) {
      const auto idx = blocks_[*i] + j;
      live_outs_[idx] = live_outs_[idx + 1];

      const auto& instr = get_code()[idx + 1];
      live_outs_[idx] -= must_write_set(instr);
      live_outs_[idx] -= must_undef_set(instr);
      live_outs_[idx] |= maybe_read_set(instr);

      live_ins_[idx + 1] = live_outs_[idx];
    }
  }

}


void Cfg::recompute_liveness_use_kill() {
  liveness_use_.assign(num_blocks(), RegSet::empty());
  liveness_kill_.assign(num_blocks(), RegSet::empty());

  // No sense in checking the entry; we'll consider the exit, but it'll be a nop.
  for (auto i = reachable_begin(), ie = reachable_end(); i != ie; ++i) {
    for (auto j = instr_begin(*i), je = instr_end(*i); j != je; ++j) {

      /*      if(j->is_call()) {
              liveness_use_[*i] |= (RegSet::linux_call_parameters() - liveness_kill_[*i]);
              liveness_kill_[*i] |= RegSet::linux_call_scratch();

            } else {*/
      liveness_use_[*i] |= (maybe_read_set(*j) - liveness_kill_[*i]);

      liveness_kill_[*i] |= must_undef_set(*j);
      liveness_kill_[*i] |= must_write_set(*j);
      //      }
    }
  }
}

} // namespace x64
