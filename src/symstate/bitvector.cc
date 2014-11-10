

#include "src/symstate/bitvector.h"

using namespace std;
using namespace stoke;

/* Various constructors */
SymBitVector SymBitVector::constant(uint16_t size, uint64_t value) {
  return SymBitVector(new SymBitVectorConstant(size, value));
}
SymBitVector SymBitVector::var(uint16_t size, string name) {
  return SymBitVector(new SymBitVectorVar(size, name));
}
SymBitVector SymBitVector::from_bool(const SymBool& b) {
  auto c0 = SymBitVector::constant(1,0);
  auto c1 = SymBitVector::constant(1,1);
  return SymBitVector(new SymBitVectorIte(b.ptr, c1.ptr, c0.ptr));
}
SymBitVector SymBitVector::ite(const SymBool& c, const SymBitVector& t, const SymBitVector& f) {
  return SymBitVector(new SymBitVectorIte(c.ptr, t.ptr, f.ptr));
}
SymBitVector SymBitVector::z3(z3::expr& e) {
  return SymBitVector(new SymBitVectorZ3(e));
}

/* Bit Vector Operators */
SymBitVector SymBitVector::operator&(const SymBitVector& other) const {
  return SymBitVector(new SymBitVectorAnd(ptr, other.ptr));
}

SymBitVector SymBitVector::operator||(const SymBitVector& other) const {
  return SymBitVector(new SymBitVectorConcat(ptr, other.ptr));
}

SymBitVector SymBitVector::operator/(const SymBitVector& other) const {
  return SymBitVector(new SymBitVectorDiv(ptr, other.ptr));
}

SymBitVector SymBitVector::operator-(const SymBitVector& other) const {
  return SymBitVector(new SymBitVectorMinus(ptr, other.ptr));
}

SymBitVector SymBitVector::operator%(const SymBitVector& other) const {
  return SymBitVector(new SymBitVectorMod(ptr, other.ptr));
}

SymBitVector SymBitVector::operator*(const SymBitVector& other) const {
  return SymBitVector(new SymBitVectorMult(ptr, other.ptr));
}

SymBitVector SymBitVector::operator!() const {
  return SymBitVector(new SymBitVectorNot(ptr));
}

SymBitVector SymBitVector::operator|(const SymBitVector& other) const {
  return SymBitVector(new SymBitVectorOr(ptr, other.ptr));
}

SymBitVector SymBitVector::operator+(const SymBitVector& other) const {
  return SymBitVector(new SymBitVectorPlus(ptr, other.ptr));
}

SymBitVector SymBitVector::operator<<(const SymBitVector& other) const {
  return SymBitVector(new SymBitVectorShiftLeft(ptr, other.ptr));
}

SymBitVector SymBitVector::operator>>(const SymBitVector& other) const {
  return SymBitVector(new SymBitVectorShiftRight(ptr, other.ptr));
}

SymBitVector SymBitVector::operator<<(uint64_t shift) const {
  SymTypecheckVisitor tc;
  auto size = tc(ptr);

  auto constant = SymBitVector::constant(size, shift);
  return (*this << constant);
}

SymBitVector SymBitVector::operator>>(uint64_t shift) const {
  SymTypecheckVisitor tc;
  auto size = tc(ptr);

  auto constant = SymBitVector::constant(size, shift);
  return (*this >> constant);
}

SymBitVector SymBitVector::s_div(const SymBitVector& other) const {
  return SymBitVector(new SymBitVectorSignDiv(ptr, other.ptr));
}

SymBitVector SymBitVector::extend(uint16_t size) const {
  return SymBitVector(new SymBitVectorSignExtend(ptr, size));
}

SymBitVector SymBitVector::s_mod(const SymBitVector& other) const {
  return SymBitVector(new SymBitVectorSignMod(ptr, other.ptr));
}

SymBitVector SymBitVector::s_shr(const SymBitVector& other) const {
  return SymBitVector(new SymBitVectorSignShiftRight(ptr, other.ptr));
}

SymBitVector SymBitVector::operator-() const {
  return SymBitVector(new SymBitVectorUMinus(ptr));
}

SymBitVector SymBitVector::operator^(const SymBitVector& other) const {
  return SymBitVector(new SymBitVectorXor(ptr, other.ptr));
}

/* Indexing */
SymBitVector SymBitVector::IndexHelper::operator[](uint16_t index) const {
  return SymBitVector(new SymBitVectorExtract(bv_.ptr, index_, index));
}

SymBitVector::IndexHelper::operator SymBool() const {
  return (*this)[index_] == SymBitVector::constant(1,1);
}

/* Bit Vector Comparison Operators */
SymBool SymBitVector::operator==(const SymBitVector& other) const {
  return SymBool(new SymBoolEq(ptr, other.ptr));
}

SymBool SymBitVector::operator>=(const SymBitVector& other) const {
  return SymBool(new SymBoolGe(ptr, other.ptr));
}

SymBool SymBitVector::operator>(const SymBitVector& other) const {
  return SymBool(new SymBoolGt(ptr, other.ptr));
}

SymBool SymBitVector::operator<=(const SymBitVector& other) const {
  return SymBool(new SymBoolLe(ptr, other.ptr));
}

SymBool SymBitVector::operator<(const SymBitVector& other) const {
  return SymBool(new SymBoolLt(ptr, other.ptr));
}

SymBool SymBitVector::operator!=(const SymBitVector& other) const {
  return !(*this == other);
}


SymBitVector::Type SymBitVector::type() const { 
  if(ptr)
    return ptr->type();
  else
    return NONE;
}




/* Output overload */
std::ostream& operator<< (std::ostream& out, stoke::SymBitVector& bv) {
  SymPrintVisitor spv(out);
  spv(bv);
  return out;
}
