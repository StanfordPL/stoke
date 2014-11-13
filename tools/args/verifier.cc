// Copyright 2014 eric schkufza
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

#include "tools/args/verifier.h"

using namespace cpputil;

namespace stoke {

Heading& verifier_heading =
  Heading::create("Verifier Options:");

ValueArg<Strategy, StrategyReader, StrategyWriter>& strategy_arg =
  ValueArg<Strategy, StrategyReader, StrategyWriter>::create("strategy")
  .usage("(none|hold_out|extension)")
  .description("Verification strategy")
  .default_val(Strategy::NONE);

} // namespace stoke
