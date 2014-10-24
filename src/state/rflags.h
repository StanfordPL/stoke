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

#ifndef STOKE_SRC_STATE_RFLAGS_H
#define STOKE_SRC_STATE_RFLAGS_H

#include <cassert>
#include <iostream>

#include "src/ext/cpputil/include/container/bit_vector.h"

namespace stoke {

class RFlags {
	public:
		/** Creates an Rflags register with n bits. */
		RFlags() {
			contents_.resize_for_bits(size());
			for (size_t i = 0, ie = size(); i < ie; ++i) {
				if (is_fixed_true(i)) {
					set(i, true);
				} else if (is_fixed_false(i)) {
					set(i, false);
				}
			}
		}

		/** Returns the number of meaningful bits. */
		size_t size() const {
			return 22;
		}

		/** Returns true if this is a reserved flag. */
		bool is_reserved(size_t i) const {
			assert(i < size());
			return i == 1 || i == 3 || i == 5;
		}
		/** Returns true if this is a status flag. */
		bool is_status(size_t i) const {
			assert(i < size());
			return i == 0 || i == 2 || i == 4 || i == 6 || i == 7 || i == 11;
		}
		/** Returns true if this is a control flag. */
		bool is_control(size_t i) const {
			assert(i < size());
			return i >= 8 && i <= 10;
		}
		/** Returns true if this is a system flag. */
		bool is_system(size_t i) const {
			assert(i < size());
			return i >= 12 && i <= 21;
		}

		/** Returns true if this bit is fixed to true. */
		bool is_fixed_true(size_t i) const {
			assert(i < size());
			return i == 1 || i == 9;
		}
		/** Returns true if this bit is fixed to false. */
		bool is_fixed_false(size_t i) const {
			assert(i < size());
			return i == 3 || i == 5 || i == 8 || i == 10 || i >= 12;
		}
		/** Returns true if this bit has a fixed value. */
		bool is_fixed(size_t i) const {
			return is_fixed_true(i) || is_fixed_false(i);
		}

		/** Returns the value of the ith bit of a flag. */
		bool is_set(size_t e, size_t i = 0) const {
			assert(e+i < size());
			return contents_[e+i];
		}
		/** Sets the value of the ith bit of a flag; undefined for incorrect fixed values */
		void set(size_t e, bool val, size_t i = 0) {
			assert(e+i < size());
			assert(!is_fixed(e+i) || (is_fixed_true(e+i) && val) || (is_fixed_false(e+i) && !val));
			contents_[e+i] = val;
		}

		/** Exposes underlying bit vector. */
		const void* data() const {
			return contents_.data();
		}

		/** Bit-wise xor */
		RFlags& operator^=(const RFlags& rhs) {
			contents_ ^= rhs.contents_;
			return *this;
		}
		/** Bit-wise xor */
		RFlags operator^(const RFlags& rhs) const {
			auto ret = *this;
			return ret ^= rhs;
		}

		/** Equality */
		bool operator==(const RFlags& rhs) const {
			return contents_ == rhs.contents_;
		}
		/** Inequality */
		bool operator!=(const RFlags& rhs) const {
			return contents_ != rhs.contents_;
		}

		/** Write text. */
		std::ostream& write_text(std::ostream& os, const char** names, size_t padding) const;
		/** Read text. */
		std::istream& read_text(std::istream& is);

		/** Write binary. */
		std::ostream& write_bin(std::ostream& os) const {
			os.write((const char*)contents_.data(), sizeof(uint64_t));
			return os;
		}
		/** Read binary. */
		std::istream& read_bin(std::istream& is) {
			is.read((char*)contents_.data(), sizeof(uint64_t));
			return is;
		}

	private:
		/** Rflag contents. */
		cpputil::BitVector contents_;	
};

} // namespace stoke

#endif 
