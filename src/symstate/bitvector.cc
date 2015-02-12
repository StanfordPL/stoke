// Copyright 2013-2015 Stanford University
//
// Licensed under the Apache License, Version 2.0 (the License);
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an AS IS BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.



#include "src/symstate/bitvector.h"

using namespace std;
using namespace stoke;

SymMemoryManager* SymBitVector::memory_manager_ = NULL;

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

/* Bit Vector Operators */
SymBitVector SymBitVector::operator&(const SymBitVector& other) const {
  return SymBitVector(new SymBitVectorAnd(ptr, other.ptr));
}

SymBitVector SymBitVector::operator||(const SymBitVector& other) const {
  if(!other.ptr) {
    return *this;
  }
  if(!ptr) {
    return other;
  }
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

SymBitVector SymBitVector::rol(const SymBitVector& other) const {
  return SymBitVector(new SymBitVectorRotateLeft(ptr, other.ptr));
}

SymBitVector SymBitVector::ror(const SymBitVector& other) const {
  return SymBitVector(new SymBitVectorRotateRight(ptr, other.ptr));
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

/* Parity */
SymBool SymBitVector::parity() const {

  // Step 1: get my size
  SymTypecheckVisitor tc;
  uint16_t size = tc(*this);

  // Step 2: iterate over my bits and xor them together
  SymBool parity = (*this)[0];
  for(size_t i = 1; i < size; ++i) {
    parity = parity ^ (*this)[i];
  }

  // Step 3: flip
  return !parity;
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

SymBool SymBitVector::s_ge(const SymBitVector& other) const {
  return SymBool(new SymBoolSignGe(ptr, other.ptr));
}

SymBool SymBitVector::s_gt(const SymBitVector& other) const {
  return SymBool(new SymBoolSignGt(ptr, other.ptr));
}

SymBool SymBitVector::s_le(const SymBitVector& other) const {
  return SymBool(new SymBoolSignLe(ptr, other.ptr));
}

SymBool SymBitVector::s_lt(const SymBitVector& other) const {
  return SymBool(new SymBoolSignLt(ptr, other.ptr));
}

/** Get the type */
SymBitVector::Type SymBitVector::type() const {
  if(ptr)
    return ptr->type();
  else
    return NONE;
}
/* equality */
bool SymBitVector::equals(const SymBitVector& other) const {
  if (ptr && other.ptr)
    return ptr->equals(other.ptr);
  else
    return ptr == other.ptr;
}



/* Output overload */
std::ostream& operator<< (std::ostream& out, const stoke::SymBitVector& bv) {
  SymPrintVisitor spv(out);
  spv(bv);
  return out;
}
