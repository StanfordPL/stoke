#include <array>
#include <string>
#include <utility>

#include "src/args/generic.h"
#include "src/args/reduction.h"

using namespace std;
using namespace stoke;

namespace {

array<pair<string, Reduction>, 2> rs {{
    {"sum", Reduction::SUM},
    {"max", Reduction::MAX}
  }
};

} // namespace

namespace stoke {

void ReductionReader::operator()(std::istream& is, Reduction& r) {
  string s;
  is >> s;
  if (!generic_read(rs, s, r)) {
    is.setstate(ios::failbit);
  }
}

void ReductionWriter::operator()(std::ostream& os, const Reduction r) {
  string s;
  generic_write(rs, s, r);
  os << s;
}

} // namespace stoke
