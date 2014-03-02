#include <array>
#include <string>
#include <utility>

#include "src/args/generic.h"
#include "src/args/strategy.h"

using namespace std;
using namespace stoke;

namespace {

array<pair<string, Strategy>, 3> pts {{
    {"regression", Strategy::REGRESSION},
    {"formal", Strategy::FORMAL},
    {"random", Strategy::RANDOM}
  }
};

} // namespace

namespace stoke {

void StrategyReader::operator()(std::istream& is, Strategy pt) {
  string s;
  is >> s;
  if (is.fail() || !generic_read(pts, s, pt)) {
    is.setstate(ios::failbit);
  }
}

void StrategyWriter::operator()(std::ostream& os, const Strategy pt) {
  string s;
  if (generic_write(pts, s, pt)) {
    os.setstate(ios::failbit);
  }
  os << s;
}

} // namespace stoke
