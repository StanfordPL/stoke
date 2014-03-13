#ifndef STOKE_SRC_STATE_ADDR_ITERATOR_H
#define STOKE_SRC_STATE_ADDR_ITERATOR_H

#include "src/ext/cpputil/include/container/bit_vector.h"

namespace stoke {

class addr_iterator {
	/** Needs access to constructor. */
	friend class Memory;

	public:
		/** Dereference. */
		size_t operator*() const {
			return *itr_ + base_;
		}
		/** Incrememnt. */
		addr_iterator& operator++() {
			++itr_;
			return *this;
		}

		/** Equality defined in terms of virtual address. */
		bool operator==(const addr_iterator& rhs) const {
			return itr_ == rhs.itr_ && base_ == rhs.base_;
		}
		/** Inequality defined in terms of virtual address. */
		bool operator!=(const addr_iterator& rhs) const {
			return itr_ != rhs.itr_ || base_ != rhs.base_;
		}

	private:
		/** This constructor is only visible to Memory. */
		addr_iterator(const cpputil::BitVector::const_set_bit_index_iterator& itr, size_t base) :
			itr_(itr), base_(base) { }

		/** Set bytes. */
		cpputil::BitVector::const_set_bit_index_iterator itr_;
		/** Virtual memory base address. */
		size_t base_;
};

} // namespace stoke

#endif
