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


#ifndef _STOKE_SRC_SYMSTATE_SYM_ARRAY_H
#define _STOKE_SRC_SYMSTATE_SYM_ARRAY_H

#include <iostream>
#include <vector>

#include "src/symstate/bitvector.h"
#include "src/symstate/memory_manager.h"

namespace stoke {

class SymArrayAbstract;

class SymArrayStore;
class SymArrayVar;

class SymArray {

public:

  enum Type {
    NONE,
    STORE,
    VAR
  };


  /** Get the type of this bitvector expression; helps for recursive algorithms on the tree. */
  Type type() const;

  /** Creates a bitvector variables of specified size and name */
  static SymArray var(uint64_t key_width, uint16_t value_width, std::string name);
  /** Creates a bitvector temporary variable of given size */
  static SymArray tmp_var(uint16_t key_width, uint16_t value_width);

  /** Update an array with a store */
  SymArray update(SymBitVector key, SymBitVector value);
  /** Select a bitvector from an array */
  SymBitVector operator[](SymBitVector key);

  /** Returns a bool indicating if the arguments are equal */
  SymBool operator==(const SymArray& other) const;

  /** Returns true if the two ASTs are identical */
  bool equals(const SymArray& other) const;

  /** Accesses the underlying object */
  const SymArrayAbstract * ptr;

  /** Constructs a SymArray that doesn't point to anything */
  SymArray() : ptr(NULL) {}
  /** Constructs a new SymArray from a pointer to the AST hierarchy */
  SymArray(const SymArrayAbstract * ptr_) : ptr(ptr_) {
    if (memory_manager_)
      memory_manager_->add(ptr_);
  }

  /** Set a memory manager */
  static void set_memory_manager(SymMemoryManager* mm) {
    memory_manager_ = mm;
  }

private:

  /** Memory Manager */
  static SymMemoryManager* memory_manager_;
  /** Counter for temporaries. */
  static uint64_t tmp_counter_;

};

class SymArrayAbstract {
  friend class SymArray;

public:
  virtual SymArray::Type type() const = 0;
  virtual bool equals(const SymArrayAbstract * const other) const = 0;

  virtual ~SymArrayAbstract() = 0;
};

inline SymArrayAbstract::~SymArrayAbstract() {}

/* Abstract class that has contains a left and right argument to a binary operator. */
class SymArrayStore : public SymArrayAbstract {
  friend class SymArray;

public:
  const SymArrayAbstract * const a_;
  const SymBitvectorAbstract * const key_;
  const SymBitvectorAbstract * const value_;

  bool equals(const SymArrayAbstract * other) const {
    if (other->type() != this->type()) return false;
    auto cast = static_cast<const SymArrayStore * const>(other);
    return a_->equals(cast->a_) &&
           key_->equals(cast->key_) &&
           value_->equals(cast->value_);
  }

  SymArray::Type type() const {
    return SymArray::Type::STORE;
  }

};

class SymArrayVar : public SymArrayAbstract {
  friend class SymArray;

private:
  SymArrayVar(uint16_t key_size, uint16_t value_size, const std::string name) :
    name_(name), key_size_(key_size), value_size_(value_size) {}

public:
  SymArray::Type type() const {
    return SymArray::Type::VAR;
  }

  bool equals(const SymArrayAbstract * const other) const {
    if (other->type() != SymArray::Type::VAR) return false;
    auto cast = static_cast<const SymArrayVar * const>(other);
    return name_ == cast->name_ &&
           key_size_ == cast->key_size_ &&
           value_size_ == cast->value_size_;
  }

  const std::string name_;
  const uint16_t key_size_;
  const uint16_t value_size_;
};


} //namespace stoke

std::ostream& operator<< (std::ostream& out, const stoke::SymArray& bv);

#endif
