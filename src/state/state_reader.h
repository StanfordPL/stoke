#ifndef STOKE_SRC_STATE_STATE_READER_H
#define STOKE_SRC_STATE_STATE_READER_H

#include <iostream>

#include "src/state/cpu_state.h"
#include "src/state/regs.h"
#include "src/state/memory.h"

namespace stoke {

class StateReader {
 public:
  void operator()(std::istream& is, CpuState& cs) const;

 private:
  void read_regs(std::istream& is, Regs& regs) const;

  void read_mem(std::istream& is, Memory& mem) const;
  void read_summary(std::istream& is, Memory& mem) const;
  void read_row(std::istream& is, Memory& mem) const;
  void read_contents(std::istream& is, Memory& mem) const;
};

} // namespace stoke

namespace std {

inline std::istream& operator>>(std::istream& is, stoke::CpuState& cs) {
  stoke::StateReader()(is, cs);
  return is;
}

} // namespace std

#endif

