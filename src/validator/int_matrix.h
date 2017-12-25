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

#ifndef STOKE_SRC_VALIDATOR_INT_MATRIX_H
#define STOKE_SRC_VALIDATOR_INT_MATRIX_H

#include <vector>
#include <map>
#include "src/validator/int_vector.h"

namespace stoke {

class IntVector;

class IntMatrix : public std::vector<std::vector<int64_t>> {

public:

  /** Empty 2d matrix */
  IntMatrix() { }

  /** 2d matrix with dimensions */
  IntMatrix(int rows, int cols) :
    std::vector<std::vector<int64_t>>(rows, std::vector<int64_t>(cols, 0)) { }

  /** 2d matrix with initialization */
  IntMatrix(int rows, int cols, uint64_t* arr) :
    std::vector<std::vector<int64_t>>(rows, std::vector<int64_t>(cols, 0)) { 
    for(int i = 0; i < rows; i++)
      for(int j = 0; j < cols; j++)
        (*this)[i][j] = arr[i*cols + j];  
  }



  /** Copy a 2d vector into us */
  IntMatrix(std::vector<std::vector<int64_t>> m) : std::vector<std::vector<int64_t>>(m) {

  }

  /** Multiply with a matrix/vector */
  IntMatrix operator*(IntMatrix& other) const;
  IntVector operator*(IntVector& other) const;

  /** Check if vector is in nullspace */
  bool in_nullspace(IntVector& vect) const;

  /** Compute a generating set for the nullspace over Z/2^64Z */
  IntMatrix nullspace64() const;

  /** Return generating set to solutions of Ax = 0 */
  IntMatrix solve_diophantine() const;
  /** Returns a solution to Ax = b */
  IntVector solve_diophantine(IntVector b) const;

  size_t rows() const {
    return size();
  }

  size_t cols() const {
    return (*this)[0].size();
  }

  bool check_rectangle() const {
    size_t c = cols();

    for (auto it : *this) {
      if (it.size() != c)
        return false;
    }
    return true;
  }

  /** Print matrix to stdout */
  void print() const;

  /** Return a new matrix with the ith column removed. */
  IntMatrix remove_column(size_t i) const;

private:

};

} // namespace stoke

#endif
