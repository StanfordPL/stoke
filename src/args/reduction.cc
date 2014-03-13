#include <array>
#include <string>
#include <utility>

#include "src/args/generic.h"
#include "src/args/reduction.h"

using namespace std;
using namespace stoke;

namespace {

array<pair<string, Reduction>, 2> pts {{
    {"sum", Reduction::SUM},
    {"max", Reduction::MAX}
  }
};

} // namespace

namespace stoke {

void ReductionReader::operator()(std::istream& is, Reduction pt) {
  string s;
  is >> s;
  if (!generic_read(pts, s, pt)) {
    is.setstate(ios::failbit);
  }
}

void ReductionWriter::operator()(std::ostream& os, const Reduction pt) {
  string s;
  if (generic_write(pts, s, pt)) {
    os.setstate(ios::failbit);
  }
  os << s;
}

} // namespace stoke
