

#include "src/symstate/bitvector.h"

using namespace std;
using namespace stoke;

/* Bit Vector Operators */
SymBitVectorAnd& SymBitVector::operator&(const SymBitVector& other) const {
  return *(new SymBitVectorAnd(*this, other));
}

SymBitVectorConcat& SymBitVector::operator||(const SymBitVector& other) const {
  return *(new SymBitVectorConcat(*this, other));
}

SymBitVectorNot& SymBitVector::operator!() const {
  return *(new SymBitVectorNot(*this));
}

SymBitVectorOr& SymBitVector::operator|(const SymBitVector& other) const {
  return *(new SymBitVectorOr(*this, other));
}

SymBitVectorPlus& SymBitVector::operator+(const SymBitVector& other) const {
  return *(new SymBitVectorPlus(*this, other));
}

SymBitVectorShiftLeft& SymBitVector::operator<<(uint64_t shift) const {
  return *(new SymBitVectorShiftLeft(*this, shift));
}

SymBitVectorShiftRight& SymBitVector::operator>>(uint64_t shift) const {
  return *(new SymBitVectorShiftRight(*this, shift));
}

SymBitVectorXor& SymBitVector::operator^(const SymBitVector& other) const {
  return *(new SymBitVectorXor(*this, other));
}

/* Bit Vector Comparison Operators */
SymBoolEq& SymBitVector::operator==(const SymBitVector& other) const {
  return *(new SymBoolEq(*this, other));
}

SymBoolNot& SymBitVector::operator!=(const SymBitVector& other) const {
  return !(*this == other);
}

/* Output overload */
std::ostream& operator<< (std::ostream& out, stoke::SymBitVector& bv) {
  bv.write_text(out);
  return out;
}
