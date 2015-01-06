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

#ifndef STOKE_SRC_SEARCH_STATISTICS_H
#define STOKE_SRC_SEARCH_STATISTICS_H

namespace stoke {

struct Statistics {
  /** Creates a new statistics triple. */
  Statistics() : num_proposed(0), num_succeeded(0), num_accepted(0) { }

  /** Pointwise increment. */
  Statistics& operator+=(const Statistics& rhs) {
    num_proposed += rhs.num_proposed;
    num_succeeded += rhs.num_succeeded;
    num_accepted += rhs.num_accepted;
    return *this;
  }

  /** The number of proposals that have taken place. */
  size_t num_proposed;
  /** The number of proposals that haven't immediately failed. */
  size_t num_succeeded;
  /** The number of proposals that were accepted. */
  size_t num_accepted;
};

} // namespace stoke

#endif
