
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
      stack_dereference = false;
    }

    size_t line_number;
    size_t invariant_number;
    bool is_invariant;
    bool is_rewrite;
    bool implicit_dereference;
    bool stack_dereference;

    bool operator<(const DereferenceInfo& other) const {

      if(line_number != other.line_number)
        return line_number < other.line_number;

      if(invariant_number != other.invariant_number)
        return invariant_number < other.invariant_number;

      if(is_invariant != other.is_invariant)
        return is_invariant < other.is_invariant;

      if(is_rewrite != other.is_rewrite)
        return is_rewrite < other.is_rewrite;

      if(implicit_dereference != other.implicit_dereference)
        return implicit_dereference < other.implicit_dereference;

      return false;
    }

};

typedef std::map<DereferenceInfo, uint64_t> DereferenceMap;
typedef std::vector<DereferenceMap> DereferenceMaps;

};

#endif
