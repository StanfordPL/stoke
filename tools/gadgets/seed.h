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

#ifndef STOKE_TOOLS_GADGETS_SEED_H
#define STOKE_TOOLS_GADGETS_SEED_H

#include <chrono>
#include <random>

#include "tools/args/seed.h"

namespace stoke {

class SeedGadget {
 public:
  SeedGadget() {
    seed_ = seed_arg;
    if (seed_ == 0) {
      const auto time = std::chrono::system_clock::now().time_since_epoch().count();
      std::default_random_engine gen(time);
      seed_ = gen();
    }
  }

  operator std::default_random_engine::result_type() const {
    return seed_;
  }

 private:
  std::default_random_engine::result_type seed_;
};

} // namespace stoke

#endif
