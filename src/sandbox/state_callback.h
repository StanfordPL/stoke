#ifndef STOKE_SRC_SANDBOX_STATE_CALLBACK_H
#define STOKE_SRC_SANDBOX_STATE_CALLBACK_H

#include "src/state/cpu_state.h"

namespace stoke {

/** POD-datatype passed to callbacks by sandbox */
struct StateCallbackData {
  const size_t line;
  const CpuState& state;
};

/** Callback signature */
typedef void (*StateCallback)(const StateCallbackData& data, void* arg);

} // namespace stoke

#endif
