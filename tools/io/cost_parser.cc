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


#include "tools/gadgets/correctness_cost.h"
#include "tools/io/cost_parser.h"

using namespace std;
using namespace stoke;

char CostParser::peek(size_t n) const {
  if (index_ + n >= s_.size())
    return 0;
  return s_[index_ + n];
}

char CostParser::next() {
  if (index_ >= s_.size())
    return 0;
  char c = s_[index_];
  index_++;
  return c;
}

void CostParser::error(std::string m) {
  if(error_ == "")
    error_ = m;
}

CostFunction* CostParser::parse_VAR() {
  std::string var = "";

  while(peek() >= 'a' && peek() <= 'z') {
    var = var.append(1, next());
  }

  if (var == "correctness") {
    return new CorrectnessCostGadget(target_, sb_);
  } else {
    error("Undefined cost function: " + var);
    return NULL;
  }
}

CostFunction* CostParser::parse_S() {
  return parse_VAR();
}


