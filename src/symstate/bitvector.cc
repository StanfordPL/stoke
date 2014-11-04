

#include "src/symstate/bitvector.h"

using namespace std;
using namespace stoke;

/* Various constructors */
SymBitVectorConstant& SymBitVector::constant(uint16_t size, uint64_t value) {
  return *(new SymBitVectorConstant(size, value));
}
SymBitVectorVar& SymBitVector::var(uint16_t size, string name) {
  return *(new SymBitVectorVar(size, name));
}

/* Bit Vector Operators */
SymBitVectorAnd& SymBitVector::operator&(const SymBitVector& other) const {
  return *(new SymBitVectorAnd(*this, other));
}

SymBitVectorConcat& SymBitVector::operator||(const SymBitVector& other) const {
  return *(new SymBitVectorConcat(*this, other));
}

SymBitVectorMinus& SymBitVector::operator-(const SymBitVector& other) const {
  return *(new SymBitVectorMinus(*this, other));
}

SymBitVectorMod& SymBitVector::operator%(const SymBitVector& other) const {
  return *(new SymBitVectorMod(*this, other));
}

SymBitVectorMult& SymBitVector::operator*(const SymBitVector& other) const {
  return *(new SymBitVectorMult(*this, other));
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

SymBitVectorShiftLeft& SymBitVector::operator<<(const SymBitVector& other) const {
  return *(new SymBitVectorShiftLeft(*this, other));
}

SymBitVectorShiftRight& SymBitVector::operator>>(const SymBitVector& other) const {
  return *(new SymBitVectorShiftRight(*this, other));
}

SymBitVectorShiftLeft& SymBitVector::operator<<(uint64_t shift) const {
  SymTypecheckVisitor tc;
  auto size = tc(*this);

  auto& constant = *(new SymBitVectorConstant(size, shift));
  return (*this << constant);
}

SymBitVectorShiftRight& SymBitVector::operator>>(uint64_t shift) const {
  SymTypecheckVisitor tc;
  auto size = tc(*this);

  auto& constant = *(new SymBitVectorConstant(size, shift));
  return (*this >> constant);
}

SymBitVectorXor& SymBitVector::operator^(const SymBitVector& other) const {
  return *(new SymBitVectorXor(*this, other));
}

/* Indexing */
SymBitVectorExtract& SymBitVector::IndexHelper::operator[](uint16_t index) const {
  return *(new SymBitVectorExtract(bv_, index_, index));
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
  SymPrintVisitor spv(out);
  spv(bv);
  return out;
}
