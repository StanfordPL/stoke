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

  if(memory_variables.size() > 0) {
    auto var = memory_variables[0];
    //cout << "Processing variable " << var << " number=" << number << endl;
    //if(var.is_valid(target, rewrite)) {
    auto value = var.get_addr(target, rewrite);
    //cout << "  * value = " << value << endl;
    auto di = get_di(number, var.is_rewrite);
    deref_map[di] = value;
    //cout << "  * adding to dereference map" << endl;
    //cout << "  * deref_map = " << &deref_map << endl;
    //cout << "  * deref_map.size() = " << deref_map.size() << endl;
    //} else {
    //  cout << "  * invalid" << endl;
    //}
  }

};


std::shared_ptr<Invariant> Invariant::deserialize(istream& in) {
  string class_name;
  in >> ws >> class_name;
  CHECK_STREAM(in);

  if(class_name == "ConjunctionInvariant") {
    return std::make_shared<ConjunctionInvariant>(in);    
  } else if (class_name == "DisjunctionInvariant") {
    return std::make_shared<DisjunctionInvariant>(in);
  } else if (class_name == "EqualityInvariant") {
    return std::make_shared<EqualityInvariant>(in);
  } else if (class_name == "ExprInvariant") {
    return std::make_shared<ExprInvariant>(in);
  } else if (class_name == "FalseInvariant") {
    return std::make_shared<FalseInvariant>(in);
  } else if (class_name == "FlagInvariant") {
    return std::make_shared<FlagInvariant>(in);
  } else if (class_name == "FlagSetInvariant") {
    return std::make_shared<FlagSetInvariant>(in);
  } else if (class_name == "ImplicationInvariant") {
    return std::make_shared<ImplicationInvariant>(in);
  } else if (class_name == "InequalityInvariant") {
    return std::make_shared<InequalityInvariant>(in);
  } else if (class_name == "MemoryConstant") {
    return std::make_shared<MemoryConstantInvariant>(in);
  } else if (class_name == "MemoryEqualityInvariant") {
    return std::make_shared<MemoryEqualityInvariant>(in);
  } else if (class_name == "MemoryNullInvariant") {
    return std::make_shared<MemoryNullInvariant>(in);
  } else if (class_name == "Mod2NInvariant") {
    return std::make_shared<Mod2NInvariant>(in);
  } else if (class_name == "NonzeroInvariant") {
    return std::make_shared<NonzeroInvariant>(in);
  } else if (class_name == "NoSignalsInvariant") {
    return std::make_shared<NoSignalsInvariant>(in);
  } else if (class_name == "NotInvariant") {
    return std::make_shared<NotInvariant>(in);
  } else if (class_name == "PointerNullInvariant") {
    return std::make_shared<PointerNullInvariant>(in);
  } else if (class_name == "PointerRangeInvariant") {
    return std::make_shared<PointerRangeInvariant>(in);
  } else if (class_name == "RangeInvariant") {
    return std::make_shared<RangeInvariant>(in);
  } else if (class_name == "SignInvariant") {
    return std::make_shared<SignInvariant>(in);
  } else if (class_name == "StateEqualityInvariant") {
    return std::make_shared<StateEqualityInvariant>(in);
  } else if (class_name == "TopZeroInvariant") {
    return std::make_shared<TopZeroInvariant>(in);
  } else if (class_name == "TrueInvariant") {
    return std::make_shared<TrueInvariant>(in);
  } else {
    cerr << "Got bad invariant class: " << class_name << endl;
    assert(false);
    exit(1);
  }
}




