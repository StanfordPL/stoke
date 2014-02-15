#ifndef STOKE_STATE_GP_H
#define STOKE_STATE_GP_H

#include <array>
#include <iostream>
#include <string>

#include "src/ext/cpputil/include/container/bit_array.h"
#include "src/ext/cpputil/include/serialize/hex_reader.h"
#include "src/ext/cpputil/include/serialize/hex_writer.h"
#include "src/ext/x64asm/include/x64asm.h"

namespace stoke {

struct Gp : public std::array<cpputil::BitArray<8>, 16> {
	/** I/O. */
	std::istream& read(std::istream& is) {
		std::string ignore;
		is >> ignore >> ignore;
		for ( size_t i = 0; i < 16; ++i ) {
			is >> ignore;
			cpputil::HexReader<uint64_t, 2>()(is, gp[i].get_fixed_quad(0));
		}

		return is;
	}

	/** I/O. */ 
	std::ostream& write(std::ostream& os) const {
		os << "[GENERAL PURPOSE]" << std::endl;
		os << std::endl;
		for ( size_t i = 0; i < 16; ++i ) {
			os << x64asm::gps[i] << "\t";
			cpputil::HexWriter<uint64_t, 2>()(os, gp[i].get_fixed_quad(0));

			if ( i != 15 ) {
				os << std::endl;
			}
		}

		return os;
	}
};

} // namespace stoke

#endif
