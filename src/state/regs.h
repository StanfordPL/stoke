#ifndef STOKE_STATE_REGS_H
#define STOKE_STATE_REGS_H

#include <array>
#include <cassert>
#include <iostream>
#include <string>

#include "src/ext/cpputil/include/container/bit_array.h"
#include "src/ext/cpputil/include/io/column.h"
#include "src/ext/cpputil/include/io/filterstream.h"
#include "src/ext/cpputil/include/serialize/hex_reader.h"
#include "src/ext/cpputil/include/serialize/hex_writer.h"

namespace stoke {

template <size_t N, size_t W>
class Regs { 
	public:
		/** Element access. */
		cpputil::BitArray<W>& operator[](size_t i) {
			assert(i < N);
			return contents_[i];
		}

		/** Comparison. */
		bool operator==(const Regs& rhs) const {
			return contents_ == rhs.contents_;
		}
		/** Comparison. */
		bool operator!=(const Regs& rhs) const {
			return !(*this == rhs);
		}

		/** Bit-wise xor */
		Regs& operator^=(const Regs& rhs) {
			for ( size_t i = 0; i < N; ++i ) {
				contents_[i] ^= rhs.contents_[i];
			}
			return *this;
		}
		/** Bit-wise xor */
		Regs operator^(const Regs& rhs) {
			auto ret = *this;
			return ret ^= rhs;
		}

		/** I/O. */
		std::istream& read(std::istream& is) {
			for ( size_t i = 0; i < N; ++i ) {
				std::string ignore;
				is >> ignore;
				for ( size_t j = 0; j < W; ++j ) {
					cpputil::HexReader<uint64_t, 2>()(is, contents_[i].get_fixed_quad(j));
				}
			}

			return is;
		}
		/** I/O. */ 
		template <typename InItr>
		std::ostream& write(std::ostream& os, InItr names, size_t padding) const {
			cpputil::ofilterstream<cpputil::Column> fs(os);
			fs.filter().padding(padding);

			write_regs(fs, names);
			fs.filter().next();
			write_vals(fs);
			fs.filter().done();

			return os;
		}

	private:
		std::array<cpputil::BitArray<W>, N> contents_;

		/** Write register names */
		template <typename InItr>
		void write_regs(std::ostream& os, InItr names) const {
			for ( size_t i = 0; i < N; ++i ) {
				os << *(names+i);
				if ( i != N-1 ) {
					os << std::endl;
				}
			}
		}
		/** Write register values */
		void write_vals(std::ostream& os) const {
			for ( size_t i = 0; i < N; ++i ) {
				for ( size_t j = 0; j < W/8; ++j ) {
					cpputil::HexWriter<uint64_t, 2>()(os, contents_[i].get_fixed_quad(j));
					os << " ";
				}
				if ( i != N-1 ) {
					os << std::endl;
				}
			}
		}
};

} // namespace stoke

#endif
