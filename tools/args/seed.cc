// Copyright 2013-2015 Stanford University
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

#include "tools/args/seed.h"

using namespace cpputil;
using namespace std;

namespace stoke {

Heading& seed_group =
  Heading::create("Random Seed Options:");

ValueArg<default_random_engine::result_type>& seed_arg =
  ValueArg<default_random_engine::result_type>::create("seed")
  .usage("<int>")
  .description("Random seed for stoke tools; set to zero for random")
  .default_val(0);

} // namespace stoke
