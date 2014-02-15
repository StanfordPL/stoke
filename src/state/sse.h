#ifndef STOKE_STATE_SSE_H
#define STOKE_STATE_SSE_H

#include <array>
#include <iostream>
#include <string>

#include "src/ext/cpputil/include/container/bit_array.h"
#include "src/ext/cpputil/include/serialize/hex_reader.h"
#include "src/ext/cpputil/include/serialize/hex_writer.h"
#include "src/ext/x64asm/include/x64asm.h"

namespace stoke {

struct Sse : public std::array<cpputil::BitArray<32>, 16> {
	/** I/O. */
	std::istream& read(std::istream& is) {
		std::string ignore;
		is >> ignore;
		for ( size_t i = 0; i < 16; ++i ) {
			is >> ignore;
			cpputil::HexReader<uint64_t, 2>()(is, gp[i].get_fixed_quad(0));
		}

		return is;
	}

	/** I/O. */ 
	std::ostream& write(std::ostream& os) const {
		os << "[SSE]" << std::endl;
		os << std::endl;
		for ( size_t i = 0; i < 16; ++i ) {
			os << x64asm::ymms[i] << "\t";
			for ( size_t j = 0; j < 4; ++j ) {
				cpputil::HexWriter<uint64_t, 2>()(os, sse[i].get_fixed_quad(j));
				os << " ";
			}
			
			if ( i != 15 ) {
				os << std::endl;
			}
		}

		return os;
	}
};

} // namespace stoke

#endif
