// Copyright 2013-2015 Eric Schkufza, Rahul Sharma, Berkeley Churchill, Stefan Heule
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


#ifndef _STOKE_SRC_SYMSTATE_SYM_MEMORY_MANAGER_H
#define _STOKE_SRC_SYMSTATE_SYM_MEMORY_MANAGER_H

#include <vector>
#include <cassert>

namespace stoke {

class SymBitVectorAbstract;
class SymBoolAbstract;

/** Don't worry, I'm not doing abstract/symbolic garbage collection or anything
 * like that!  This is just to clean up all those terrible bitvector objects.
 * */
class SymMemoryManager {

public:

  /** Collect bitvector */
  void add(const SymBitVectorAbstract* bv) {
    assert(bv != NULL);
    bitvectors_.push_back(bv);
  }
  /** Collect bool */
  void add(const SymBoolAbstract* b) {
    assert(b != NULL);
    bools_.push_back(b);
  }


  /** Free all the junk */
  void collect();

private:

  std::vector<const SymBitVectorAbstract*> bitvectors_;
  std::vector<const SymBoolAbstract*> bools_;

};

} //namespace stoke

#endif
