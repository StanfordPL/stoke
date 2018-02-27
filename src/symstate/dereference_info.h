
#ifndef STOKE_SRC_SYMSTATE_DEREFINFO_H
#define STOKE_SRC_SYMSTATE_DEREFINFO_H

namespace stoke {

class DereferenceInfo {

  public:

    DereferenceInfo() {
      line_number = 0;
      invariant_number = 0;
      is_invariant = false;
      is_rewrite = false;
      implicit_dereference = false;
    }

    size_t line_number;
    size_t invariant_number;
    bool is_invariant;
    bool is_rewrite;
    bool implicit_dereference;

};

};

#endif
