#include <sstream>
#include <string>
#include <vector>

#include "src/ext/cpputil/include/io/filterstream.h"
#include "src/ext/cpputil/include/io/indent.h"

#include "src/args/code.h"

using namespace cpputil;
using namespace std;
using namespace x64asm;

namespace stoke {

void CodeReader::operator()(istream& is, Code& c) {
  vector<string> lines;
  string line;

  for (size_t i = 0; getline(is, line); ++i) {
    if (i > 3) {
      lines.push_back(line);
    }
  }
  lines.pop_back();

  is.clear(ios::eofbit);

  stringstream ss;
  for (const auto& l : lines) {
    ss << l << endl;
  }

  ss >> c;
  if (ss.fail()) {
    is.setstate(ios::failbit);
  }
}

void CodeWriter::operator()(ostream& os, const Code& c) {
  ofilterstream<Indent> ofs(os);

  ofs.filter().indent();
  ofs << ".text" << endl;
  ofs << ".globl fxn" << endl;
  ofs << ".type fxn @function" << endl;

  ofs.filter().unindent();
  ofs << "fxn:" << endl;

  ofs.filter().indent();
  ofs << c << endl;

  ofs << ".size fxn, .-fxn" << endl;
}

} // namespace stoke
