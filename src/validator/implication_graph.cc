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

size_t ImplicationGraph::compute(size_t i1, size_t i2) {

  auto set1 = invariant_sets_[i1];
  auto set2 = invariant_sets_[i2];

  size_t dummy;
  size_t success = 0;
  size_t failures = 0;

  for(auto inv1 : set1) {
    for(auto inv2 : set2) {
      if(inv1 == inv2)
        continue;

      if(inv1->does_not_imply(inv2)) {
        cout << "Skipping check for ( " << *inv1 <<  " ) ==> ( " << *inv2 << " )" << endl;
        continue;
      }

      // setup symbolic states

      SymState ts("TARGET");
      SymState rs("REWRITE");

      ts.memory = new FlatMemory(separate_stack_);
      rs.memory = new FlatMemory(separate_stack_);

      // is it possible that states exist satisfying inv1 but not inv2?
      //   if SAT   => no implication
      //   if UNSAT => inv1 => inv2

      cout << "( " << *inv1 << " ) ==> ( " << *inv2 << " )" << endl; 
      auto test = (*inv1)(ts, rs, dummy) & !(*inv2)(ts, rs, dummy);
      //cout << "INV1: " <<  (*inv1)(ts, rs, dummy) << endl;
      //cout << "INV2: " << (*inv2)(ts, rs, dummy) << endl;
      //cout << "CONJ: " << test << endl;

      bool worked;
      if(smt_.is_sat({test})) {
        failures++;
        worked = false;
      } else {
        superseded_.insert(inv2);
        replacements_[inv1].insert(inv2);
        success++;
        worked = true;
      }

      cout << "  OUTCOME: " << worked << endl;
    }
  }

  cout << "SUCCESS : " << success << "  FAILURE : " << failures << endl;
  return success;
}


void ImplicationGraph::print() {
  cout << "[implication_graph] REPLACEMENTS" << endl;
  for(auto it : replacements_) {
    cout << "   " << *(it.first) << endl;
    for(auto rep : it.second) {
      cout << "         " << *rep << endl;
    }
  }
}
