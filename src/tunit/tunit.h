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

#include <cassert>
#include <iostream>
#include <string>
#include <boost/optional.hpp>

#include "src/ext/x64asm/include/x64asm.h"

namespace stoke {

struct TUnit {
	/** POD struct for aggregating sets */
  struct MayMustSets {
    x64asm::RegSet must_read_set;
    x64asm::RegSet must_write_set;
    x64asm::RegSet must_undef_set;
    x64asm::RegSet maybe_read_set;
    x64asm::RegSet maybe_write_set;
    x64asm::RegSet maybe_undef_set;
  };

	/** Constructs a minimal valid function */
	TUnit() {
		code_ = {{
			{x64asm::LABEL_DEFN, {x64asm::Label(".anonymous_function")}},
			{x64asm::RET}
		}};
		file_offset_ = 0;
		capacity_ = 0;
		rip_offset_ = 0;
	}
	/** Constructs a funtion with non-default values */
	TUnit(const x64asm::Code& code, uint64_t fo = 0, size_t c = 0, uint64_t ro = 0) {
		code_ = code;
		file_offset_ = fo;
		capacity_ = c;
		rip_offset_ = ro;
	}

	/** Returns the underlying code sequence */
	x64asm::Code& get_code() {
		return code_;
	}
	/** Returns the underlying code sequence */
	const x64asm::Code& get_code() const {
		return code_;
	}

	/** Returns the label at the beginning of this function */
	const x64asm::Label& get_leading_label() const {
		assert(invariant_first_instr_is_label());
		return code_[0].get_operand<x64asm::Label>(0);
	}
	/** Returns the name of this function */
	const std::string get_name() const {
		return get_leading_label().get_text().substr(1);
	}

	/** Returns the file offset of this function */
	uint64_t get_file_offset() const {
		return file_offset_;
	}
	/** Returns the number of hex bytes available to this function */
	size_t get_capacity() const {
		return capacity_;
	}
	/** Returns the rip offset of this function */
	uint64_t get_rip_offset() const {
		return rip_offset_;
	}

  /** Returns may/must sets, considering user-provided values, defaults otherwise */
  MayMustSets get_may_must_sets(const MayMustSets& defaults) const;
	/** Returns may/must sets, assuming empty defaults */
	MayMustSets get_may_must_sets() const {
		MayMustSets empty = { 
			x64asm::RegSet::empty(),
			x64asm::RegSet::empty(),
			x64asm::RegSet::empty(),
			x64asm::RegSet::empty(),
			x64asm::RegSet::empty(),
			x64asm::RegSet::empty()
		};
		return get_may_must_sets(empty);
	}

	/** Checks that the first instruction is a label */
	bool invariant_first_instr_is_label() const {
		if (code_.empty()) {
			return false;
		}
		return code_[0].get_opcode() == x64asm::LABEL_DEFN;
	}
	/** Checks that this translation unit statisfies all invariants */
	bool check_invariants() const {
		return invariant_first_instr_is_label();
	}

  /** Read from istream. */
  std::istream& read_text(std::istream& is);
  /** Write to ostream. */
  std::ostream& write_text(std::ostream& os) const;

private:
  /** The text of the code in this translation unit. */
  x64asm::Code code_;

	/** The physical address of this function in a file */
	uint64_t file_offset_;
	/** The total number of hex bytes available to this function */
	uint64_t capacity_;
	/** The logical address of this function inside a process */
	uint64_t rip_offset_;
	
  /** User-provided maybe read set. */
  boost::optional<x64asm::RegSet> maybe_read_set_;
  /** User-provided must read set. */
  boost::optional<x64asm::RegSet> must_read_set_;
  /** User-provided maybe write set. */
  boost::optional<x64asm::RegSet> maybe_write_set_;
  /** User-provided must write set. */
  boost::optional<x64asm::RegSet> must_write_set_;
  /** User-provided maybe undef set. */
  boost::optional<x64asm::RegSet> maybe_undef_set_;
  /** User-provided must undef set. */
  boost::optional<x64asm::RegSet> must_undef_set_;

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
