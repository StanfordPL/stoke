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

#include "src/validator/int_vector.h"
#include "src/validator/int_matrix.h"

#include <iostream>

using namespace std;
using namespace stoke;

void IntVector::print() {
  auto& v = *this;
  for (size_t i =0; i < v.size(); ++i) {
    cout << v[i] << "  ";
  }
  cout << endl;
}


IntVector IntVector::remove_entry(size_t index) {
  auto& vector = *this;
  IntVector result;
  for (size_t i = 0; i < vector.size(); ++i) {
    if (i == index)
      continue;
    result.push_back(vector[i]);
  }
  return result;
}


