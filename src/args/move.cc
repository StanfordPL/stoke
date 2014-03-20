#include <array>
#include <string>
#include <utility>

#include "src/args/generic.h"
#include "src/args/move.h"

using namespace std;
using namespace stoke;

namespace {

array<pair<string, Move>, 6> moves {{
    {"instruction", Move::INSTRUCTION},
    {"opcode", Move::OPCODE},
    {"operand", Move::OPERAND},
    {"local_swap", Move::LOCAL_SWAP},
    {"global_swap", Move::GLOBAL_SWAP},
    {"resize", Move::RESIZE},
  }
};

} // namespace

namespace stoke {

void MoveReader::operator()(std::istream& is, Move& m) {
  string s;
  is >> s;
  if (!generic_read(moves, s, m)) {
    is.setstate(ios::failbit);
  }
}

void MoveWriter::operator()(std::ostream& os, const Move m) {
  string s;
  generic_write(moves, s, m);
  os << s;
}

} // namespace stoke

