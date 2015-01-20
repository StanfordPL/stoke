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

#ifndef STOKE_SRC_TUNIT_TUNIT_H
#define STOKE_SRC_TUNIT_TUNIT_H

#include <iostream>
#include <string>
#include <boost/optional.hpp>

#include "src/ext/x64asm/include/x64asm.h"

namespace stoke {

struct TUnit {
  /** The name of the function in this translation unit. */
  std::string name;
  /** The text of the function in this translation unit. */
  x64asm::Code code;
  /** User-provided maybe read set. */
  boost::optional<x64asm::RegSet> maybe_read_set;
  /** User-provided must read set. */
  boost::optional<x64asm::RegSet> must_read_set;
  /** User-provided maybe write set. */
  boost::optional<x64asm::RegSet> maybe_write_set;
  /** User-provided must write set. */
  boost::optional<x64asm::RegSet> must_write_set;
  /** User-provided maybe undef set. */
  boost::optional<x64asm::RegSet> maybe_undef_set;
  /** User-provided must undef set. */
  boost::optional<x64asm::RegSet> must_undef_set;

  struct MayMustSets {
    x64asm::RegSet must_read_set;
    x64asm::RegSet must_write_set;
    x64asm::RegSet must_undef_set;
    x64asm::RegSet maybe_read_set;
    x64asm::RegSet maybe_write_set;
    x64asm::RegSet maybe_undef_set;
  };

  /** Returns the may/must sets, considering the user-provided values, and
    using the provided defaults otherwise. */
  MayMustSets get_may_must_sets(MayMustSets& defaults) const {
    x64asm::RegSet res_must_read_set = defaults.must_read_set;
    x64asm::RegSet res_must_write_set = defaults.must_write_set;
    x64asm::RegSet res_must_undef_set = defaults.must_undef_set;
    x64asm::RegSet res_maybe_read_set = defaults.maybe_read_set;
    x64asm::RegSet res_maybe_write_set = defaults.maybe_write_set;
    x64asm::RegSet res_maybe_undef_set = defaults.maybe_undef_set;
    if (must_read_set) {
      res_must_read_set = *must_read_set;
      if (!maybe_read_set) {
        // make sure maybe/must sets are consistent (user-provided sets take precedence over default)
        res_maybe_read_set |= res_must_read_set;
      }
    }
    if (must_write_set) {
      res_must_write_set = *must_write_set;
      if (!maybe_write_set) {
        // make sure maybe/must sets are consistent (user-provided sets take precedence over default)
        res_maybe_write_set |= res_must_write_set;
      }
    }
    if (must_undef_set) {
      res_must_undef_set = *must_undef_set;
      if (!maybe_undef_set) {
        // make sure maybe/must sets are consistent (user-provided sets take precedence over default)
        res_maybe_undef_set |= res_must_undef_set;
      }
    }
    if (maybe_read_set) {
      res_maybe_read_set = *maybe_read_set;
      if (!must_read_set) {
        // make sure maybe/must sets are consistent (user-provided sets take precedence over default)
        res_must_read_set &= res_maybe_read_set;
      }
    }
    if (maybe_write_set) {
      res_maybe_write_set = *maybe_write_set;
      if (!must_write_set) {
        // make sure maybe/must sets are consistent (user-provided sets take precedence over default)
        res_must_write_set &= res_maybe_write_set;
      }
    }
    if (maybe_undef_set) {
      res_maybe_undef_set = *maybe_undef_set;
      if (!must_undef_set) {
        // make sure maybe/must sets are consistent (user-provided sets take precedence over default)
        res_must_undef_set &= res_maybe_undef_set;
      }
    }
    return {
      res_must_read_set,
      res_must_write_set,
      res_must_undef_set,
      res_maybe_read_set,
      res_maybe_write_set,
      res_maybe_undef_set,
    };
  }
};

std::istream& operator>>(std::istream& is, TUnit& t);
std::ostream& operator<<(std::ostream& os, const TUnit& t);

} // namespace stoke

#endif
