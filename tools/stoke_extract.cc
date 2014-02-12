#include <iostream>
#include <string>

#include "src/args/args.h"
#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/cpputil/include/system/terminal.h"
#include "src/ext/x64asm/include/x64asm.h"

using namespace cpputil;
using namespace std;
using namespace x64asm;

auto& h1 = Heading::create("I/O options:");

auto& binary = ValueArg<string>::create("object")
	.usage("<path/to/bin>")
	.description("Object file to scrape code from")
	.default_val("./a.out");

auto& out_dir = ValueArg<string>::create("out")
  .alternate("o")
	.usage("<path/to/dir>")
  .description("Directory to write results to")
  .default_val("bins");

bool exists(const string& file) {
	ifstream temp(file);
	return temp.is_open();
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
  term << "mkdir -p " << out_dir.value() << endl;
  return term.result() == 0;
}

int main(int argc, char** argv) {
	CommandLineConfig::strict_with_convenience(argc, argv);

	if ( !exists(binary) ) {
		cout << "Unable to read binary file " << binary.value() << "!" << endl;
		return 1;
	} else if ( !symdump(binary) ) {
		cout << "Unable to extract symbols from binary file " << binary.value() << "!" << endl;
		return 1;
	} else if ( !objdump(binary) ) {
		cout << "Unable to extract object code from binary file " << binary.value() << "!" << endl;
    return 1;
	} else if ( !mkdir() ) {
    cout << "Unable to create output directory " << out_dir.value() << "!" << endl;
    return 1;
  }

	return 0;
}

