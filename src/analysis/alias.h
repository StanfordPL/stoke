
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

    if (ref_1.contains_seg() || ref_2.contains_seg())
      return true;
    if (ref_1.contains_base() != ref_2.contains_base())
      return true;
    if (ref_1.contains_index() != ref_2.contains_index())
      return true;
    if (ref_1.get_base() != ref_2.get_base())
      return true;
    if (ref_1.get_index() != ref_2.get_index())
      return true;
    if (ref_1.get_scale() != ref_2.get_scale())
      return true;

    x64asm::RegSet modified = x64asm::RegSet::empty();
    for(size_t i = line_1; i < line_2; ++i) {
      modified = modified | code_[i].maybe_read_set();
    }

    return false;
  }

private:

  const x64asm::Code& code_;

};


} //namespace stoke

#endif
