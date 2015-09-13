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

#include "src/symstate/bitvector.h"
#include "src/symstate/memory_manager.h"

using namespace std;
using namespace stoke;

void SymMemoryManager::collect() {
  for(const SymBitVectorAbstract* bv : bitvectors_) {
    delete bv;
  }
  for(const SymBoolAbstract* b : bools_) {
    delete b;
  }
  bitvectors_.clear();
  bools_.clear();
}
