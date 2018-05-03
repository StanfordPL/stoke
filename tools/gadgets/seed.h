// Copyright 2013-2016 Stanford University
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
#include <fstream>

#include "tools/args/seed.inc"

namespace stoke {

class SeedGadget {
public:
  SeedGadget() {
    seed_ = seed_arg;
    if (seed_ == 0) {
      // Get a more random number.
      // This is helpful in case we need different processes starting at the
      // same time to use different random values.  It's not random enough for
      // security though (only 64 bits of entropy).
      char random_bytes[8];
      std::ifstream dev_urandom("/dev/urandom");
      dev_urandom.read(random_bytes, 8);
      dev_urandom.close();
      uint64_t random_int = 0;
      for(size_t i = 0; i < 8; ++i) 
        random_int = (random_int << 8) | (uint64_t)random_bytes[i];
      std::cout << "Seeding with " << random_int << std::endl;

      std::default_random_engine gen(random_int);
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
