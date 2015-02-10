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

  /** Returns may/must sets, considering user-provided values, defaults otherwise */
  MayMustSets get_may_must_sets(const MayMustSets& defaults) const;

  /** Read from istream. */
  std::istream& read_text(std::istream& is);
  /** Write to ostream. */
  std::ostream& write_text(std::ostream& os) const;

private:
  std::istream& read_formatted_text(std::istream& is);
  std::istream& read_naked_text(std::istream& is);
};

} // namespace stoke

namespace std {

inline istream& operator>>(istream& is, stoke::TUnit& t) {
  return t.read_text(is);
}

inline ostream& operator<<(ostream& os, const stoke::TUnit& t) {
  return t.write_text(os);
}

} // namespace std

#endif
