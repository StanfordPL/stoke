#include <algorithm>
#include <stack>
#include <unordered_set>

#include "src/cfg/cfg.h"

using namespace std;
using namespace stoke;
using namespace x64asm;

namespace stoke {

void Cfg::recompute_blocks() {
	// Record block boundaries
	unordered_set<size_t> boundaries {0, code_.size()};
	for ( size_t i = 0, ie = code_.size(); i < ie; ++i ) {
		const auto& instr = code_[i];
		if ( instr.is_label_defn() ) {
			boundaries.insert(i);
		} else if ( instr.is_jump() || instr.is_return() ) {
			boundaries.insert(i+1);
		}
	}

	// Rebuild blocks (this includes sentinels at either end for entry/exit)
	blocks_.clear();
	blocks_.push_back(0);
	blocks_.insert(blocks_.end(), boundaries.begin(), boundaries.end());
	blocks_.push_back(code_.size());

	// Index label locations
	map<Label, size_t> labels;
	for ( auto i = get_entry() + 1, ie = get_exit(); i < ie; ++i ) {
		if ( num_instrs(i) > 0 ) {
			const auto& instr = code_[blocks_[i]];
			if ( instr.is_label_defn() ) {
				labels[instr.get_operand<Label>(0)] = i;
			}
		}
	}

	// Successors
	// 1. Empty blocks point forward (this handles ENTRY)
	// 2. Unconditional jumps have non-trivial fallthrough targets.
	// 3. Returns point to exit
	// 4. Everything else has a fallthrough and a possible conditional target.
	succs_.resize(num_blocks());
	for ( auto i = get_entry(), ie = get_exit(); i < ie; ++i ) {
		succs_[i].clear();

		const auto& instr = code_[blocks_[i+1]-1];
		if ( num_instrs(i) == 0 ) {
			succs_[i].push_back(i+1);
		}
		else if ( instr.is_uncond_jump() ) {
			succs_[i].push_back(labels[instr.get_operand<Label>(0)]);
		}
		else if ( instr.is_return() ) {
			succs_[i].push_back(get_exit());
		}
		else {
			succs_[i].push_back(i+1);			
			if ( instr.is_cond_jump() )
				succs_[i].push_back(labels[instr.get_operand<Label>(0)]);
		}
	}

	// Predecessors (this is easy now that we've done successors)
	preds_.resize(num_blocks());
	for ( auto i = get_entry(), ie = get_exit(); i < ie; ++i ) {
		preds_[i].clear();
		for ( auto s = succ_begin(i), se = succ_end(i); s != se; ++s ) {
			preds_[*s].push_back(i);
		}
	}
}

void Cfg::recompute_dominators() {
	assert(num_blocks() < 256);
	doms_.resize(num_blocks());

	// Bounary conditions
	doms_[get_entry()].reset();
	doms_[get_entry()].set(get_entry());

	// Initial conditions
	for ( auto i = get_entry()+1, ie = get_exit(); i <= ie; ++i )
		doms_[i].set();

	// Iterate until fixed point 
	for ( auto changed = true; changed; ) {
		changed = false;

		for ( auto i = get_entry()+1, ie = get_exit(); i <= ie; ++i ) {
			bitset<256> new_out;
			new_out.set();

			// Meet operator
			for ( auto p = pred_begin(i), pe = pred_end(i); p != pe; ++p ) {
				new_out &= doms_[*p];
			}
			// Transfer function
			new_out.set(i);

			changed |= doms_[i] != new_out;
			doms_[i] = new_out;
		}
	}
}

void Cfg::recompute_reachable() {
	reachable_.clear();

	stack<id_type> r;
	for ( r.push(get_entry()); !r.empty(); ) {
		const auto m = r.top();
		r.pop();
		for ( auto s = succ_begin(m), se = succ_end(m); s != se; ++s ) {
			if ( !is_exit(*s) && reachable_.insert(*s).second ) {
				r.push(*s);
			}
		}
	}
}

void Cfg::recompute_loops() {
	back_edges_.clear();
	for ( auto i = reachable_.begin(), ie = reachable_.end(); i != ie; ++i ) {
		for ( auto s = succ_begin(*i), se = succ_end(*i); s != se; ++s ) {
			if ( dom(*s, *i) ) {
				back_edges_.push_back(make_pair(*i, *s));
			}
		}
	}

	loops_.clear();
	nesting_depth_.resize(num_blocks());
	nesting_depth_.assign(num_blocks(), 0);

	for ( const auto& e : back_edges_ ) {
		if ( e.first == e.second ) {
			loops_[e].insert(e.first);
			nesting_depth_[e.first]++;
			continue;
		}

		loop_type& l = loops_[e];
		l.insert(e.second);
		l.insert(e.first);

		stack<id_type> s;
		for ( s.push(e.first); !s.empty(); ) {
			const auto m = s.top();
			s.pop();
			for ( auto p = pred_begin(m), pe = pred_end(m); p != pe; ++p ) {
				if ( is_reachable(*p) && *p != e.second && l.insert(*p).second ) {
					s.push(*p);
				}
			}
		}

		for ( const auto bb : l ) {
			nesting_depth_[bb]++;
		}
	}
}

void Cfg::recompute_defs() {
	def_ins_.resize(code_.size(), RegSet::empty());
	def_outs_.resize(num_blocks(), RegSet::empty());
	gen_.resize(num_blocks(), RegSet::empty());
	kill_.resize(num_blocks(), RegSet::empty());

	// Compute gen sets for blocks
	for ( auto i = reachable_begin(), ie = reachable_end(); i != ie; ++i ) {
		for ( auto j = instr_begin(*i), je = instr_end(*i); j != je; ++j ) {
			gen_[*i] |= j->must_write_set();
			gen_[*i] -= j->maybe_undef_set();
			kill_[*i] |= j->maybe_undef_set();
			kill_[*i] -= j->maybe_write_set();
		}
	}

	// Boundary conditions -- MXCSR[rc] is always live in (this controls sse rounding)
	def_outs_[get_entry()] = fxn_def_ins_ + mxcsr_rc; 
	// Initial conditions
	for ( auto i = reachable_begin(), ie = reachable_end(); i != ie; ++i ) {
		def_outs_[*i] = RegSet::universe();
	}

	// Iterate until fixed point
	for ( auto changed = true; changed; ) {
		changed = false;

	for ( auto i = reachable_begin(), ie = reachable_end(); i != ie; ++i ) {
		def_ins_[blocks_[*i]] = RegSet::universe();

		// Meet operator
		for ( auto p = pred_begin(*i), pe = pred_end(*i); p != pe; ++p ) {
			if ( is_reachable(*p) ) {
				def_ins_[blocks_[*i]] &= def_outs_[*p];
			}
		}
		// Transfer function
		auto new_out = def_ins_[blocks_[*i]] - kill_[*i];
		new_out |= gen_[*i];

		changed |= def_outs_[*i] != new_out;
		def_outs_[*i] = new_out;
	}
	}

	// Compute def ins
	for ( auto i = reachable_begin(), ie = reachable_end(); i != ie; ++i ) {
		for ( size_t j = 1, je = num_instrs(*i); j < je; ++j ) {
			const auto idx = get_index(loc_type(*i,j)); 
			const auto& instr = code_[idx-1];
			def_ins_[idx] = def_ins_[idx-1];
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
	for ( auto i = reachable_begin(), ie = reachable_end(); i != ie; ++i ) {
		for ( auto j = instr_rbegin(*i), je = instr_rend(*i); j != je; ++j ) {
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
	for ( auto i = reachable_begin(), ie = reachable_end(); i != ie; ++i ) {
		live_ins_[*i] = RegSet::empty();
	}

	// Iterate until fixed point
	for ( auto changed = true; changed; ) {
		changed = false;

		for ( auto i = reachable_begin(), ie = reachable_end(); i != ie; ++i ) {
			live_outs_[blocks_[*i]] = RegSet::empty();

			// Meet operator
			for ( auto s = succ_begin(*i), se = succ_end(*i); s != se; ++s ) {
				if ( is_reachable(*s) ) {
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
	for ( auto i = reachable_begin(), ie = reachable_end(); i != ie; ++i ) {
		for ( size_t j = num_instrs(*i)-2; j >= 0; --j ) {
			const auto idx = get_index(loc_type(*i,j)); 
			const auto& instr = code_[idx+1];
			def_ins_[idx] = def_ins_[idx+1];
			def_ins_[idx] -= instr.maybe_write_set();
			def_ins_[idx] -= instr.maybe_undef_set();
			def_ins_[idx] |= instr.maybe_read_set();
		}
	}
}

Cfg::loc_type Cfg::get_loc(size_t idx) const {
	assert(idx < code_.size());
	for ( int i = num_blocks()-1; i >= 0; --i )
		if ( idx >= blocks_[i] )
			return loc_type(i, idx - blocks_[i]);

	assert(false);
	return loc_type(0,0);
}

bool Cfg::performs_undef_read() const {
	for ( auto i = reachable_begin(), ie = reachable_end(); i != ie; ++i ) {
		for ( size_t j = 0, je = num_instrs(*i); j < je; ++j ) {
			const auto idx = get_index(loc_type(*i,j));
			const auto r = code_[idx].maybe_read_set();
			const auto di = def_ins(idx);

			if ( (r & di) != r ) {
				return true;
			}
		}
	}
	return false;
}

Cfg& Cfg::remove_unreachable() {
	x64asm::Code temp;
	for ( auto b = reachable_begin(), be = reachable_end(); b != be; ++b ) {
		for ( auto i = instr_begin(*b), ie = instr_end(*b); i != ie; ++i ) {
			temp.push_back(*i);
		}
	}
	code_ = temp;
	recompute();

	return *this;
}

Cfg& Cfg::remove_nop() {
	x64asm::Code temp;
	for ( auto b = get_entry(), be = get_exit(); b != be; ++b ) {
		for ( auto i = instr_begin(b), ie = instr_end(b); i != ie; ++i ) {
			if ( !i->is_nop() ) {
				temp.push_back(*i);
			}
		}
	}
	code_ = temp;
	recompute();

	return *this;
}

void Cfg::write(std::ostream& os, bool dib, bool dii, bool lob, bool loi) const {
	os << "digraph g {" << endl;
	os << "colorscheme = blues6" << endl;

	write_entry(os, dib, lob);
	write_exit(os, dib, lob);
	write_blocks(os, dib, dii, lob, loi);
	write_edges(os);

	os << "}";
}

void Cfg::write_blocks(ostream& os, bool dib, bool dii, bool lob, bool loi) const {
	map<size_t, vector<id_type>> nestings;
	for ( size_t i = get_entry()+1, ie = get_exit(); i < ie; ++i )
		nestings[nesting_depth(i)].push_back(i);

	for ( const auto& n : nestings ) {
		os << "subgraph cluster_" << n.first << " {" << endl;
		os << "style = filled" << endl;
		os << "color = " << (n.first+1) << endl;

		for ( const auto bb : n.second ) {
			os << "bb" << bb << "[";
			os << "shape=record, style=filled, fillcolor=white, ";
			if ( !is_reachable(bb) )
				os << "color = grey, ";
			os << "label=\"{";
			os << "#" << bb; 
			if ( dib ) {
				os << "|def-in:";
				write_reg_set(os, def_ins(bb));
			}
			os << "|";
			for ( size_t j = 0, je = num_instrs(bb); j < je; ++j ) {
				auto loc = loc_type{bb,j};
				
				if ( dii ) {
					os << "|def-in:";
					write_reg_set(os, def_ins(loc));
				}

				os << "|";
				os << get_instr(loc);
				os << "\\l";

				if ( loi ) {
					os << "|live-out:";
					write_reg_set(os, live_outs(loc));
				}
			}
			if ( lob ) {
				os << "|live-out:";
				write_reg_set(os, live_outs(bb));
			}
			os << "}\"];" << endl;
		}
	}
	for ( size_t i = 0, ie = nestings.size(); i < ie; ++i )
		os << "}" << endl;
}

void Cfg::write_entry(ostream& os, bool dib, bool lob) const {
	os << "bb" << get_entry() << " [";
	os << "shape=record  ";
	os << "label=\"{ENTRY";
	if ( dib ) {
		os << "|def-in: ";
		write_reg_set(os, fxn_def_ins_);
	}
	os << "}\"];" << endl;
}

void Cfg::write_exit(ostream& os, bool dib, bool lob) const {
	os << "bb" << get_exit()  << " [";
	os << "shape=record ";
 	os << "label=\"{EXIT";
	if ( lob ) {
		os << "|live-out: ";
		write_reg_set(os, fxn_live_outs_);
	}
	os << "}\"];" << endl;
}

void Cfg::write_edges(ostream& os) const {
	for ( size_t i = get_entry(), ie = get_exit(); i < ie; ++i ) 
		for ( auto s = succ_begin(i), se = succ_end(i); s != se; ++s ) {
			os << "bb" << i << "->bb" << *s << " [";
			os << "style="; 
			if ( has_fallthrough_target(i) && get_fallthrough_target(i) == *s )
				os << "bold";
			else
				os << "dashed";
			os << " color=";
			if ( find(back_edge_begin(), back_edge_end(), edge_type(i,*s)) != back_edge_end() )
				os << "red";
			else if ( is_reachable(i) || is_entry(i) )
				os << "black";
			else
				os << "grey";
			os << "];" << endl;
		}
}

void Cfg::write_reg_set(ostream& os, const RegSet& rs) const {
	os << "\\{";
	for ( auto i = 0; i < 16; ++i ) {
		if ( rs.contains(r64s[i]) )
			os << " " << r64s[i];
		else if ( rs.contains(r32s[i]) )
			os << " " << r32s[i];
		else if ( rs.contains(r16s[i]) )
			os << " " << r16s[i];
		else if ( i < 4 ) {
			if ( rs.contains(rls[i]) )
				os << " " << rls[i];
			else if ( rs.contains(rhs[i]) )
				os << " " << rhs[i];
		}
		else if ( rs.contains(rbs[i-4]) )
			os << " " << rbs[i-4];
	}

	for ( auto i = 0; i < 16; ++i ) 
		if ( rs.contains(ymms[i]) )
			os << " " << ymms[i];
		else if ( rs.contains(xmms[i]) )
			os << " " << xmms[i];

	os << " \\}";
}

} // namespace x64
