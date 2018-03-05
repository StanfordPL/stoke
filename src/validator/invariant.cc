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

#include "src/validator/invariant.h"
#include "src/validator/invariants/conjunction.h"

namespace std {

ostream& operator<<(ostream& os, const stoke::Invariant& inv) {
  return inv.write(os);
}

}

using namespace std;
using namespace stoke;

void Invariant::get_dereference_map(DereferenceMap& deref_map, 
                                    const CpuState& target, 
                                    const CpuState& rewrite, 
                                    size_t& number) {

  auto vars = get_variables();
  vector<Variable> memory_variables;

  for(auto var : vars) {
    if(var.is_dereference()) {
      memory_variables.push_back(var);
    }
  }

  assert(memory_variables.size() < 2);
  if(memory_variables.size() > 0) {
    auto var = memory_variables[0];
    auto value = var.from_state(target, rewrite);
    auto di = get_di(number, var.is_rewrite);
    deref_map[di] = value;
  }

};


ConjunctionInvariant* Invariant::AND(Invariant* other) {
  auto ci = new ConjunctionInvariant();
  ci->add_invariant(this);
  ci->add_invariant(other);
  return ci;
}


