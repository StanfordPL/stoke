#include "src/ext/cpputil/include/serialize/hex_reader.h"
#include "src/ext/cpputil/include/serialize/hex_writer.h"
#include "src/state/memory.h"

using namespace cpputil;
using namespace std;

namespace stoke {

void Memory::copy_defined(const Memory& rhs) {
  // We only need to worry about bytes that are valid. We'll iterate in the largest
  // atomic step size that we can since it doesn't hurt to copy more than we need to.
  for (auto i = rhs.valid_.set_quad_index_begin(), ie = rhs.valid_.set_quad_index_end(); i != ie;
       ++i) {
    def_.get_fixed_quad(*i) = rhs.def_.get_fixed_quad(*i);
  }

  // Now we'll copy the actual bytes. One byte of mask corresponds to one quad of data.
  for (auto i = def_.set_byte_index_begin(), ie = def_.set_byte_index_end(); i != ie; ++i) {
    contents_.get_fixed_quad(*i) = rhs.contents_.get_fixed_quad(*i);
  }
}

bool Memory::any_valid(uint64_t begin, uint64_t end) const {
  for (; begin < end; ++begin) {
    if (is_valid(begin)) {
      return true;
    }
  }
  return false;
}

size_t Memory::valid_count() const {
  size_t count = 0;
  for (size_t i = lower_bound(), ie = upper_bound(); i < ie; i += 8) {
    count += any_valid(i, i + 8) ? 1 : 0;
  }
  return count;
}

void Memory::read_summary(istream& is) {
  is.seekg(2);
  uint64_t upper = 0;
  HexReader<uint64_t, 8>()(is, upper);
  is.seekg(3);
  uint64_t lower = 0;
  HexReader<uint64_t, 8>()(is, lower);
  is.seekg(3);

  set_base(lower);
  resize(upper - lower - 0x20);
}

void Memory::read_row(istream& is) {
  uint64_t addr = 0;
  string s;
  HexReader<uint64_t, 8>()(is, addr);
  for (int j = 7; j >= 0; --j) {
    is >> contents_.get_fixed_byte(addr - base_ + j);
  }
  for (int j = 7; j >= 0; --j) {
    is >> s;
    set_valid(addr - base_ + j, s == "v" || s == "d");
    set_defined(addr - base_ + j, s == "d");
  }
  getline(is, s);
}

void Memory::read_contents(istream& is) {
  string s;
  size_t rows = 0;

  getline(is, s, '[');
  is >> rows;
  getline(is, s);
  getline(is, s);
  for (size_t i = 0; i < rows; ++i) {
    read_row(is);
  }
}

void Memory::write_summary(ostream& os) const {
  os << "[ ";
  HexWriter<uint64_t, 8>()(os, upper_bound());
  os << " - ";
  HexWriter<uint64_t, 8>()(os, lower_bound());
  os << " ]" << endl;
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
  os << "[ " << valid_count() << " valid rows shown ]" << endl << endl;
  for (uint64_t i = upper_bound(), ie = lower_bound(); i > ie; i -= 8) {
    if (!any_valid(i - 8, i)) {
      continue;
    }
    write_row(os, i - 8);
    if (i - 8 != ie) {
      os << endl;
    }
  }
}

} // namespace stoke
