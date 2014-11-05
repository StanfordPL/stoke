

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
SymBitVectorIte& SymBitVector::from_bool(const SymBool& b) {
  return *(new SymBitVectorIte(b, SymBitVector::constant(1,1), SymBitVector::constant(1,0)));
}
SymBitVectorIte& SymBitVector::ite(const SymBool& c, const SymBitVector& t, const SymBitVector& f) {
  return *(new SymBitVectorIte(c, t, f));
}
SymBitVectorZ3& SymBitVector::z3(z3::expr& e) {
  return *(new SymBitVectorZ3(e));
}

/* Bit Vector Operators */
SymBitVectorAnd& SymBitVector::operator&(const SymBitVector& other) const {
  return *(new SymBitVectorAnd(*this, other));
}

SymBitVectorConcat& SymBitVector::operator||(const SymBitVector& other) const {
  return *(new SymBitVectorConcat(*this, other));
}

SymBitVectorDiv& SymBitVector::operator/(const SymBitVector& other) const {
  return *(new SymBitVectorDiv(*this, other));
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

SymBitVectorSignDiv& SymBitVector::s_div(const SymBitVector& other) const {
  return *(new SymBitVectorSignDiv(*this, other));
}

SymBitVectorSignExtend& SymBitVector::extend(uint16_t size) const {
  return *(new SymBitVectorSignExtend(*this, size));
}

SymBitVectorSignMod& SymBitVector::s_mod(const SymBitVector& other) const {
  return *(new SymBitVectorSignMod(*this, other));
}

SymBitVectorSignShiftRight& SymBitVector::s_shr(const SymBitVector& other) const {
  return *(new SymBitVectorSignShiftRight(*this, other));
}

SymBitVectorUMinus& SymBitVector::operator-() const {
  return *(new SymBitVectorUMinus(*this));
}

SymBitVectorXor& SymBitVector::operator^(const SymBitVector& other) const {
  return *(new SymBitVectorXor(*this, other));
}

/* Indexing */
SymBitVectorExtract& SymBitVector::IndexHelper::operator[](uint16_t index) const {
  return *(new SymBitVectorExtract(bv_, index_, index));
}

SymBitVector::IndexHelper::operator SymBool&() const {
  return (*this)[index_] == SymBitVector::constant(1,1);
}

/* Bit Vector Comparison Operators */
SymBoolEq& SymBitVector::operator==(const SymBitVector& other) const {
  return *(new SymBoolEq(*this, other));
}

SymBoolGe& SymBitVector::operator>=(const SymBitVector& other) const {
  return *(new SymBoolGe(*this, other));
}

SymBoolGt& SymBitVector::operator>(const SymBitVector& other) const {
  return *(new SymBoolGt(*this, other));
}

SymBoolLe& SymBitVector::operator<=(const SymBitVector& other) const {
  return *(new SymBoolLe(*this, other));
}

SymBoolLt& SymBitVector::operator<(const SymBitVector& other) const {
  return *(new SymBoolLt(*this, other));
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
