#include <algorithm>
#include <set>

#include "src/cfg/cfg.h"

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;

namespace stoke {

void Cfg::recompute_blocks() {
	boundaries_.resize_for_bits(code_.size()+1);
	boundaries_.reset();
	boundaries_[0] = true;
	boundaries_[code_.size()] = true;

  for (size_t i = 0, ie = code_.size(); i < ie; ++i) {
    const auto& instr = code_[i];
    if (instr.is_label_defn()) {
      boundaries_[i] = true;
    } else if (instr.is_jump() || instr.is_return()) {
      boundaries_[i + 1] = true;
    }
  }

	blocks_.clear();
	for ( auto i = boundaries_.set_bit_index_begin(), ie = boundaries_.set_bit_index_end(); i != ie; ++i ) {
		blocks_.push_back(*i);
	}
}

void Cfg::recompute_labels() {
	labels_.clear();
  for (auto i = get_entry() + 1, ie = get_exit(); i < ie; ++i) {
    if (num_instrs(i) > 0) {
      const auto& instr = code_[blocks_[i]];
      if (instr.is_label_defn()) {
        labels_[instr.get_operand<Label>(0)] = i;
      }
    }
  }
}

void Cfg::recompute_succs() {
	succs_.resize(num_blocks());
	for ( auto& s : succs_ ) {
		s.clear();
	}

  for (auto i = get_entry(), ie = get_exit(); i < ie; ++i) {
    if (num_instrs(i) == 0) {
      succs_[i].push_back(i + 1);
			continue;
    } 
		
    const auto& instr = code_[blocks_[i + 1] - 1];
		if (instr.is_return()) {
      succs_[i].push_back(get_exit());
			continue;
		}

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
	for ( auto& p : preds_ ) {
		p.clear();
	}

  for (auto i = get_entry(), ie = get_exit(); i < ie; ++i) {
    for (auto s = succ_begin(i), se = succ_end(i); s != se; ++s) {
      preds_[*s].push_back(i);
    }
  }
}

// This produces a set which is defined over blocks, not entry or exit
void Cfg::recompute_reachable() {
	reachable_.resize_for_bits(code_.size()+1);
  reachable_.reset();

  for (reachable_stack_.push(get_entry()); !reachable_stack_.empty();) {
    const auto m = reachable_stack_.top();
    reachable_stack_.pop();
    for (auto s = succ_begin(m), se = succ_end(m); s != se; ++s) {
			if (!reachable_[*s]) {
				reachable_[*s] = true;
				reachable_stack_.push(*s);
			}
    }
  }

	reachable_[get_exit()] = false;
}

// This produces a function (dom()), which is defined over reachable blocks and entry/exit
void Cfg::recompute_dominators() {
	// Constants
  BitVector universe(num_blocks());
	universe.set();
	universe[get_exit()] = false;

	doms_.resize(num_blocks());

  // Bounary conditions
	doms_[get_entry()].resize_for_bits(num_blocks());
  doms_[get_entry()].reset();
	doms_[get_entry()][get_entry()] = true;
  // Initial conditions (note that we're assigning everything here)
	for ( size_t i = get_entry() + 1, ie = get_exit(); i < ie; ++i ) {
		doms_[i].resize_for_bits(num_blocks());
		doms_[i] = universe;
	}

  // Iterate until fixed point
  for (auto changed = true; changed;) {
    changed = false;

		for ( auto i = reachable_begin(), ie = reachable_end(); i != ie; ++i ) {
      auto new_out = universe;

      // Meet operator (it's okay that this touches unreachable, since they're universe)
      for (auto p = pred_begin(*i), pe = pred_end(*i); p != pe; ++p) {
				new_out &= doms_[*p];
      }
      // Transfer function
      new_out[*i] = true;

      changed |= (doms_[*i] != new_out);
      doms_[*i] = new_out;
    }
  }
}

void Cfg::recompute_back_edges() {
  loops_.clear();
  for (auto i = reachable_begin(), ie = reachable_end(); i != ie; ++i ) {
    for (auto s = succ_begin(*i), se = succ_end(*i); s != se; ++s) {
      if (dom(*s, *i)) {
        loops_[edge_type(*i, *s)] = BitVector(num_blocks());
      }
    }
  }
}

void Cfg::recompute_loops() {
  nesting_depth_.assign(num_blocks(), 0);

  for (auto& loop : loops_) {
		const auto& e = loop.first;
		auto& l = loop.second;

		l[e.first] = true;
		l[e.second] = true;

		if (e.first != e.second) {
			for (loops_stack_.push(e.first); !loops_stack_.empty();) {
				const auto m = loops_stack_.top();
				loops_stack_.pop();
				for (auto p = pred_begin(m), pe = pred_end(m); p != pe; ++p) {
					if (is_reachable(*p) && !l[*p] ) {
						l[*p] = true;
						loops_stack_.push(*p);
					}
				}
			}
		}

    for (auto i = l.set_bit_index_begin(), ie = l.set_bit_index_end(); i != ie; ++i) {
      nesting_depth_[*i]++;
    }
  }
}

void Cfg::recompute_defs() {
  // Compute gen and kill sets for blocks
  gen_.assign(num_blocks(), RegSet::empty());
  kill_.assign(num_blocks(), RegSet::empty());

  for (auto i = reachable_begin(), ie = reachable_end(); i != ie; ++i) {
    for (auto j = instr_begin(*i), je = instr_end(*i); j != je; ++j) {
      gen_[*i] |= j->must_write_set();
      gen_[*i] -= j->maybe_undef_set();
      kill_[*i] |= j->maybe_undef_set();
      kill_[*i] -= j->maybe_write_set();
    }
  }

  def_ins_.resize(code_.size(), RegSet::empty());
  def_outs_.resize(num_blocks(), RegSet::empty());

  // Boundary conditions -- MXCSR[rc] is always live in (this controls sse rounding)
  def_outs_[get_entry()] = fxn_def_ins_ + mxcsr_rc;
  // Initial conditions
  for (auto i = reachable_begin(), ie = reachable_end(); i != ie; ++i) {
    def_outs_[*i] = RegSet::universe();
  }

  // Iterate until fixed point
  for (auto changed = true; changed;) {
    changed = false;

    for (auto i = reachable_begin(), ie = reachable_end(); i != ie; ++i) {
      def_ins_[blocks_[*i]] = RegSet::universe();

      // Meet operator
      for (auto p = pred_begin(*i), pe = pred_end(*i); p != pe; ++p) {
        if (is_reachable(*p)) {
          def_ins_[blocks_[*i]] &= def_outs_[*p];
        }
      }
      // Transfer function
      const auto new_out = (def_ins_[blocks_[*i]] - kill_[*i]) | gen_[*i];

      changed |= def_outs_[*i] != new_out;
      def_outs_[*i] = new_out;
    }
  }

  for (auto i = reachable_begin(), ie = reachable_end(); i != ie; ++i) {
    for (size_t j = 1, je = num_instrs(*i); j < je; ++j) {
      const auto idx = get_index(loc_type(*i, j));
      const auto& instr = code_[idx - 1];
      def_ins_[idx] = def_ins_[idx - 1];
      def_ins_[idx] |= instr.must_write_set();
      def_ins_[idx] -= instr.maybe_undef_set();
    }
  }
}

void Cfg::recompute_liveness() {
  live_outs_.resize(code_.size(), RegSet::empty());
  live_ins_.resize(num_blocks(), RegSet::empty());
  gen_.resize(num_blocks(), RegSet::empty());
  kill_.resize(num_blocks(), RegSet::empty());

  // Compute gen/kill sets for blocks
  for (auto i = reachable_begin(), ie = reachable_end(); i != ie; ++i) {
    for (auto j = instr_rbegin(*i), je = instr_rend(*i); j != je; ++j) {
      const auto use = j->maybe_read_set();
      const auto def = j->maybe_write_set() | j->maybe_undef_set();

      kill_[*i] |= def;
      kill_[*i] -= use;
      gen_[*i] -= def;
      gen_[*i] |= use;
    }
  }

  // Boundary conditions
  live_ins_[get_exit()] = fxn_live_outs_;
  // Initial conditions
  for (auto i = reachable_begin(), ie = reachable_end(); i != ie; ++i) {
    live_ins_[*i] = RegSet::empty();
  }

  // Iterate until fixed point
  for (auto changed = true; changed;) {
    changed = false;

    for (auto i = reachable_begin(), ie = reachable_end(); i != ie; ++i) {
      live_outs_[blocks_[*i]] = RegSet::empty();

      // Meet operator
      for (auto s = succ_begin(*i), se = succ_end(*i); s != se; ++s) {
        if (is_reachable(*s)) {
          live_outs_[blocks_[*i]] |= live_ins_[*s];
        }
      }
      // Transfer function
      auto new_in = live_outs_[blocks_[*i]] - kill_[*i];
      new_in |= gen_[*i];

      changed |= live_ins_[*i] != new_in;
      live_ins_[*i] = new_in;
    }
  }

  // Compute live outs
  for (auto i = reachable_begin(), ie = reachable_end(); i != ie; ++i) {
    for (int j = num_instrs(*i) - 2; j >= 0; --j) {
      const auto idx = get_index(loc_type(*i, j));
      const auto& instr = code_[idx + 1];
      def_ins_[idx] = def_ins_[idx + 1];
      def_ins_[idx] -= instr.maybe_write_set();
      def_ins_[idx] -= instr.maybe_undef_set();
      def_ins_[idx] |= instr.maybe_read_set();
    }
  }
}

Cfg::loc_type Cfg::get_loc(size_t idx) const {
  assert(idx < code_.size());
  for (int i = num_blocks() - 1; i >= 0; --i)
    if (idx >= blocks_[i]) {
      return loc_type(i, idx - blocks_[i]);
    }

  assert(false);
  return loc_type(0, 0);
}

bool Cfg::performs_undef_read() const {
  for (auto i = reachable_begin(), ie = reachable_end(); i != ie; ++i) {
    for (size_t j = 0, je = num_instrs(*i); j < je; ++j) {
      const auto idx = get_index(loc_type(*i, j));
      const auto r = code_[idx].maybe_read_set();
      const auto di = def_ins(idx);

      if ((r & di) != r) {
        return true;
      }
    }
  }
  return false;
}

Cfg& Cfg::remove_unreachable() {
  x64asm::Code temp;
  for (auto b = reachable_begin(), be = reachable_end(); b != be; ++b) {
    for (auto i = instr_begin(*b), ie = instr_end(*b); i != ie; ++i) {
      temp.push_back(*i);
    }
  }
  code_ = temp;
  recompute();

  return *this;
}

Cfg& Cfg::remove_nop() {
  x64asm::Code temp;
  for (auto b = get_entry(), be = get_exit(); b != be; ++b) {
    for (auto i = instr_begin(b), ie = instr_end(b); i != ie; ++i) {
      if (!i->is_nop()) {
        temp.push_back(*i);
      }
    }
  }
  code_ = temp;
  recompute();

  return *this;
}

void Cfg::write(std::ostream& os, bool dib, bool dii, bool lob, bool loi, bool dom) const {
  os << "digraph g {" << endl;
  os << "colorscheme = blues6" << endl;

  write_entry(os, dib, lob);
  write_exit(os, dib, lob);
  write_blocks(os, dib, dii, lob, loi, dom);
  write_edges(os);

  os << "}";
}

void Cfg::write_blocks(ostream& os, bool dib, bool dii, bool lob, bool loi, bool dom) const {
  map<size_t, vector<id_type>> nestings;
  for (size_t i = get_entry() + 1, ie = get_exit(); i < ie; ++i) {
    nestings[nesting_depth(i)].push_back(i);
  }

  for (const auto& n : nestings) {
    os << "subgraph cluster_" << n.first << " {" << endl;
    os << "style = filled" << endl;
    os << "color = " << (n.first + 1) << endl;

    for (const auto bb : n.second) {
      os << "bb" << bb << "[";
      os << "shape=record, style=filled, fillcolor=white, ";
      if (!is_reachable(bb)) {
        os << "color = grey, ";
      }
      os << "label=\"{";
      os << "#" << bb;
			if (dom && is_reachable(bb)) {
				os << "|dominates: ";
				write_dominators(os, bb);
			}
      if (dib && is_reachable(bb)) {
        os << "|def-in: ";
        write_reg_set(os, def_ins(bb));
      }
      for (size_t j = 0, je = num_instrs(bb); j < je; ++j) {
        auto loc = loc_type {bb, j};

        if (dii && is_reachable(bb)) {
          os << "|def-in: ";
          write_reg_set(os, def_ins(loc));
        }

        os << "|";
        os << get_instr(loc);
        os << "\\l";

        if (loi && is_reachable(bb)) {
          os << "|live-out: ";
          write_reg_set(os, live_outs(loc));
        }
      }
      if (lob && is_reachable(bb)) {
        os << "|live-out: ";
        write_reg_set(os, live_outs(bb));
      }
      os << "}\"];" << endl;
    }
  }
  for (size_t i = 0, ie = nestings.size(); i < ie; ++i) {
    os << "}" << endl;
  }
}

void Cfg::write_dominators(ostream& os, id_type bb) const {
	os << "\\{";
	for ( auto i = reachable_begin(), ie = reachable_end(); i != ie; ++i ) {
		if (dom(bb, *i) ) {
			os << " #" << *i;
		}
	}
	if (dom(bb, get_exit())) {
		os << " EXIT";
	}
	os << " \\}";
}

void Cfg::write_entry(ostream& os, bool dib, bool lob) const {
  os << "bb" << get_entry() << " [";
  os << "shape=record  ";
  os << "label=\"{ENTRY";
  if (dib) {
    os << "|def-in: ";
    write_reg_set(os, fxn_def_ins_);
  }
  os << "}\"];" << endl;
}

void Cfg::write_exit(ostream& os, bool dib, bool lob) const {
  os << "bb" << get_exit()  << " [";
  os << "shape=record ";
  os << "label=\"{EXIT";
  if (lob) {
    os << "|live-out: ";
    write_reg_set(os, fxn_live_outs_);
  }
  os << "}\"];" << endl;
}

void Cfg::write_edges(ostream& os) const {
  for (size_t i = get_entry(), ie = get_exit(); i < ie; ++i)
    for (auto s = succ_begin(i), se = succ_end(i); s != se; ++s) {
      os << "bb" << i << "->bb" << *s << " [";
      os << "style=";
      if (has_fallthrough_target(i) && fallthrough_target(i) == *s) {
        os << "bold";
      } else {
        os << "dashed";
      }
      os << " color=";
      if (is_back_edge(edge_type(i, *s))) {
        os << "red";
      } else if (is_reachable(i) || is_entry(i)) {
        os << "black";
      } else {
        os << "grey";
      }
      os << "];" << endl;
    }
}

void Cfg::write_reg_set(ostream& os, const RegSet& rs) const {
  os << "\\{";
  for (auto i = 0; i < 16; ++i) {
    if (rs.contains(r64s[i])) {
      os << " " << r64s[i];
    } else if (rs.contains(r32s[i])) {
      os << " " << r32s[i];
    } else if (rs.contains(r16s[i])) {
      os << " " << r16s[i];
    } else if (i < 4) {
      if (rs.contains(rls[i])) {
        os << " " << rls[i];
      } else if (rs.contains(rhs[i])) {
        os << " " << rhs[i];
      }
    } else if (rs.contains(rbs[i - 4])) {
      os << " " << rbs[i - 4];
    }
  }

  for (auto i = 0; i < 16; ++i)
    if (rs.contains(ymms[i])) {
      os << " " << ymms[i];
    } else if (rs.contains(xmms[i])) {
      os << " " << xmms[i];
    }

  os << " \\}";
}

} // namespace x64
