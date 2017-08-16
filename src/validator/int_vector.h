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

#ifndef STOKE_SRC_VALIDATOR_INT_VECTOR_H
#define STOKE_SRC_VALIDATOR_INT_VECTOR_H

#include <vector>
#include <map>
#include "src/validator/int_matrix.h"

namespace stoke {

class IntVector : public std::vector<int64_t> {

public:

  /** Empty vector */
  IntVector() { }

  /** vector with dimensions */
  IntVector(int entries) : std::vector<int64_t>(entries, 0) { }

  /** Copy a 1d vector into us */
  IntVector(std::vector<int64_t>& m) : std::vector<int64_t>(m) { }

  /** Muliply by constant */
  IntVector operator*(int64_t value) {
    IntVector result;
    for (size_t i = 0; i < size(); ++i)
      result.push_back((*this)[i]*value);
    return result;
  }

  void print();

  IntVector remove_entry(size_t index);

};

} // namespace stoke

#endif
