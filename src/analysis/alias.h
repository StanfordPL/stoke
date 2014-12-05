
#ifndef STOKE_SRC_ANALYSIS_ALIASING_H
#define STOKE_SRC_ANALYSIS_ALIASING_H

#include "src/cfg/cfg.h"
#include "src/ext/x64asm/include/x64asm.h"

namespace stoke {

class AliasAnalysis {

public:
  AliasAnalysis(const x64asm::Code& code) : code_(code) {}

  /** Tells if two memory references must overlap *exactly* */
  template <class T1, class T2>
  bool must_overlap(size_t line_1, x64asm::M<T1> ref_1, size_t line_2, x64asm::M<T2> ref_2) {
    return false;
  }

  /** Tells if two memory references may overlap *at all* */
  template <class T1, class T2>
  bool may_overlap(size_t line_1, x64asm::M<T1> ref_1, size_t line_2, x64asm::M<T2> ref_2) {
    return true;
  }

private:

  const x64asm::Code& code_;
};


} //namespace stoke

#endif
