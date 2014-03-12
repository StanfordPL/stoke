#include "src/ext/cpputil/include/serialize/hex_reader.h"
#include "src/ext/cpputil/include/serialize/hex_writer.h"
#include "src/state/memory.h"

using namespace cpputil;
using namespace std;

namespace stoke {

void Memory::copy_defined(const Memory& rhs) {
	assert(base_ == rhs.base_);
	assert(size() == rhs.size());

	// Copying invalid bits doesn't hurt so we'll use the largest atomic copy we can.
	// We don't have to worry about non-valid bytes since we never touch them.
  for (auto i = rhs.valid_.set_quad_index_begin(), ie = rhs.valid_.set_quad_index_end(); i != ie; ++i) {
    def_.get_fixed_quad(*i) = rhs.def_.get_fixed_quad(*i);
  }
  // Now we'll copy the actual bytes. One byte of mask corresponds to one quad of data.
  for (auto i = def_.set_byte_index_begin(), ie = def_.set_byte_index_end(); i != ie; ++i) {
    contents_.get_fixed_quad(*i) = rhs.contents_.get_fixed_quad(*i);
  }
}

void Memory::read_summary(istream& is) {
  is.get();
	is.get();

  uint64_t upper = 0;
  HexReader<uint64_t, 8>()(is, upper);

  is.get();
	is.get();
	is.get();

  uint64_t lower = 0;
  HexReader<uint64_t, 8>()(is, lower);

	is.get();
	is.get();

  resize(lower, upper-lower);
}

void Memory::read_row(istream& is) {
  string s;
  uint64_t addr = 0;
  HexReader<uint64_t, 8>()(is, addr);

	is.get();
	is.get();
	is.get();

  for (int j = 7; j >= 0; --j) {
		uint8_t val = 0;
  	HexReader<uint8_t, 2>()(is, val);
		is.get();

		// Memory isn't flagged valid yet, have to set this directly
		contents_.get_fixed_byte(addr-base_+j) = val;
  }

	is.get();
	is.get();

  for (int j = 7; j >= 0; --j) {
    is >> s;

    set_valid(addr + j, s == "v" || s == "d");
    set_defined(addr + j, s == "d");
  }
}

void Memory::read_contents(istream& is) {
  string s;
  getline(is, s, '[');

  size_t rows = 0;
  is >> rows;

	getline(is, s, ']');

	if ( rows != 0 ) {
		getline(is, s);
	}
	for (size_t i = 0; i < rows; ++i) {
  	getline(is, s);
    read_row(is);
  }
}

void Memory::write_summary(ostream& os) const {
  os << "[ ";
  HexWriter<uint64_t, 8>()(os, upper_bound());
  os << " - ";
  HexWriter<uint64_t, 8>()(os, lower_bound());
  os << " ]";
}

void Memory::write_row(ostream& os, uint64_t i) const {
  HexWriter<uint64_t, 8>()(os, i);
  os << "   ";
  HexWriter<uint64_t, 2>()(os, contents_.get_fixed_quad((i - base_) / 8));
  os << "   ";
  for (size_t j = 0; j < 8; ++j) {
    os << (is_defined(i + j) ? "d " : is_valid(i + j) ? "v " : ". ");
  }
}

void Memory::write_contents(ostream& os) const {
	const auto vc = valid_count();

  os << "[ " << vc << " valid rows shown ]";
	if ( vc != 0 ) {
		os << endl;
	}
  for (uint64_t i = upper_bound(), ie = lower_bound(); i > ie; i -= 8) {
    if (!valid_row(i - 8)) {
      continue;
    }
		os << endl;
    write_row(os, i - 8);
  }
}

} // namespace stoke
