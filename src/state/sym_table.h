// Copyright 2013-2015 Stanford University
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#ifndef STOKE_SRC_STATE_SYM_TABLE_H
#define STOKE_SRC_STATE_TABLE_H

#include <cassert>
#include <iostream>
#include <unordered_map>
#include <vector>

#include "src/ext/x64asm/include/x64asm.h"

namespace stoke {

class SymbolTable {
  /** Needs access to flat_table_ and min_label_ */
  friend class Sandbox;

public:
  /** Is there a mapping for this symbol? */
  bool contains(const x64asm::Label& l) const {
    return table_.find(l) != table_.end();
  }
  /** Insert a new symbol. */
  void insert(const x64asm::Label& l, uint64_t addr);
  /** Empty the symbol table. */
  void clear() {
    table_.clear();
    flat_table_.clear();
  }

  /** Equality operator. */
  bool operator==(const SymbolTable& rhs) const {
    return table_ == rhs.table_;
  }
  /** Inequality operator. */
  bool operator!=(const SymbolTable& rhs) const {
    return !(*this == rhs);
  }

  /** Write text. */
  std::ostream& write_text(std::ostream& os) const;
  /** Read text. */
  std::istream& read_text(std::istream& is);

  /** Write binary. */
  std::ostream& write_bin(std::ostream& os) const;
  /** Read binary. */
  std::istream& read_bin(std::istream& is);

private:
  /** The symbol table */
  std::unordered_map<x64asm::Label, uint64_t> table_;
  /** A flat index of the same information for the sandbox */
  std::vector<uint64_t> flat_table_;
  /** The effective label id of the first entry in the table */
  uint64_t min_label_;
};

} // namespace stoke

#endif

