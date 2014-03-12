#include <cctype>

#include <string>

#include "src/ext/cpputil/include/io/column.h"
#include "src/ext/cpputil/include/io/filterstream.h"
#include "src/ext/cpputil/include/serialize/hex_reader.h"
#include "src/ext/cpputil/include/serialize/hex_writer.h"

#include "src/state/regs.h"

using namespace cpputil;
using namespace std;

namespace stoke {

istream& Regs::read(istream& is) {
  for (auto& r : contents_) {
 		string name;
    is >> name;

		while ( isspace(is.peek()) ) {
			is.get();
		}

    for (auto i = r.fixed_quad_begin(), ie = r.fixed_quad_end(); i != ie; ++i) {
      HexReader<uint64_t, 2>()(is, *i);
			is.get();
    }
  }

  return is;
}

ostream& Regs::write(ostream& os, const char** names, size_t padding) const {
  ofilterstream<Column> fs(os);
  fs.filter().padding(padding);

  write_regs(fs, names);
  fs.filter().next();

  write_vals(fs);
  fs.filter().done();

  return os;
}

void Regs::write_regs(std::ostream& os, const char** names) const {
  for (size_t i = 0, ie = size(); i < ie; ++i) {
    os << *(names + i);
	 	if ( i+1 != ie ) {
			os << endl;
		}
  }
}

void Regs::write_vals(std::ostream& os) const {
	for ( size_t i = 0, ie = contents_.size(); i < ie; ++i ) {
		const auto& r = contents_[i];
    for (auto j = r.fixed_quad_begin(), je = r.fixed_quad_end(); j != je; ++j) {
      cpputil::HexWriter<uint64_t, 2>()(os, *j);
      os << " ";
    }
		if ( i+1 != ie ) {
			os << endl;
		}
  }
}

} // namespace stoke
