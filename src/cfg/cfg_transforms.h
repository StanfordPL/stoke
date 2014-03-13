#ifndef STOKE_SRC_CFG_CFG_TRANSFORMS_H
#define STOKE_SRC_CFG_CFG_TRANSFORMS_H

#include "src/cfg/cfg.h"

namespace stoke {

class CfgTransforms {
	public:
		/** Modifies the underlying code such that all unreachable basic blocks are removed. */
		CfgTransforms& remove_unreachable(Cfg& cfg);
		/** Modifies the underlying code such that all nops are removed. */
		CfgTransforms& remove_nop(Cfg& cfg);
};

} // namespace stoke

#endif
