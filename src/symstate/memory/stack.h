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


#ifndef STOKE_SRC_SYMSTATE_MEMORY_STACK_H
#define STOKE_SRC_SYMSTATE_MEMORY_STACK_H

#include <map>

#include "src/symstate/bitvector.h"
#include "src/symstate/memory.h"

namespace stoke {

/** Models stack locations with one array per access size. */
class StackMemory {

public:

  StackMemory() {
    /*
    for(size_t i = 0; i < 6; ++i) {
      size_t pow2 = (1 << i);
      start_[pow2] = SymArray::tmp_var(64, 8*pow2);
      current_[pow2] = start_[pow2];
      end_[pow2] = SymArray::tmp_var(64, 8*pow2);
    }
    */
    start_[0] = SymArray::tmp_var(64, 8);
    current_[0] = start_[0];
    end_[0] = SymArray::tmp_var(64, 8);
  }

  StackMemory(StackMemory& other) {
    start_ = other.start_;
    current_ = other.current_;
    end_ = other.end_;
  }

  /** Updates the memory with a write. */
  void write(SymBitVector address, SymBitVector value, uint16_t size) {
    //current_[size/8] = current_[size/8].update(address, value);
    for(size_t i = 0; i < size/8; i++) {
      current_[0] = current_[0].update(address+SymBitVector::constant(64,i), value[8*i+7][8*i]);
    }
  }

  /** Reads from the memory.  Returns value. */
  SymBitVector read(SymBitVector address, uint16_t size) {
    SymBitVector value = current_[0][address];
    for(size_t i = 1; i < size/8; ++i) {
      value = current_[0][address + SymBitVector::constant(64, i)] || value;
    }
    return value;
    //return current_[size/8][address];
  }

  std::vector<SymArray> get_start_variables() const {
    std::vector<SymArray> outputs;
    for(auto pair : start_)
      outputs.push_back(pair.second);
    return outputs;
  }

  std::vector<SymArray> get_end_variables() const {
    std::vector<SymArray> outputs;
    for(auto pair : end_)
      outputs.push_back(pair.second);
    return outputs;
  }

  std::vector<SymBool> get_constraints() const {
    std::vector<SymBool> outputs;
    /*
    for(size_t i = 0; i < 6; ++i) {
      size_t pow2 = (1 << i);
      outputs.push_back(start_.at(pow2) == start_.at(pow2)); //to make sure we can get model later
      outputs.push_back(current_.at(pow2) == end_.at(pow2));
    }*/
    outputs.push_back(start_.at(0) == start_.at(0));
    outputs.push_back(current_.at(0) == end_.at(0));
    return outputs;
  }

private:
  /** The stack state */
  std::map<size_t, SymArray> start_;
  std::map<size_t, SymArray> end_;
  std::map<size_t, SymArray> current_;

};

};

#endif
