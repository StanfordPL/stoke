#include <array>
#include <string>
#include <utility>

#include "src/args/generic.h"
#include "src/args/distance.h"

using namespace std;
using namespace stoke;

namespace {

array<pair<string, Distance>, 2> pts {{
    {"hamming", Distance::HAMMING},
    {"ulp", Distance::ULP}
  }
};

} // namespace

namespace stoke {

void DistanceReader::operator()(std::istream& is, Distance pt) {
  string s;
  is >> s;
  if (is.fail() || !generic_read(pts, s, pt)) {
    is.setstate(ios::failbit);
  }
}

void DistanceWriter::operator()(std::ostream& os, const Distance pt) {
  string s;
  if (generic_write(pts, s, pt)) {
    os.setstate(ios::failbit);
  }
  os << s;
}

} // namespace stoke
