
#ifndef STOKE_SRC_ANALYSIS_ALIASING_H
#define STOKE_SRC_ANALYSIS_ALIASING_H

namespace stoke {

class AliasAnalysis {

public:
  AliasAnalysis(const Cfg& cfg) : cfg_(cfg) {}

  /** Tells if two memory references must overlap *exactly* */
  template <class T1, class T2>
  bool must_overlap(size_t line_1, M<T1> ref_1, size_t line_2, M<T2> ref_2) {
    return false;
  }

  /** Tells if two memory references may overlap *at all* */
  template <class T1, class T2>
  bool may_overlap(size_t line_1, M<T1> ref_1, size_t line_2, M<T2> ref_2) {
    return true;
  }

private:

  const Cfg& cfg_;
};


} //namespace stoke

#endif
