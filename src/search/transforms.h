#ifndef STOKE_SRC_SEARCH_TRANSFORMS_H
#define STOKE_SRC_SEARCH_TRANSFORMS_H

#include <cassert>

#include <random>
#include <vector>

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
		size_t arity(x64asm::Opcode o) const {
			return x64asm::Instruction(o).arity();
		}
		x64asm::Type type(x64asm::Opcode o, size_t index) const {
			return x64asm::Instruction(o).type(index);
		}
		bool is_mem_opcode(x64asm::Opcode o) const {
  		return x64asm::Instruction(o).derefs_mem();
		}
    bool is_mem_read_only_opcode(x64asm::Opcode o) const {
			const auto instr = x64asm::Instruction(o);
			const auto mi = instr.mem_index();
			return mi != -1 && !instr.maybe_write(mi) && !instr.maybe_undef(mi);
		}
		bool is_rh_opcode(x64asm::Opcode o) const;
		bool is_control_opcode(x64asm::Opcode o) const {
			return x64asm::Instruction{o}.is_jump() || x64asm::Instruction{o}.is_label_defn() || 
				x64asm::Instruction{o}.is_return();
		}
		bool is_enabled(x64asm::Opcode o, x64asm::FlagSet fs) const {
			return x64asm::Instruction{o}.enabled(fs);
		}
		bool is_type_equiv(x64asm::Opcode o1, x64asm::Opcode o2) const;
		bool is_callee_save(const x64asm::Rl& r) const {
			return r == x64asm::bl;
		}
		bool is_callee_save(const x64asm::Rh& r) const {
			return r == x64asm::bh;
		}
		bool is_callee_save(const x64asm::Rb& r) const {
			return r == x64asm::spl || r == x64asm::bpl || r == x64asm::r12b || 
				r == x64asm::r13b || r == x64asm::r14b || r == x64asm::r15b;
		}
		bool is_callee_save(const x64asm::R16& r) const {
			return r == x64asm::bx || r == x64asm::sp || r == x64asm::bp || 
				r == x64asm::r12w || r == x64asm::r13w || r == x64asm::r14w || r == x64asm::r15w;
		}
		bool is_callee_save(const x64asm::R32& r) const {
			return r == x64asm::ebx || r == x64asm::esp || r == x64asm::ebp || 
				r == x64asm::r12d || r == x64asm::r13d || r == x64asm::r14d || r == x64asm::r15d;
		}
		bool is_callee_save(const x64asm::R64& r) const {
			return r == x64asm::rbx || r == x64asm::rsp || r == x64asm::rbp || 
				r == x64asm::r12 || r == x64asm::r13 || r == x64asm::r14 || r == x64asm::r15;
		}

		x64asm::Opcode get_control_free() {
			assert(!control_free_.empty());
			return control_free_[gen_() % control_free_.size()];
		}
		x64asm::Opcode get_control_free_or_nop() {
			assert(!control_free_or_nop_.empty());
			return control_free_or_nop_[gen_() % control_free_or_nop_.size()];
		}
		x64asm::Opcode get_control_free_type_equiv(x64asm::Opcode o) {
			assert(!control_free_type_equiv_.empty());
			const auto& equiv = control_free_type_equiv_[o];
			return equiv.empty() ? o : equiv[gen_() % equiv.size()];
		}

		bool get_write_op(x64asm::Opcode o, size_t idx, const x64asm::RegSet& rs, 
				x64asm::Operand& op) const;
		bool get_read_op(x64asm::Opcode o, size_t idx, const x64asm::RegSet& rs, 
				x64asm::Operand& op) const;

		void move(x64asm::Code& code, size_t i, size_t j) const;

		std::vector<x64asm::Opcode> control_free_;
		std::vector<x64asm::Opcode> control_free_or_nop_;
		std::vector<std::vector<x64asm::Opcode>> control_free_type_equiv_;

		std::vector<x64asm::Rl> rl_pool_;
		std::vector<x64asm::Rh> rh_pool_;
		std::vector<x64asm::Rb> rb_pool_;
		std::vector<x64asm::R16> r16_pool_;
		std::vector<x64asm::R32> r32_pool_;
		std::vector<x64asm::R64> r64_pool_;
		std::vector<x64asm::Mm> mm_pool_;
		std::vector<x64asm::Sreg> sreg_pool_;
		std::vector<x64asm::St> st_pool_;
		std::vector<x64asm::Xmm> xmm_pool_;
		std::vector<x64asm::Ymm> ymm_pool_;
		std::vector<x64asm::Imm64> imm_pool_;
    std::vector<x64asm::M8> m_pool_;

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
