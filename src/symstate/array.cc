// Copyright 2013-2016 Stanford University
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

#include <sstream>

#include "src/symstate/array.h"
#include "src/symstate/bitvector.h"

#include "src/symstate/pretty_visitor.h"

using namespace std;
using namespace stoke;

thread_local SymMemoryManager* SymArray::memory_manager_ = NULL;
uint64_t SymArray::tmp_counter_ = 0;

/* Various constructors */
SymArray SymArray::var(uint16_t key_size, uint16_t val_size, string name) {
  return SymArray(new SymArrayVar(key_size, val_size, name));
}
SymArray SymArray::tmp_var(uint16_t key_size, uint16_t val_size) {
  stringstream name;
  name << "TMP_ARR_" << key_size << "_" << val_size << "_" << tmp_counter_;
  tmp_counter_++;
  return SymArray(new SymArrayVar(key_size, val_size, name.str()));
}

/* Indexing */
SymBitVector SymArray::operator[](SymBitVector key) const {
  return SymBitVector(new SymBitVectorArrayLookup(ptr, key.ptr));
}

/* Update */
SymArray SymArray::update(SymBitVector key, SymBitVector value) const {
  return SymArray(new SymArrayStore(ptr, key.ptr, value.ptr));
}

/* Array Comparison Operators */
SymBool SymArray::operator==(const SymArray& other) const {
  return SymBool(new SymBoolArrayEq(ptr, other.ptr));
}

/** Get the type */
SymArray::Type SymArray::type() const {
  if (ptr)
    return ptr->type();
  else
    return NONE;
}
/* equality */
bool SymArray::equals(const SymArray& other) const {
  if (ptr && other.ptr)
    return ptr->equals(other.ptr);
  else
    return ptr == other.ptr;
}

/* Output overload */
std::ostream& std::operator<< (std::ostream& out, const stoke::SymArray& bv) {
  SymPrettyVisitor spv(out);
  spv(bv);
  return out;
}

bool SymArrayStore::equals(const SymArrayAbstract * other) const {
  if (other->type() != this->type()) return false;
  auto cast = static_cast<const SymArrayStore * const>(other);
  return a_->equals(cast->a_) &&
         key_->equals(cast->key_) &&
         value_->equals(cast->value_);
}


