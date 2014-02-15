#ifndef STOKE_SRC_STATE_MEMORY_H
#define STOKE_SRC_STATE_MEMORY_H

#include <cassert>
#include <iostream>
#include <stdint.h>
#include <string>

#include "src/ext/cpputil/include/container/bit_vector.h"
#include "src/ext/cpputil/include/serialize/hex_reader.h"
#include "src/ext/cpputil/include/serialize/hex_writer.h"
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
			const auto padded_size = ((size+0x5f) / 0x20) * 0x20;

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
  		return valid_.is_set(addr-base_);
		}
    /** Sets this byte as valid. */
    Memory& set_valid(uint64_t addr, bool v) {
			assert(in_range(addr));
			valid_.set(addr - base_, v);

			return *this;
		}

    /** Returns true if an address is defined. */
    bool is_defined(uint64_t addr) const {
			return defined_.is_set(addr-base_);
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
		bool any_valid(uint64_t begin, uint64_t end) const {
			for ( ; begin < end; ++begin ) {
				if ( is_valid(begin) ) {
					return true;
				}
			}
			return false;
		}
		/** Counts the number of valid rows */
		size_t valid_count() const {
			size_t count = 0;
			for ( size_t i = lower_bound(), ie = upper_bound(); i < ie; i+=8) {
				count += any_valid(i, i+8) ? 1 : 0;
			}
			return count;
		}

		/** Reads summary information */
		void read_summary(std::istream& is) {
			uint64_t upper = 0, lower = 0;
			is.seekg(2);
			cpputil::HexReader<uint64_t, 8>()(is, upper);
			is.seekg(3);
			cpputil::HexReader<uint64_t, 8>()(is, lower);
			is.seekg(3);

			set_base(lower);
			resize(upper-lower-0x20);
		}
		/** Read a row from contents */
		void read_row(std::istream& is) {
			uint64_t addr = 0;
			cpputil::HexReader<uint64_t, 8>()(is, addr);
			for ( int j = 7; j >= 0; --j) {
				is >> contents_.get_fixed_byte(addr-base_+j);
			}
			for ( int j = 7; j >= 0; --j) {
				std::string bit;
				is >> bit;
				set_valid(addr-base_+j, bit == "v" || bit == "d");
				set_defined(addr-base_+j, bit == "d");
			}
		}
		/** Read contents */
		void read_contents(std::istream& is) {
			std::string ignore;
			size_t rows = 0;

			getline(is, ignore, '[');
			is >> rows;
			getline(is, ignore);
			getline(is, ignore);
			for ( size_t i = 0; i < rows; ++i ) {
				read_row(is);
				getline(is, ignore);
			}
		}

		/** Writes summary information */
		void write_summary(std::ostream& os) const {
			os << "[ ";
			cpputil::HexWriter<uint64_t, 8>()(os, upper_bound());
			os << " - ";
			cpputil::HexWriter<uint64_t, 8>()(os, lower_bound());
			os << " ]" << std::endl;
		}
		/** Write a row from contents */
		void write_row(std::ostream& os, uint64_t i) const {
			cpputil::HexWriter<uint64_t, 8>()(os, i);
			os << "   ";
			cpputil::HexWriter<uint64_t, 2>()(os, contents_.get_fixed_quad((i-base_)/8));
			os << "   ";
			for ( size_t j = 0; j < 8; ++j ) {
				os << (is_defined(i+j) ? "d " : is_valid(i+j) ? "v " : ". ");
			}
		}
		/** Write contents */
		void write_contents(std::ostream& os) const {
			os << "[ " << valid_count() << " valid rows shown ]" << std::endl << std::endl;
			for ( uint64_t i = upper_bound(), ie = lower_bound(); i > ie; i-= 8) {
				if ( !any_valid(i-8, i) ) {
					continue;
				}
				write_row(os, i-8);
				if ( i-8 != ie ) {
					os << std::endl;
				}
			}
		}
};

} // namespace stoke 

#endif
