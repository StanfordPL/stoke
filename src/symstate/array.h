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


#ifndef _STOKE_SRC_SYMSTATE_SYM_ARRAY_H
#define _STOKE_SRC_SYMSTATE_SYM_ARRAY_H

#include <iostream>
#include <vector>

#include "src/symstate/ast.h"
#include "src/symstate/memory_manager.h"

namespace stoke {

class SymBitVector;
class SymBool;

class SymArrayAbstract;
class SymBitVectorAbstract;
class SymBoolAbstract;

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
  static SymArray var(uint16_t key_width, uint16_t value_width, std::string name);
  /** Creates a bitvector temporary variable of given size */
  static SymArray tmp_var(uint16_t key_width, uint16_t value_width);

  /** Update an array with a store */
  SymArray update(SymBitVector key, SymBitVector value) const;
  /** Select a bitvector from an array */
  SymBitVector operator[](SymBitVector key) const;

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

  /** Get the memory manager */
  static SymMemoryManager* get_memory_manager() {
    return memory_manager_;
  }

private:

  /** Memory Manager */
  static SymMemoryManager* memory_manager_;
  /** Counter for temporaries. */
  static uint64_t tmp_counter_;

};

class SymArrayAbstract : public SymAstAbstract {
  friend class SymArray;

public:
  virtual SymArray::Type type() const = 0;
  virtual bool equals(const SymArrayAbstract * const other) const = 0;

  virtual ~SymArrayAbstract() = 0;

  const uint16_t key_size_;
  const uint16_t value_size_;

protected:
  SymArrayAbstract(uint16_t key_size, uint16_t value_size) :
    key_size_(key_size), value_size_(value_size) { }

};

inline SymArrayAbstract::~SymArrayAbstract() {}

/* Abstract class that has contains a left and right argument to a binary operator. */
class SymArrayStore : public SymArrayAbstract {
  friend class SymArray;
  friend class SymTransformVisitor;

public:
  const SymArrayAbstract * const a_;
  const SymBitVectorAbstract * const key_;
  const SymBitVectorAbstract * const value_;

  bool equals(const SymArrayAbstract * other) const;

  SymArray::Type type() const {
    return SymArray::Type::STORE;
  }

  SymArrayStore(const SymArrayAbstract* const a, const SymBitVectorAbstract * const key, const SymBitVectorAbstract * const value) :
    SymArrayAbstract(a->key_size_, a->value_size_), a_(a), key_(key), value_(value) { }

};

class SymArrayVar : public SymArrayAbstract {
  friend class SymArray;
  friend class SymTransformVisitor;

private:
  SymArrayVar(uint16_t key_size, uint16_t value_size, const std::string name) :
    SymArrayAbstract(key_size, value_size), name_(name) {}

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
};


} //namespace stoke

std::ostream& operator<< (std::ostream& out, const stoke::SymArray& bv);

#endif
