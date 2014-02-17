#ifndef STOKE_SRC_STATE_MEMORY_H
#define STOKE_SRC_STATE_MEMORY_H

#include <cassert>
#include <iostream>
#include <stdint.h>
#include <string>

#include "src/ext/cpputil/include/container/bit_vector.h"
#include "src/state/shadow.h"

namespace stoke {

class Memory {
 public:
  /** Sets the virtual address base. Rounds down to 256-bit align. */
  Memory& set_base(uint64_t base) {
    base_ = (base / 0x20) * 0x20;
    return *this;
  }
  /** Sets the virtual address size in bytes. Pads with with 256-bits headroom, rounds to 256-bit align. */
  Memory& resize(size_t size) {
    const auto padded_size = ((size + 0x5f) / 0x20) * 0x20;

    contents_.resize_for_fixed_bytes(padded_size);
    valid_.resize(padded_size);
    defined_.resize(padded_size);

    return *this;
  }

  /** Element access */
  uint8_t& operator[](size_t i) {
    assert(in_range(i));
    return contents_.get_fixed_byte(i - base_);
  }

  /** Returns true if an address is valid. */
  bool is_valid(uint64_t addr) const {
    return valid_.is_set(addr - base_);
  }
  /** Sets this byte as valid. */
  Memory& set_valid(uint64_t addr, bool v) {
    assert(in_range(addr));
    valid_.set(addr - base_, v);

    return *this;
  }

  /** Returns true if an address is defined. */
  bool is_defined(uint64_t addr) const {
    return defined_.is_set(addr - base_);
  }
  /** Sets this byte as defined. Does NOT set valid bit! */
  Memory& set_defined(uint64_t addr, bool d) {
    assert(in_range(addr));
    defined_.set(addr - base_, d);

    return *this;
  }

  /** Returns a pointer to the valid bit mask. */
  void* begin_valid() {
    return valid_.begin();
  }
  /** Commits direct changes made to the valid mask. */
  void commit_valid() {
    valid_.commit();
  }
  /** Aborts direct changes made to the valid mask. */
  void abort_valid() {
    valid_.abort();
  }

  /** Returns a pointer to the defined bit mask. */
  void* begin_defined() {
    return defined_.begin();
  }
  /** Commits direct changes made to the defined mask. Only examines valid bits. */
  void commit_defined() {
    defined_.commit();
  }
  /** Aborts direct changes made to the defined mask. Only examines valid bits. */
  void abort_defined() {
    defined_.abort();
  }

  /** Comparison based on components; ignores shadows. */
  bool operator==(const Memory& rhs) const {
    return base_ == rhs.base_ && contents_ == rhs.contents_;
  }
  /** Comparison based on components; ignores shadows. */
  bool operator!=(const Memory& rhs) const {
    return !(*this == rhs);
  }

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
  uint64_t base_;
  cpputil::BitVector contents_;
  Shadow valid_;
  Shadow defined_;

  /** Lower bound on valid addresses */
  uint64_t lower_bound() const {
    return base_;
  }
  /** Upper bound on valid addresses */
  uint64_t upper_bound() const {
    return base_ + contents_.num_fixed_bytes() - 0x20;
  }
  /** Returns true if a virtual address is contained in this memory. */
  bool in_range(uint64_t addr) const {
    return addr >= lower_bound() && addr < upper_bound();
  }

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
