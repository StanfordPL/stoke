#ifndef STOKE_SRC_SEARCH_MOVE_H
#define STOKE_SRC_SEARCH_MOVE_H

namespace stoke {

enum class Move {
	INSTRUCTION = 0,
	OPCODE,
	OPERAND,
	RESIZE,
	LOCAL_SWAP,
	GLOBAL_SWAP,

	NUM_MOVES
};

} // namespace stoke

#endif
