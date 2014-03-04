#include "src/search/transforms.h"

using namespace std;
using namespace x64asm;

namespace stoke {

bool Transforms::modify(Cfg& cfg, Move type) {
	switch ( type ) {
		case Move::INSTRUCTION:
			return instruction_move(cfg);
		case Move::OPCODE:
			return opcode_move(cfg);
		case Move::OPERAND:
			return operand_move(cfg);
		case Move::RESIZE:
			return resize_move(cfg);
		case Move::LOCAL_SWAP:
			return local_swap_move(cfg);
		case Move::GLOBAL_SWAP:
			return global_swap_move(cfg);
		default:
			assert(false);
			return false;
	}
}

bool Transforms::instruction_move(Cfg& cfg) {
	auto& code = cfg.get_code();

	const auto bb = (gen_() % (cfg.num_blocks()-2)) + 1;
	if ( !cfg.is_reachable(bb) ) {
		return false;
	}

	const auto num_instrs = cfg.num_instrs(bb);
	if ( num_instrs == 0 ) {
		return false;
	}
	const auto idx = gen_() % num_instrs;

	instr_index_ = cfg.get_index({bb, idx});
	if ( is_control_opcode(code[instr_index_].get_opcode()) ) {
		return false;
	}
	old_instr_ = code[instr_index_];

	auto& instr = code[instr_index_];
	instr.set_opcode(get_control_free_or_nop());
	const auto& rs = cfg.def_ins({bb, idx});

	for ( size_t i = 0, ie = instr.arity(); i < ie; ++i ) {
		Operand o = instr.get_operand<R64>(i);
		if ( instr.maybe_read(i) ) {
			if ( !get_read_op(instr.get_opcode(), i, rs, o) ) {
				instr = old_instr_;
				return false;
			}
		} else {
			if ( !get_write_op(instr.get_opcode(), i, rs, o) ) {
				instr = old_instr_;
				return false;
			}
		}
		instr.set_operand(i, o);
	}
	cfg.recompute_defs();

	if ( !cfg.is_sound() ) {
		undo_instruction_move(cfg);
		return false;
	}
	return true;
}

bool Transforms::opcode_move(Cfg& cfg) {
	auto& code = cfg.get_code();

	const auto bb = (gen_() % (cfg.num_blocks()-2)) + 1;
	if ( !cfg.is_reachable(bb) ) {
		return false;
	}

	const auto num_instrs = cfg.num_instrs(bb);
	if ( num_instrs == 0 ) {
		return false;
	}
	instr_index_ = cfg.get_index({bb, gen_() % num_instrs});

	auto& instr = code[instr_index_];
	old_opcode_ = instr.get_opcode();
	if ( is_control_opcode(old_opcode_) ) {
		return false;
	}

	const auto o = get_control_free_type_equiv(old_opcode_);
	instr.set_opcode(o);
	cfg.recompute_defs();

	if ( !cfg.is_sound() ) {
		undo_opcode_move(cfg);
		return false;
	}
	return true;
}

bool Transforms::operand_move(Cfg& cfg) {
	auto& code = cfg.get_code();

	const auto bb = (gen_() % (cfg.num_blocks()-2)) + 1;
	if ( !cfg.is_reachable(bb) ) {
		return false;
	}

	const auto num_instrs = cfg.num_instrs(bb);
	if ( num_instrs == 0 ) {
		return false;
	}
	const auto idx = gen_() % num_instrs;

	instr_index_ = cfg.get_index({bb, idx});
	if ( code[instr_index_].arity() == 0 || is_control_opcode(code[instr_index_].get_opcode())) {
		return false;
	}

	auto& instr = code[instr_index_];
	operand_index_ = gen_() % instr.arity();
	old_operand_ = instr.get_operand<R64>(operand_index_);
	auto o = old_operand_;

	const auto& rs = cfg.def_ins({bb, idx});
	if ( instr.maybe_read(operand_index_) ) {
		if (!get_read_op(instr.get_opcode(), operand_index_, rs, o)) {
			return false;
		}
	} else {
		if (!get_write_op(instr.get_opcode(), operand_index_, rs, o) ) {
			return false;
		}
	}
	instr.set_operand(operand_index_, o);
	cfg.recompute_defs();

	if ( !cfg.is_sound() ) {
		undo_operand_move(cfg);
		return false;
	}
	return true;
}

bool Transforms::resize_move(Cfg& cfg) {
	auto& code = cfg.get_code();
  const auto start = gen_() % code.size();

	move_i_ = 0;
  for(size_t ie = code.size(); move_i_ < ie; ++move_i_) {
    if ( code[move_i_].is_nop() ) {
      goto found_a_nop; 
		}
	}
  return false;
	found_a_nop:

  move_j_ = gen_() % code.size();
	if ( move_i_ == move_j_ ) {
		return false;
	}

  move(code, move_i_, move_j_);
	cfg.recompute();

	return true;
}

bool Transforms::local_swap_move(Cfg& cfg) {
	auto& code = cfg.get_code();

	const auto bb = (gen_() % (cfg.num_blocks()-2)) + 1;
	if ( !cfg.is_reachable(bb) ) {
		return false;
	}
	const auto num_instrs = cfg.num_instrs(bb);
	if ( num_instrs < 2 ) {
		return false;
	}

	move_i_ = cfg.get_index({bb, gen_() % num_instrs});
	move_j_ = cfg.get_index({bb, gen_() % num_instrs});
	if ( move_i_ == move_j_ ) {
		return false;
	}

	auto& i = code[move_i_];
	if ( is_control_opcode(i.get_opcode()) ) {
		return false;
	}
	auto& j = code[move_j_];
	if ( is_control_opcode(j.get_opcode()) ) {
		return false;
	}

	swap(i, j);
	cfg.recompute_defs();

	if ( !cfg.is_sound() ) {
		undo_local_swap_move(cfg);
		return false;
	}
	return true;
}

bool Transforms::global_swap_move(Cfg& cfg) {
	auto& code = cfg.get_code();

	move_i_ = gen_() % code.size();
	move_j_ = gen_() % code.size();
	if ( move_i_ == move_j_ ) {
		return false;
	}

	auto& i = code[move_i_];
	if ( is_control_opcode(i.get_opcode()) ) {
		return false;
	}
	auto& j = code[move_j_];
	if ( is_control_opcode(j.get_opcode()) ) {
		return false;
	}

	swap(i, j);
	cfg.recompute_defs();

	if ( !cfg.is_sound() ) {
		undo_global_swap_move(cfg);
		return false;
	}
	return true;
}

void Transforms::undo(Cfg& cfg, Move type) {
	switch ( type ) {
		case Move::INSTRUCTION:
			undo_instruction_move(cfg);
			break;
		case Move::OPCODE:
			undo_opcode_move(cfg);
			break;
		case Move::OPERAND:
			undo_operand_move(cfg);
			break;
		case Move::RESIZE:
			undo_resize_move(cfg);
			break;
		case Move::LOCAL_SWAP:
			undo_local_swap_move(cfg);
			break;
		case Move::GLOBAL_SWAP:
			undo_global_swap_move(cfg);
			break;
		default:
			assert(false);
			break;
	}
}

bool Transforms::is_rh_opcode(x64asm::Opcode o) const {
  for ( size_t i = 0, ie = arity(o); i < ie; ++i ) {
    if ( type(o, i) == Type::RH ) {
      return true;
		}
	}
  return false;
}

bool Transforms::is_type_equiv(x64asm::Opcode o1, x64asm::Opcode o2) const {
	if ( arity(o1) != arity(o2) ) {
		return false;
	}
	for ( size_t i = 0, ie = arity(o1); i < ie; ++i ) {
		if ( type(o1, i) != type(o2, i) ) {
			return false;
		}
	}
	return true;
}

bool Transforms::get_write_op(x64asm::Opcode o, size_t idx, const x64asm::RegSet& rs, 
		x64asm::Operand& op) const {
	return false;
}

bool Transforms::get_read_op(x64asm::Opcode o, size_t idx, const x64asm::RegSet& rs, 
		x64asm::Operand& op) const {
	return false;
}

void Transforms::move(x64asm::Code& code, size_t i, size_t j) const {
	const auto temp = code[i];
	if ( i < j ) {
		for(size_t k = i; k < j; ++k) {
			code[k] = code[k+1];
		}
	} else {
		for(int k = i; k > (int)j; --k) {
			code[k] = code[k-1];
		}
	}
	code[j] = temp;
}

} // namespace stoke
