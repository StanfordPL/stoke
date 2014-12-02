
#ifndef _STOKE_SRC_SYMSTATE_SYM_FUNCTION_H
#define _STOKE_SRC_SYMSTATE_SYM_FUNCTION_H

namespace stoke {

class SymFunction {

public:
  /** Constructs an uninterpreted function with given name and type */
  SymFunction(std::string my_name, uint16_t r_type, std::vector<uint16_t> my_args)
    : name(my_name), return_type(r_type), args(my_args) {}

  /** Constructs a bitvector corresponding to an arity-1 function application */
  SymBitVector operator()(SymBitVector a1) const;
  /** Constructs a bitvector corresponding to an arity-2 function application */
  SymBitVector operator()(SymBitVector a1, SymBitVector a2) const;
  /** Constructs a bitvector corresponding to an arity-3 function application */
  SymBitVector operator()(SymBitVector a1, SymBitVector a2, SymBitVector a3) const;

  /** Returns if these two functions are identical */
  bool operator==(const SymFunction& other) const {
    if (name != other.name) return false;
    if (return_type != other.return_type) return false;
    if (args.size() != other.args.size()) return false;
    for(size_t i = 0; i < args.size(); ++i)
      if (args[i] != other.args[i])
        return false;
    return true;
  }
  /** Returns if two functions are not equal */
  bool operator!=(const SymFunction& other) const {
    return !(*this == other);
  }

  /** Holds the name of the function */
  const std::string name;
  /** Holds the bitwidth of the return type */
  const uint16_t return_type;
  /** Holds the bitwidth of the arguments */
  const std::vector<uint16_t> args;
};

} //namespace stoke

#endif

