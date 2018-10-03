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


#ifndef STOKE_SRC_VALIDATOR_INDEXER
#define STOKE_SRC_VALIDATOR_INDEXER

#include <map>
#include <vector>

namespace stoke {

template <typename T>
class Indexer {

public:
  size_t add(T x) {
    if (map_.count(x) == 0) {
      map_[x] = total_num++;
      list_.push_back(x);
    }
    return map_[x];
  }

  size_t fetch(T x) {
    assert(map_.count(x));
    return map_[x];
  }

  size_t operator[](T t) {
    return fetch(t);
  }

  T reverse(size_t index) {
    assert(index < total_num);
    return list_[index];
  }

  size_t count() {
    return total_num;
  }

  std::vector<T> get_vector() {
    return list_;
  }

private:
  size_t total_num = 0;
  std::map<T, size_t> map_;
  std::vector<T> list_;


};
}

#endif
