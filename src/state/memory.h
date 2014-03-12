#ifndef STOKE_SRC_STATE_MEMORY_H
#define STOKE_SRC_STATE_MEMORY_H

#include <cassert>
#include <iostream>
#include <stdint.h>
#include <string>

#include "src/ext/cpputil/include/container/bit_vector.h"

namespace stoke {

class Memory {
 public:
  /** Creates an empty memory. */
  Memory() {
    resize(0, 0);
  }

  /** Sets the virtual address base and size. Rounds down to 256-bit align. Pads with headroom. */
  Memory& resize(uint64_t base, size_t size) {
    base_ = base & 0xffffffffffffffe0;
		
		size += (base % 32) + 32; 
		contents_.resize_for_fixed_bytes(size);
		valid_.resize_for_bits(size);
		def_.resize_for_bits(size);

    return *this;
  }

	/** Zeros memory and resets valid and defined bits. */
	void clear() {
		contents_.reset();
		valid_.reset();
		def_.reset();
	}

  /** Logical memory size; doesn't include headroom. */
  size_t size() const {
    return contents_.num_fixed_bytes() - 32;
  }
  /** Lower bound on valid addresses; returns aligned value. */
  uint64_t lower_bound() const {
    return base_;
  }
  /** Upper bound on valid addresses; doesn't include headroom. */
  uint64_t upper_bound() const {
    return base_ + size();
  }
  /** Returns true if a virtual address is contained in this memory; does not include headroom. */
  bool in_range(uint64_t addr) const {
    return addr >= lower_bound() && addr < upper_bound();
  }

  /** Copy defined state from another memory. */
  void copy_defined(const Memory& rhs);

  /** Element access; undefined for invalid bytes */
  uint8_t& operator[](size_t addr) {
    assert(is_valid(addr));
    return contents_.get_fixed_byte(addr - base_);
  }
  /** Element access; undefined for invalid bytes */
  uint8_t operator[](size_t addr) const {
    assert(is_valid(addr));
    return contents_.get_fixed_byte(addr - base_);
  }

  /** Pointer to underlying data. */
  void* data() {
    return contents_.data();
  }
  /** Pointer to the valid bit mask. */
  void* valid_mask() {
    return valid_.data();
  }
  /** Pointer to the defined bit mask. */
  void* defined_mask() {
    return def_.data();
  }

  /** Returns true if a byte is valid. */
  bool is_valid(uint64_t addr) const {
		assert(in_range(addr));
    return valid_[addr - base_];
  }
  /** Sets this byte as valid. */
  Memory& set_valid(uint64_t addr, bool v) {
    assert(in_range(addr));
    valid_[addr - base_] = v;
    return *this;
  }
  /** Returns true if a byte is defined; undefined for invalid bytes */
  bool is_defined(uint64_t addr) const {
		assert(is_valid(addr));
    return def_[addr - base_];
  }
  /** Sets this byte as defined; undefined for invalid bytes */
  Memory& set_defined(uint64_t addr, bool d) {
    assert(is_valid(addr));
    def_[addr - base_] = d;
    return *this;
  }

	/** TODO... we need to make an iterator over defined bytes. */

  /** Bit-wise xor; ignores shadows. */
  Memory& operator^=(const Memory& rhs) {
    contents_ ^= rhs.contents_;
    return *this;
  }
  /** Bit-wise xor; ignores shadows. */
  Memory operator^(const Memory& rhs) {
    auto ret = *this;
    return ret ^= rhs;
  }

  /** Comparison based on components; ignores shadows. */
  bool operator==(const Memory& rhs) const {
    return base_ == rhs.base_ && contents_ == rhs.contents_;
  }
  /** Comparison based on components; ignores shadows. */
  bool operator!=(const Memory& rhs) const {
    return base_ != rhs.base_ || contents_ != rhs.contents_;
  }

  /** I/O */
  std::istream& read(std::istream& is) {
    read_summary(is);
		std::string ignore;
		getline(is, ignore);
    read_contents(is);
    return is;
  }
  /** I/O */
  std::ostream& write(std::ostream& os) const {
    write_summary(os);
		os << std::endl;
    write_contents(os);
    return os;
  }

 private:
  /** Virtual base address. */
  uint64_t base_;
  /** Virtual memory sandbox. */
  cpputil::BitVector contents_;
  /** Shadow bit vector for tracking valid bytes. */
  cpputil::BitVector valid_;
  /** Shadow bit vector for tracking defined bytes. */
  cpputil::BitVector def_;

  /** Returns true if the quad at this address contains a valid bit */
  bool valid_row(uint64_t addr) const {
		assert(addr % 8 == 0);
		return valid_.get_fixed_byte((addr - base_)/8) != 0;
	}
  /** Counts the number of valid rows */
  size_t valid_count() const {
		return valid_.num_set_bytes();
	}

  /** Reads summary information */
  void read_summary(std::istream& is);
  /** Read a row from contents */
  void read_row(std::istream& is);
  /** Read contents */
  void read_contents(std::istream& is);

  /** Writes summary information */
  void write_summary(std::ostream& os) const;
  /** Write a row from contents */
  void write_row(std::ostream& os, uint64_t i) const;
  /** Write contents */
  void write_contents(std::ostream& os) const;
};

} // namespace stoke

#endif
