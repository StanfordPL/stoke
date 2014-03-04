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
	return false;
}

bool Transforms::opcode_move(Cfg& cfg) {
	return false;
}

bool Transforms::operand_move(Cfg& cfg) {
	return false;
}

bool Transforms::resize_move(Cfg& cfg) {
	return false;
}

bool Transforms::local_swap_move(Cfg& cfg) {
	return false;
}

bool Transforms::global_swap_move(Cfg& cfg) {
	return false;
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

void Transforms::move(x64asm::Code& code, size_t i, size_t j) const {

}

} // namespace stoke
