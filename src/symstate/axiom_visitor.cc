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

#include "src/symstate/axiom_visitor.h"

using namespace stoke;

const std::set<std::string> SymAxiomVisitor::commutative_functions_ = {
  "add_double",
  "add_single",
  "bv_multiply_8",
  "bv_multiply_16",
  "bv_multiply_32",
  "bv_multiply_64",
  "bv_multiply_128",
  "bv_multiply_256"
};

const std::set<std::string> SymAxiomVisitor::associative_functions_ = {
  "add_double",
  "add_single",
  "sub_double",
  "sub_single"
};

