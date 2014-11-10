

#include "src/symstate/bitvector.h"

using namespace std;
using namespace stoke;

/* Various constructors */
SymBitVectorConstant SymBitVector::constant(uint16_t size, uint64_t value) {
  return SymBitVectorConstant(size, value);
}
SymBitVectorVar SymBitVector::var(uint16_t size, string name) {
  return SymBitVectorVar(size, name);
}
SymBitVectorIte SymBitVector::from_bool(const SymBool& b) {
  return SymBitVectorIte(b, SymBitVector::constant(1,1), SymBitVector::constant(1,0));
}
SymBitVectorIte SymBitVector::ite(const SymBool& c, const SymBitVector& t, const SymBitVector& f) {
  return SymBitVectorIte(c, t, f);
}
SymBitVectorZ3 SymBitVector::z3(z3::expr& e) {
  return SymBitVectorZ3(e);
}

/* Bit Vector Operators */
SymBitVectorAnd SymBitVector::operator&(const SymBitVector& other) const {
  return SymBitVectorAnd(*this, other);
}

SymBitVectorConcat SymBitVector::operator||(const SymBitVector& other) const {
  return SymBitVectorConcat(*this, other);
}

SymBitVectorDiv SymBitVector::operator/(const SymBitVector& other) const {
  return SymBitVectorDiv(*this, other);
}

SymBitVectorMinus SymBitVector::operator-(const SymBitVector& other) const {
  return SymBitVectorMinus(*this, other);
}

SymBitVectorMod SymBitVector::operator%(const SymBitVector& other) const {
  return SymBitVectorMod(*this, other);
}

SymBitVectorMult SymBitVector::operator*(const SymBitVector& other) const {
  return SymBitVectorMult(*this, other);
}

SymBitVectorNot SymBitVector::operator!() const {
  return SymBitVectorNot(*this);
}

SymBitVectorOr SymBitVector::operator|(const SymBitVector& other) const {
  return SymBitVectorOr(*this, other);
}

SymBitVectorPlus SymBitVector::operator+(const SymBitVector& other) const {
  return SymBitVectorPlus(*this, other);
}

SymBitVectorShiftLeft SymBitVector::operator<<(const SymBitVector& other) const {
  return SymBitVectorShiftLeft(*this, other);
}

SymBitVectorShiftRight SymBitVector::operator>>(const SymBitVector& other) const {
  return SymBitVectorShiftRight(*this, other);
}

SymBitVectorShiftLeft SymBitVector::operator<<(uint64_t shift) const {
  SymTypecheckVisitor tc;
  auto size = tc(*this);

  auto& constant = *(new SymBitVectorConstant(size, shift));
  return (*this << constant);
}

SymBitVectorShiftRight SymBitVector::operator>>(uint64_t shift) const {
  SymTypecheckVisitor tc;
  auto size = tc(*this);

  auto& constant = *(new SymBitVectorConstant(size, shift));
  return (*this >> constant);
}

SymBitVectorSignDiv SymBitVector::s_div(const SymBitVector& other) const {
  return SymBitVectorSignDiv(*this, other);
}

SymBitVectorSignExtend SymBitVector::extend(uint16_t size) const {
  return SymBitVectorSignExtend(*this, size);
}

SymBitVectorSignMod SymBitVector::s_mod(const SymBitVector& other) const {
  return SymBitVectorSignMod(*this, other);
}

SymBitVectorSignShiftRight SymBitVector::s_shr(const SymBitVector& other) const {
  return SymBitVectorSignShiftRight(*this, other);
}

SymBitVectorUMinus SymBitVector::operator-() const {
  return SymBitVectorUMinus(*this);
}

SymBitVectorXor SymBitVector::operator^(const SymBitVector& other) const {
  return SymBitVectorXor(*this, other);
}

/* Indexing */
SymBitVectorExtract SymBitVector::IndexHelper::operator[](uint16_t index) const {
  return SymBitVectorExtract(bv_, index_, index);
}

SymBitVector::IndexHelper::operator SymBool() const {
  return (*this)[index_] == SymBitVector::constant(1,1);
}

/* Bit Vector Comparison Operators */
SymBoolEq SymBitVector::operator==(const SymBitVector& other) const {
  return SymBoolEq(*this, other);
}

SymBoolGe SymBitVector::operator>=(const SymBitVector& other) const {
  return SymBoolGe(*this, other);
}

SymBoolGt SymBitVector::operator>(const SymBitVector& other) const {
  return SymBoolGt(*this, other);
}

SymBoolLe SymBitVector::operator<=(const SymBitVector& other) const {
  return SymBoolLe(*this, other);
}

SymBoolLt SymBitVector::operator<(const SymBitVector& other) const {
  return SymBoolLt(*this, other);
}

SymBoolNot SymBitVector::operator!=(const SymBitVector& other) const {
  return !(*this == other);
}

/* Output overload */
std::ostream& operator<< (std::ostream& out, stoke::SymBitVector& bv) {
  SymPrintVisitor spv(out);
  spv(bv);
  return out;
}
