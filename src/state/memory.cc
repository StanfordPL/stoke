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

} // namespace stoke
