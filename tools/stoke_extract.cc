#include <iostream>
#include <string>

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/cpputil/include/system/terminal.h"

using namespace cpputil;
using namespace std;

auto& h1 = Heading::create("I/O options:");

auto& in = ValueArg<string>::create("i")
  .alternate("in")
  .usage("<path/to/bin>")
  .description("Binary file to extract code from")
  .default_val("./a.out");

auto& out = ValueArg<string>::create("o")
  .alternate("out")
  .usage("<path/to/dir>")
  .description("Directory to write results to")
  .default_val("out");

bool exists(const string& file) {
  Terminal term;
  term << "ls " << file << endl;
  return term.result() == 0;
}

bool symdump(const string& file) {
  Terminal term1;
  term1 << "nm -a " << file
        << " | grep \" [WTti] \" | sed \"s/.* [WTti] //\" > /tmp/stoke.$USER.symdump" << endl;

  Terminal term2;
  term2 << "nm -D " << file
        << " | grep \" [WTti] \" | sed \"s/.* [WTti] //\" >> /tmp/stoke.$USER.symdump" << endl;

  return term1.result() == 0 || term2.result() == 0;
}

bool objdump(const string& file) {
  Terminal term;
  term << "objdump -d -Msuffix " << file << " > /tmp/stoke.$USER.objdump" << endl;
  return term.result() == 0;
}

bool mkdir() {
  Terminal term;
  term << "mkdir -p " << out.value() << endl;
  return term.result() == 0;
}

int main(int argc, char** argv) {
  CommandLineConfig::strict_with_convenience(argc, argv);

  if (!exists(in)) {
    cout << "Unable to read binary file " << in.value() << "!" << endl;
    return 1;
  } else if (!symdump(in)) {
    cout << "Unable to extract symbols from binary file " << in.value() << "!" << endl;
    return 1;
  } else if (!objdump(in)) {
    cout << "Unable to extract object code from binary file " << in.value() << "!" << endl;
    return 1;
  } else if (!mkdir()) {
    cout << "Unable to create output directory " << out.value() << "!" << endl;
    return 1;
  }

  return 0;
}

