#include <sstream>
#include <string>
#include <vector>

#include "src/ext/cpputil/include/io/filterstream.h"
#include "src/ext/cpputil/include/io/indent.h"

#include "src/args/tunit.h"

using namespace cpputil;
using namespace std;
using namespace x64asm;

namespace stoke {

void TUnitReader::operator()(istream& is, TUnit& t) {
  string s;

  getline(is, s);
  is >> s >> t.name;
  getline(is, s);
  getline(is, s);
  getline(is, s);

  vector<string> lines;
  for (size_t i = 0; getline(is, s); ++i) {
    lines.push_back(s);
  }
  lines.pop_back();
  is.clear(ios::eofbit);

  stringstream ss;
  for (const auto& l : lines) {
    ss << l << endl;
  }
  ss >> t.code;

  if (ss.fail()) {
    is.setstate(ios::failbit);
  }
}

void TUnitWriter::operator()(ostream& os, const TUnit& t) {
  ofilterstream<Indent> ofs(os);

  ofs.filter().indent();
  ofs << ".text" << endl;
  ofs << ".globl " << t.name << endl;
  ofs << ".type " << t.name << " @function" << endl;

  ofs.filter().unindent();
  ofs << t.name << ":" << endl;

  ofs.filter().indent();
  ofs << t.code << endl;

  ofs << ".size " << t.name << ", .-" << t.name;
}

} // namespace stoke
