#include <array>
#include <string>
#include <utility>

#include "src/args/generic.h"
#include "src/args/distance.h"

using namespace std;
using namespace stoke;

namespace {

array<pair<string, Distance>, 2> ds {{
    {"hamming", Distance::HAMMING},
    {"ulp", Distance::ULP}
  }
};

} // namespace

namespace stoke {

void DistanceReader::operator()(std::istream& is, Distance& d) {
  string s;
  is >> s;
  if (!generic_read(ds, s, d)) {
    is.setstate(ios::failbit);
  }
}

void DistanceWriter::operator()(std::ostream& os, const Distance d) {
  string s;
  generic_write(ds, s, d);
  os << s;
}

} // namespace stoke
