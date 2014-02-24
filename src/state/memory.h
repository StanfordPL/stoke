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
    set_base(0);
    resize(0);
  }

  /** Sets the virtual address base. Rounds down to 256-bit align. */
  Memory& set_base(uint64_t base) {
    base_ = (base / 32) * 32;
    return *this;
  }
  /** Sets the virtual address size in bytes. Pads with with 256-bits headroom, rounds to 256-bit align. */
  Memory& resize(size_t size) {
    const auto padded_size = ((size + 0x5f) / 32) * 32;

    contents_.resize_for_fixed_bytes(padded_size);
    valid_.resize_for_bits(padded_size);
    def_.resize_for_bits(padded_size);

    return *this;
  }

  /** Logical memory size. */
  size_t size() const {
    return contents_.num_fixed_bytes() - 32;
  }
  /** Lower bound on valid addresses */
  uint64_t lower_bound() const {
    return base_;
  }
  /** Upper bound on valid addresses */
  uint64_t upper_bound() const {
    return base_ + size();
  }
  /** Returns true if a virtual address is contained in this memory. */
  bool in_range(uint64_t addr) const {
    return addr >= lower_bound() && addr < upper_bound();
  }

  /** Copy defined state from another memory. */
  void copy_defined(const Memory& rhs);

  /** Element access */
  uint8_t& operator[](size_t i) {
    assert(in_range(i));
    return contents_.get_fixed_byte(i - base_);
  }
  /** Element access */
  const uint8_t operator[](size_t i) const {
    assert(in_range(i));
    return contents_.get_fixed_byte(i - base_);
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
    return valid_[addr - base_];
  }
  /** Sets this byte as valid. */
  Memory& set_valid(uint64_t addr, bool v) {
    assert(in_range(addr));
    valid_[addr - base_] = v;
    return *this;
  }
  /** Returns true if a byte is defined. */
  bool is_defined(uint64_t addr) const {
    return def_[addr - base_];
  }
  /** Sets this byte as defined. Does NOT set valid bit! */
  Memory& set_defined(uint64_t addr, bool d) {
    assert(in_range(addr));
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
    read_contents(is);
    return is;
  }
  /** I/O */
  std::ostream& write(std::ostream& os) const {
    write_summary(os);
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

  /** Returns true if any address in this range is valid */
  bool any_valid(uint64_t begin, uint64_t end) const;
  /** Counts the number of valid rows */
  size_t valid_count() const;

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
