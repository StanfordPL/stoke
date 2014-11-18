

#include "src/symstate/bitvector.h"
#include "src/symstate/function.h"

using namespace stoke;

/** Constructs a bitvector corresponding to an arity-1 function application */
SymBitVector SymFunction::operator()(SymBitVector a1) const {
  return SymBitVector(new SymBitVectorFunction(*this, a1.ptr));
}
/** Constructs a bitvector corresponding to an arity-2 function application */
SymBitVector SymFunction::operator()(SymBitVector a1, SymBitVector a2) const {
  return SymBitVector(new SymBitVectorFunction(*this, a1.ptr, a2.ptr));
}
/** Constructs a bitvector corresponding to an arity-3 function application */
SymBitVector SymFunction::operator()(SymBitVector a1, SymBitVector a2, SymBitVector a3) const {
  return SymBitVector(new SymBitVectorFunction(*this, a1.ptr, a2.ptr, a3.ptr));
}


