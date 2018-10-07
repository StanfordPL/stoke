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

#include "src/validator/implication_graph.h"
#include "src/validator/invariants.h"

using namespace std;
using namespace stoke;

void ImplicationGraph::compute() {

  size_t inv_count = inv_.size();
  size_t dummy;

  for(size_t i = 0; i < inv_count; ++i) {
    for(size_t j = 0; j < inv_count; ++j) {
      if(i == j)
        continue;

      auto inv1 = inv_[i];
      auto inv2 = inv_[j];

      // setup symbolic states

      SymState ts("TARGET");
      SymState rs("REWRITE");

      ts.add_basic_block_ghosts(target_, "TARGET");
      rs.add_basic_block_ghosts(rewrite_, "REWRITE");

      ts.memory = new FlatMemory(separate_stack_);
      rs.memory = new FlatMemory(separate_stack_);

      // is it possible that states exist satisfying inv1 but not inv2?
      //   if SAT   => no implication
      //   if UNSAT => inv1 => inv2

      cout << "( " << *inv1 << " ) ==> ( " << *inv2 << " )" << endl; 
      auto test = (*inv1)(ts, rs, dummy) & !(*inv2)(ts, rs, dummy);
      cout << "INV1: " <<  (*inv1)(ts, rs, dummy) << endl;
      cout << "INV2: " << (*inv2)(ts, rs, dummy) << endl;
      cout << "CONJ: " << test << endl;

      if(smt_.is_sat({test})) {
        implication_table_[i][j] = false;
      } else {
        implication_table_[i][j] = true;
      }

      cout << "  OUTCOME: " << implication_table_[i][j] << endl;
    }
  }
}


