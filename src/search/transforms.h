#ifndef STOKE_SRC_SEARCH_TRANSFORMS_H
#define STOKE_SRC_SEARCH_TRANSFORMS_H

#include "src/cfg/cfg.h"
#include "src/search/move.h"

namespace stoke {

class Transforms {
	public:

		bool modify(Cfg& cfg, Move type) {
			return true;
		}
		void undo(Cfg& cfg, Move type) {

		}

	private:

};

} // namespace stoke 

#endif
