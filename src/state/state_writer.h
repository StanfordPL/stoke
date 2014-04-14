// Copyright 2014 eric schkufza
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#ifndef STOKE_SRC_STATE_STATE_WRITER_H
#define STOKE_SRC_STATE_STATE_WRITER_H

#include <stdint.h>

#include <iostream>

#include "src/state/cpu_state.h"
#include "src/state/regs.h"
#include "src/state/memory.h"

namespace stoke {

class StateWriter {
 public:
	/** Write a state to an ostream. */
  void operator()(std::ostream& os, const CpuState& cs) const;

 private:
	/** Write a regsiter file to an ostream. */
  void write_regs(std::ostream& os, const Regs& regs, const char** names, size_t padding) const;
	/** Write a memory file to an ostream. */
  void write_mem(std::ostream& os, const Memory& mem) const;
	/** Write the summary of a memory file. */
  void write_summary(std::ostream& os, const Memory& mem) const;
	/** Write a row from a memory file. */
  void write_row(std::ostream& os, const Memory& mem, uint64_t addr) const;
	/** Write all rows from a memory file. */
  void write_contents(std::ostream& os, const Memory& mem) const;

	/** Does this row contain at least one valid address? */
  bool valid_row(const Memory& mem, uint64_t addr) const;
	/** How many of the rows in this memory are valid? */
  size_t valid_count(const Memory& mem) const;
};

} // namespace stoke

namespace std {

/** Convenience overload. */
inline std::ostream& operator<<(std::ostream& os, const stoke::CpuState& cs) {
  stoke::StateWriter()(os, cs);
  return os;
}

} // namespace std

#endif
