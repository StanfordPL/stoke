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

#include "src/ext/cpputil/include/container/bit_vector.h"

namespace stoke {

class RFlags {
	public:
		/** Creates an Rflags register with n bits. */
		RFlags(size_t n) {
			contents_.resize_for_bits(n);
		}

		/** Returns the value of the ith bit of a flag. */
		bool is_set(size_t e, size_t i = 0) const {
			assert(e+i < contents_.num_bits());
			return contents_[e+i];
		}
		/** Sets the value of the ith bit of a flag. */
		void set(size_t e, bool val, size_t i = 0) {
			assert(e+i < contents_.num_bits());
			contents_[e+i] = val;
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

	private:
		/** Rflag contents. */
		cpputil::BitVector contents_;	
};

} // namespace stoke

#endif 
