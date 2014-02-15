#ifndef STOKE_SRC_STATE_MEMORY_H
#define STOKE_SRC_STATE_MEMORY_H

#include <cassert>
#include <iostream>
#include <string>
#include <unordered_set>
#include <vector>

#include "src/ext/cpputil/include/container/bit_vector.h"

namespace stoke {

class Memory : public cpputil::BitVector{
  public:
    typedef std::unordered_set<uint64_t>::const_iterator valid_iterator;
    typedef std::unordered_set<uint64_t>::const_iterator defined_iterator;

    /** Creates a new memory. */
    Memory();

    /** Sets the virtual address of the base of this memory. Rounds down to 256-bit align. */
    Memory& set_base(uint64_t addr);
    /** Sets the virtual size of this memory in bytes. Pads with with 256-bits headroom, rounds to 256-bit align. */
    Memory& set_size(size_t size);
    /** Sets this byte as valid. */
    Memory& set_valid(uint64_t addr, bool v);
    /** Sets this byte as defined. Valid bit must be set separately! */
    Memory& set_defined(uint64_t addr, bool d);

    /** Clears all valid bits. */
    Memory& clear_valid();
    /** Clears all defined bits. Valid bits are unaffected! */
    Memory& clear_defined();
    /** Sets base, size, valid and defined bits to zero. */
    Memory& clear();

    /** Returns true if a virtual address is contained in this memory. */
    bool in_range(uint64_t addr) const;
    /** Returns true if an address is valid. */
    bool is_valid(uint64_t addr) const;
    /** Returns true if an address is defined. */
    bool is_defined(uint64_t addr) const;
    /** Returns the size of this memory in bytes. */
    size_t size() const;
    /** Returns the lower bound of this memory. */
    uint64_t lower_bound() const;
    /** Returns the upper bound of this memory. */
    uint64_t upper_bound() const;

    /** Valid address iterator. */
    valid_iterator valid_begin() const;
    /** Valid address iterator. */
    valid_iterator valid_end() const;

    /** Returns a pointer to the valid bit mask. */
    void* valid_mask();
    /** Commits direct changes made to the valid mask. */
    void commit_valid_mask();
    /** Aborts direct changes made to the valid mask. */
    void abort_valid_mask();

    /** Defined address iterator. */
    defined_iterator defined_begin() const;
    /** Defined address iterator. */
    defined_iterator defined_end() const;

    /** Returns a pointer to the defined bit mask. */
    void* defined_mask();
    /** Commits direct changes made to the defined mask. Only examines valid bits. */
    void commit_defined_mask();
    /** Aborts direct changes made to the defined mask. Only examines valid bits. */
    void abort_defined_mask();

    /** Returns pointer to underlying memory buffer. */
    void* data();

    /** STL-compliant swap. */
    void swap(Memory& rhs);

    /** I/O */
    std::istream& read(std::istream& is);
    /** I/O */
    std::ostream& write(std::ostream& os) const;

  private:
    uint64_t base_;

    std::unordered_set<uint64_t> valid_;
    std::unordered_set<uint64_t> defined_;

    std::vector<uint64_t> valid_mask_;
    std::vector<uint64_t> defined_mask_;

    /** Sets a bit in the valid/defined mask. */
    void set_mask(uint64_t addr, std::vector<uint64_t>& mask);
    /** Clears a bit in the valid/defined mask. */
    void clear_mask(uint64_t addr, std::vector<uint64_t>& mask);
    /** Is a bit set in the valid/defined mask? */
    bool is_set_mask(uint64_t addr, const std::vector<uint64_t>& mask) const;
};

} // namespace stoke 

namespace std {

/** STL-hash specialization. */
template <>
struct hash<stoke::Memory> {
  size_t operator()(const stoke::Memory& m) const;
};

/** STL-swap overload. */
void swap(stoke::Memory& lhs, stoke::Memory& rhs);

/** I/O overload. */
istream& operator>>(istream& is, stoke::Memory& r);

/** I/O overload. */
ostream& operator<<(ostream& os, const stoke::Memory& r);

} // namespace std

namespace stoke {

inline Memory::Memory() {
  set_name("MEMORY");
  clear();
}

inline Memory& Memory::set_name(const std::string& name) {
  name_ = name;
  return *this;
}

inline Memory& Memory::set_base(uint64_t base) {
  base_ = (base / 0x20) * 0x20;
  return *this;
}

inline Memory& Memory::set_size(size_t size) {
  const auto padded_size = ((size+0x5f) / 0x20) * 0x20;

  contents_.resize_for_fixed_bytes(padded_size);
  valid_mask_.resize(padded_size/0x20);
  defined_mask_.resize(padded_size/0x20);

  return *this;
}

inline Memory& Memory::set_valid(uint64_t addr, bool v) {
  assert(in_range(addr));
  if ( v ) {
    valid_.insert(addr);
    set_mask(addr, valid_mask_);
  } else {
    valid_.erase(addr);
    clear_mask(addr, valid_mask_);
  }
  return *this;
}

inline Memory& Memory::set_defined(uint64_t addr, bool d) {
  assert(in_range(addr));
  if ( d ) {
    defined_.insert(addr);
    set_mask(addr, defined_mask_);
  } else {
    defined_.erase(addr);
    clear_mask(addr, defined_mask_);
  }
  return *this;
}

inline Memory& Memory::clear_valid() {
  valid_.clear();
  for ( auto& mask : valid_mask_ )
    mask = 0;

  return *this;
}

inline Memory& Memory::clear_defined() {
  defined_.clear();
  for ( auto& mask : defined_mask_ )
    mask = 0;

  return *this;
}

inline Memory& Memory::clear() {
  set_base(0);
  set_size(0);
  clear_valid();
  clear_defined();
  
  return *this;
}

inline bool Memory::in_range(uint64_t addr) const {
  return addr >= lower_bound() && addr < upper_bound();
}

inline bool Memory::is_valid(uint64_t addr) const {
  return valid_.find(addr) != valid_.end();
}

inline bool Memory::is_defined(uint64_t addr) const {
  return defined_.find(addr) != defined_.end();
}

inline size_t Memory::size() const {
  return contents_.num_fixed_bytes() - 0x20;
}

inline uint64_t Memory::lower_bound() const {
  return base_;
}

inline uint64_t Memory::upper_bound() const {
  return base_ + size();
}

inline Memory::valid_iterator Memory::valid_begin() const {
  return valid_.begin();
}

inline Memory::valid_iterator Memory::valid_end() const {
  return valid_.end();
}

inline void* Memory::valid_mask() {
  return valid_mask_.data();
}

inline void Memory::commit_valid_mask() {
  valid_.clear();
  for ( size_t i = lower_bound(), ie = upper_bound(); i < ie; ++i )
    if ( is_set_mask(i, valid_mask_) )
      valid_.insert(i);
}

inline void Memory::abort_valid_mask() {
  for ( size_t i = lower_bound(), ie = upper_bound(); i < ie; ++i )
    if ( valid_.find(i) != valid_.end() )
      set_mask(i, valid_mask_);
    else
      clear_mask(i, valid_mask_);
}

inline Memory::defined_iterator Memory::defined_begin() const {
  return defined_.begin();
}

inline Memory::defined_iterator Memory::defined_end() const {
  return defined_.end();
}

inline void* Memory::defined_mask() {
  return defined_mask_.data();
}

inline void Memory::commit_defined_mask() {
  defined_.clear();
  for ( auto addr : valid_ )
    if ( is_set_mask(addr, defined_mask_) )
      defined_.insert(addr);
}

inline void Memory::abort_defined_mask() {
  for ( auto addr : valid_ )
    if ( defined_.find(addr) != defined_.end() )
      set_mask(addr, defined_mask_);
    else
      clear_mask(addr, defined_mask_);
}

inline void* Memory::data() {
  return contents_.data();
}

inline uint8_t& Memory::get_fixed_byte(uint64_t addr) {
  assert(in_range(addr));
  return contents_.get_fixed_byte(addr-base_);
}

inline uint16_t& Memory::get_fixed_word(uint64_t addr) {
  assert(in_range(addr));
  assert((addr-base_) % 2 == 0);
  return contents_.get_fixed_word((addr-base_/2));
}

inline uint32_t& Memory::get_fixed_double(uint64_t addr) {
  assert(in_range(addr));
  assert((addr-base_) % 4 == 0);
  return contents_.get_fixed_double((addr-base_)/4);
}

inline uint64_t& Memory::get_fixed_quad(uint64_t addr) {
  assert(in_range(addr));
  assert((addr-base_) % 8 == 0);
  return contents_.get_fixed_quad((addr-base_)/8);
}

inline float& Memory::get_float_single(uint64_t addr) {
  assert(in_range(addr));
  assert((addr-base_) % 4 == 0);
  return contents_.get_float_single((addr-base_)/4);
}

inline double& Memory::get_float_double(uint64_t addr) {
  assert(in_range(addr));
  assert((addr-base_) % 8 == 0);
  return contents_.get_float_double((addr-base_)/8);
}

inline const uint8_t Memory::get_fixed_byte(uint64_t addr) const {
  assert(in_range(addr));
  return contents_.get_fixed_byte(addr-base_);
}

inline const uint16_t Memory::get_fixed_word(uint64_t addr) const {
  assert(in_range(addr));
  assert((addr-base_) % 2 == 0);
  return contents_.get_fixed_word((addr-base_/2));
}

inline const uint32_t Memory::get_fixed_double(uint64_t addr) const {
  assert(in_range(addr));
  assert((addr-base_) % 4 == 0);
  return contents_.get_fixed_double((addr-base_)/4);
}

inline const uint64_t Memory::get_fixed_quad(uint64_t addr) const {
  assert(in_range(addr));
  assert((addr-base_) % 8 == 0);
  return contents_.get_fixed_quad((addr-base_)/8);
}

inline const float Memory::get_float_single(uint64_t addr) const {
  assert(in_range(addr));
  assert((addr-base_) % 4 == 0);
  return contents_.get_float_single((addr-base_)/4);
}

inline const double Memory::get_float_double(uint64_t addr) const {
  assert(in_range(addr));
  assert((addr-base_) % 8 == 0);
  return contents_.get_float_double((addr-base_)/8);
}

inline bool Memory::operator==(const Memory& rhs) const {
  return contents_ == rhs.contents_ && 
      base_ == rhs.base_ &&
      valid_ == rhs.valid_ &&
      defined_ == rhs.defined_;
}

inline bool Memory::operator!=(const Memory& rhs) const {
  return !(*this == rhs);
}

inline Memory& Memory::operator&=(const Memory& rhs) {
  for ( const auto& addr : defined_ )
    if ( rhs.is_defined(addr) )
      get_fixed_byte(addr) &= rhs.get_fixed_byte(addr);
  return *this;
}

inline Memory& Memory::operator|=(const Memory& rhs) {
  for ( const auto& addr : defined_ )
    if ( rhs.is_defined(addr) )
      get_fixed_byte(addr) |= rhs.get_fixed_byte(addr);
  return *this;
}

inline Memory& Memory::operator^=(const Memory& rhs) {
  for ( const auto& addr : defined_ )
    if ( rhs.is_defined(addr) )
      get_fixed_byte(addr) ^= rhs.get_fixed_byte(addr);
  return *this;
}

inline Memory Memory::operator&(const Memory& rhs) const {
  auto ret = *this;
  return ret &= rhs;
}

inline Memory Memory::operator|(const Memory& rhs) const {
  auto ret = *this;
  return ret |= rhs;
}

inline Memory Memory::operator^(const Memory& rhs) const {
  auto ret = *this;
  return ret ^= rhs;
}

inline Memory Memory::operator~() const {
  auto ret = *this;
  for ( const auto& addr : defined_ )
    ret.get_fixed_byte(addr) = ~get_fixed_byte(addr);
  return ret;
}

inline void Memory::swap(Memory& rhs) {
  std::swap(name_, rhs.name_);
  std::swap(contents_, rhs.contents_);
  std::swap(base_, rhs.base_);
  std::swap(valid_, rhs.valid_);
  std::swap(defined_, rhs.defined_);
  std::swap(valid_mask_, rhs.valid_mask_);
  std::swap(defined_mask_, rhs.defined_mask_);
}

inline size_t Memory::hash() const {
  return contents_.hash();
}

inline void Memory::set_mask(uint64_t addr, std::vector<uint64_t>& mask) {
  assert(in_range(addr));
  const auto paddr = addr-base_;
  ((uint8_t*) mask.data())[paddr/8] |= (1 << (paddr%8));
}

inline void Memory::clear_mask(uint64_t addr, std::vector<uint64_t>& mask) {
  assert(in_range(addr));
  const auto paddr = addr-base_;
  ((uint8_t*) mask.data())[paddr/8] &= ~(1 << (paddr%8));
}

inline bool Memory::is_set_mask(uint64_t addr, const 
    std::vector<uint64_t>& mask) const {
  assert(in_range(addr));
  const auto paddr = addr-base_;
  return ((uint8_t*) mask.data())[paddr/8] & (1 << (paddr%8));
}

} // namespace stoke

namespace std {

inline size_t hash<stoke::Memory>::operator()(const stoke::Memory& m) const {
  return m.hash();
}

inline void swap(stoke::Memory& lhs, stoke::Memory& rhs) {
  lhs.swap(rhs);
} 

inline istream& operator>>(istream& is, stoke::Memory& m) {
  return m.read(is);
}

inline ostream& operator<<(ostream& os, const stoke::Memory& m) {
  return m.write(os);
}

} // namespace std

#endif
