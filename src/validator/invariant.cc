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
#include "src/validator/invariants.h"

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
    //cout << "Looking at " << var << endl;
    if(var.is_dereference()) {
      //cout << "  Memory dereference!" << endl;
      memory_variables.push_back(var);
    } else {
      //cout << "  Not memory dereference!" << endl;
    }
  }

  assert(memory_variables.size() < 2);
  if(memory_variables.size() > 0) {
    auto var = memory_variables[0];
    //cout << "Processing variable " << var << " number=" << number << endl;
    if(var.is_valid(target, rewrite)) {
      auto value = var.get_addr(target, rewrite);
      //cout << "  * value = " << value << endl;
      auto di = get_di(number, var.is_rewrite);
      deref_map[di] = value;
      //cout << "  * adding to dereference map" << endl;
      //cout << "  * deref_map = " << &deref_map << endl;
      //cout << "  * deref_map.size() = " << deref_map.size() << endl;
    } else {
      //cout << "  * invalid" << endl;
    }
  }

};


Invariant* Invariant::deserialize(istream& in) {
  string class_name;
  in >> ws >> class_name;

  if(class_name == "ConjunctionInvariant") {
    return new ConjunctionInvariant(in);    
  } else if (class_name == "DisjunctionInvariant") {
    return new DisjunctionInvariant(in);
  } else if (class_name == "EqualityInvariant") {
    return new EqualityInvariant(in);
  } else if (class_name == "FalseInvariant") {
    return new FalseInvariant(in);
  } else if (class_name == "FlagInvariant") {
    return new FlagInvariant(in);
  } else if (class_name == "FlagSetInvariant") {
    return new FlagSetInvariant(in);
  } else if (class_name == "ImplicationInvariant") {
    return new ImplicationInvariant(in);
  } else if (class_name == "InequalityInvariant") {
    return new InequalityInvariant(in);
  } else if (class_name == "MemoryEqualityInvariant") {
    return new MemoryEqualityInvariant(in);
  } else if (class_name == "MemoryNullInvariant") {
    return new MemoryNullInvariant(in);
  } else if (class_name == "Mod2NInvariant") {
    return new Mod2NInvariant(in);
  } else if (class_name == "NonzeroInvariant") {
    return new NonzeroInvariant(in);
  } else if (class_name == "NoSignalsInvariant") {
    return new NoSignalsInvariant(in);
  } else if (class_name == "NotInvariant") {
    return new NotInvariant(in);
  } else if (class_name == "PointerNullInvariant") {
    return new PointerNullInvariant(in);
  } else if (class_name == "PointerRangeInvariant") {
    return new PointerRangeInvariant(in);
  } else if (class_name == "RangeInvariant") {
    return new RangeInvariant(in);
  } else if (class_name == "SignInvariant") {
    return new SignInvariant(in);
  } else if (class_name == "StateEqualityInvariant") {
    return new StateEqualityInvariant(in);
  } else if (class_name == "TopZeroInvariant") {
    return new TopZeroInvariant(in);
  } else if (class_name == "TrueInvariant") {
    return new TrueInvariant(in);
  } else {
    cerr << "Got bad invariant class: " << class_name << endl;
    assert(false);
    exit(1);
  }
}


ConjunctionInvariant* Invariant::AND(Invariant* other) {
  auto ci = new ConjunctionInvariant();
  ci->add_invariant(this);
  ci->add_invariant(other);
  return ci;
}


