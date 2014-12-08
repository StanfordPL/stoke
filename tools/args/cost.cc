// Copyright 2013-2015 Eric Schkufza, Rahul Sharma, Berkeley Churchill, Stefan Heule
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#include "tools/args/cost.h"

#include "src/cost/cost_function.h"

using namespace cpputil;

namespace stoke {

Heading& cost_heading =
  Heading::create("Cost Function Evaluation Options:");

ValueArg<Cost>& max_cost_arg =
  ValueArg<Cost>::create("max_cost")
  .usage("<int>")
  .description("Give up once cost exceeds this value")
  .default_val(CostFunction::max_cost - 1);

ValueArg<uint32_t>& k_arg =
  ValueArg<uint32_t>::create("k")
  .usage("<int>")
  .description("Multiplier for the correctness term")
  .default_val(1);

} // namespace stoke
