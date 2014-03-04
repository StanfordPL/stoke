#ifndef STOKE_SRC_SEARCH_TRANSFORMS_H
#define STOKE_SRC_SEARCH_TRANSFORMS_H

#include <random>

#include "src/ext/x64asm/include/x64asm.h"

#include "src/cfg/cfg.h"
#include "src/search/move.h"

namespace stoke {

class Transforms {
	public:
		Transforms() : old_instr_{x64asm::RET}, old_opcode_{x64asm::RET}, old_operand_{x64asm::rax} { }

		Transforms& set_seed(std::default_random_engine::result_type seed) {
			gen_.seed(seed);
			return *this;
		}

		bool modify(Cfg& cfg, Move type);
		bool instruction_move(Cfg& cfg);
		bool opcode_move(Cfg& cfg);
		bool operand_move(Cfg& cfg);
		bool resize_move(Cfg& cfg);
		bool local_swap_move(Cfg& cfg);
		bool global_swap_move(Cfg& cfg);

		void undo(Cfg& cfg, Move type);
		void undo_instruction_move(Cfg& cfg) {
			cfg.get_code()[instr_index_] = old_instr_;
			cfg.recompute_defs();
		}
		void undo_opcode_move(Cfg& cfg) {
			cfg.get_code()[instr_index_].set_opcode(old_opcode_);
			cfg.recompute_defs();
		}
		void undo_operand_move(Cfg& cfg) {
			cfg.get_code()[instr_index_].set_operand(operand_index_, old_operand_);
			cfg.recompute_defs();
		}
		void undo_resize_move(Cfg& cfg) {
			move(cfg.get_code(), move_i_, move_j_);
			cfg.recompute();
		}
		void undo_local_swap_move(Cfg& cfg) {
			std::swap(cfg.get_code()[move_i_], cfg.get_code()[move_j_]);
			cfg.recompute_defs();
		}
		void undo_global_swap_move(Cfg& cfg) {
			std::swap(cfg.get_code()[move_i_], cfg.get_code()[move_j_]);
			cfg.recompute_defs();
		}

	private:
		void move(x64asm::Code& code, size_t i, size_t j) const;

		/** Old instruction for instruction moves. */
		x64asm::Instruction old_instr_;
		/** Old opcode for opcode moves. */
		x64asm::Opcode old_opcode_;
		/** Old operand for operand moves. */
		x64asm::Operand old_operand_;
		/** Instruction index. */
		size_t instr_index_;
		/** Operand index. */
		size_t operand_index_;
		/** Indices for swap or code motion moves. */
		size_t move_i_;
		size_t move_j_;

		/** Random generator. */
		std::default_random_engine gen_;
};

} // namespace stoke

#endif
