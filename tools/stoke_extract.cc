#include <cctype>
#include <cstdlib>

#include <algorithm>
#include <array>
#include <fstream>
#include <iostream>
#include <map>
#include <sstream>
#include <string>
#include <unordered_map>

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/cpputil/include/io/filterstream.h"
#include "src/ext/cpputil/include/io/indent.h"
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

typedef map<string, string> line_map;
typedef unordered_map<string, size_t> label_map;

bool exists(const string& file) {
  Terminal term;
  term << "ls " << file << " >> /dev/null" << endl;
  return term.result() == 0;
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

void strip_prolog(ifstream& ifs) {
	string s;
	getline(ifs, s);
	getline(ifs, s);
	getline(ifs, s);
	getline(ifs, s);
}

bool ignore_header(ifstream& ifs, string& s) {
	if ( s[0] == 'D' ) {
		getline(ifs, s);
		return true;
	}
	return false;
}

string get_name(ifstream& ifs, string& s) {
	const auto begin = s.find_first_of('<') + 1;
	const auto len = s.find_last_of('>') - begin;
	return s.substr(begin, len);
}

string get_addr(const string& s) {
	// Address is located between beginning of line and first :
	auto begin = 0;
	for ( ; isspace(s[begin]); ++begin);
	const auto len = s.find_first_of(':') - begin;

	return s.substr(begin, len);
}

bool get_instr(const string& s, string& instr) {
	// Instructions begin after second tab; blank lines have only one
	const auto tab1 = s.find_first_of('\t');
	const auto tab2 = s.find_first_of('\t', tab1+1);
	if ( tab2 == string::npos ) {
		return false;
	}
	const auto begin = tab2 + 1;

	// Instruction are terminated by eol, # or <
	auto comment = s.find_last_of('#');
	comment = comment == string::npos ? s.length() : comment;
	auto annot = s.find_last_of('<');
	annot = annot == string::npos ? s.length() : annot;
	const auto len = min(comment, annot) - begin;
	
	instr = s.substr(begin, len);
	return true;
}

line_map index_lines(ifstream& ifs, string& s) {
	line_map lines;

	// Functions are terminated by empty lines
	while ( getline(ifs, s) ) {
		if ( s.empty() ) {
			break;
		} 
		string instr;
		if ( get_instr(s, instr) ) {
			lines[get_addr(s)] = instr;
		}
	}

	return lines;
}

label_map replace_label_uses(line_map& lines) {
	label_map labels;

	for ( auto& l : lines ) {
		const auto& instr = l.second;

		// Opcodes are followed by at least one space; ignore instructions with no operands
		auto ops_begin = instr.find_first_of(' ');
		if ( ops_begin == string::npos ) {
			continue;
		}
		for ( ; isspace(instr[ops_begin]); ops_begin++ );
		if ( ops_begin == instr.length() ) {
			continue;
		}

		// Operands are terminated by whitespace
		const auto ops_end = instr.find_first_of(' ', ops_begin+1);
		const auto ops_len = (ops_end == string::npos ? instr.length() : ops_end) - ops_begin;
		const auto ops = instr.substr(ops_begin, ops_len);

		// Replace any argument which is strictly hex digits
		auto skip = false;
		for ( auto c : ops ) {
			if ( !isxdigit(c) ) {
				skip = true;
			}
		}
		if ( !skip ) {	
			const auto itr = labels.insert(make_pair(ops, labels.size())).first;

			ostringstream oss;
			oss << instr.substr(0, ops_begin) << ".LABEL_" << itr->second;
			l.second = oss.str();
		}
	}

	return labels;
}

string fix_line(const string& line) {
	// Replace retq synonyms
	constexpr array<const char*, 2> rets {{"hlt    ","repz retq "}};
	if ( find(rets.begin(), rets.end(), line) != rets.end() ) {
		return "retq";
	} 

	// Replace nop synonyms
	constexpr array<const char*, 3> nops {{"nopl","nopw","data"}};
	if ( line.length() >= 4 && find(nops.begin(), nops.end(), line.substr(0,4)) != nops.end() ) {
		return "nop";
	}

	// Add implicit trailing ones
	constexpr array<const char*, 8> rots {{"shl","shr","sal","sar","rcl","rcr","rol","ror"}};
	if ( line.length() >= 3 ) {
		const auto in_list = find(rots.begin(), rots.end(), line.substr(0,3)) != rots.end();
		const auto missing = line.find_first_of(',') == string::npos;
		if ( in_list && missing) {
			const auto split = line.find_first_of(' ');
			return line.substr(0, split) + "$0x1," + line.substr(split+1);
		} 
	}

	// Remove convenience naming for vector comparison instructions
	constexpr array<const char*, 24> cmp7 {{
		"cmpeqsd","cmpsd $0x0,","cmpeqss","cmpss $0x0,","vcmpeqsd","vcmpsd $0x0,", "vcmpeqss","vcmpss $0x0,",
		"cmpltsd","cmpsd $0x1,","cmpltss","cmpss $0x1,","vcmpltsd","vcmpsd $0x1,", "vcmpltss","vcmpss $0x1,",
		"cmplesd","cmpsd $0x2,","cmpless","cmpss $0x2,","vcmplesd","vcmpsd $0x2,", "vcmpless","vcmpss $0x2,"
	}};
	constexpr array<const char*, 8> cmp10 {{
		"cmpunordsd","cmpsd $0x3,","cmpunordss","cmpss $0x3,","vcmpunordsd","vcmpsd $0x3,", "vcmpunordss","vcmpss $0x3,"
	}};
	constexpr array<const char*, 32> cmp8 {{
		"cmpneqsd","cmpsd $0x4,","cmpneqss","cmpss $0x4,","vcmpneqsd","vcmpsd $0x4,", "vcmpneqss","vcmpss $0x4,",
		"cmpnltsd","cmpsd $0x5,","cmpnltss","cmpss $0x5,","vcmpnltsd","vcmpsd $0x5,", "vcmpnltss","vcmpss $0x5,",
		"cmpnlesd","cmpsd $0x6,","cmpnless","cmpss $0x6,","vcmpnlesd","vcmpsd $0x6,", "vcmpnless","vcmpss $0x6,",
		"cmpordsd","cmpsd $0x7,","cmpordss","cmpss $0x7,","vcmpordsd","vcmpsd $0x7,", "vcmpordss","vcmpss $0x7,"
	}};
	if ( line.length() >= 7 ) {
		auto itr = find(cmp7.begin(), cmp7.end(), line.substr(0,7));
		if ( itr != cmp7.end() ) {
			return *(++itr) + line.substr(8);
		}
	} 
	if ( line.length() >= 10 ) {
		auto itr = find(cmp10.begin(), cmp10.end(), line.substr(0,10));
		if ( itr != cmp10.end() ) {
			return *(++itr) + line.substr(11);
		}
	} 
	if ( line.length() >= 8 ) {
		auto itr = find(cmp8.begin(), cmp8.end(), line.substr(0,8));
		if ( itr != cmp8.end() ) {
			return *(++itr) + line.substr(9);
		}
	}

	// Rename movabs for register arguments
	if ( line.length() >= 9 && line.substr(0,9) == "movabsq $" ) {
		return "movq " + line.substr(8);
	}

	// Add missing suffix to call and jmp
	if ( line.length() >= 5 && line.substr(0,5) == "call " ) {
		return "callq " + line.substr(5);
	} 
	if ( line.length() >= 4 && line.substr(0,4) == "jmp " ) {
		return "jmpq " + line.substr(4);
	}

	// Remove documentation arg from string instructions
	if ( line.length() >= 4 && line.substr(0,4) == "stos" ) {
		const auto comma = line.find_first_of(',');
		return line.substr(0,6) + line.substr(comma+1);
	} 
	if ( line.length() >= 8 && line.substr(0,8) == "rep stos" ) {
		const auto comma = line.find_first_of(',');
		return line.substr(0,10) + line.substr(comma+1);
	} 
	if ( line.length() >= 10 && line.substr(0,10) == "repnz scas" ) {
		const auto comma = line.find_first_of(',');
		return line.substr(0,comma);
	}

	// Make lock its own instruction
	if ( line.length() >= 4 && line.substr(0,4) == "lock" ) {
		return "lock\n" + line.substr(5);
	}

	return line;
}

void emit(const string& fxn, const line_map& lines, const label_map& labels) {
	ofstream ofs(out.value() + "/" + fxn + ".s");
	ofilterstream<Indent> os(ofs);

	os.filter().indent();
	os << ".text" << endl;
	os << ".globl " << fxn << endl;
	os << ".type " << fxn << ", @function" << endl;

	os.filter().unindent();
	os << fxn << ":" << endl;

	os.filter().indent();
	for ( const auto& l : lines ) {
		const auto itr = labels.find(l.first);
		if ( itr != labels.end() ) {
			os.filter().unindent();
			os << ".LABEL_" << itr->second << ":" << endl;
			os.filter().indent();
		}
		os << fix_line(l.second) << endl;
	}

	os << ".size " << fxn << ", .-" << fxn << endl;
}

int main(int argc, char** argv) {
  CommandLineConfig::strict_with_convenience(argc, argv);

  if (!exists(in)) {
    cout << "Unable to read binary file " << in.value() << "!" << endl;
    return 1;
  } else if (!mkdir()) {
    cout << "Unable to create output directory " << out.value() << "!" << endl;
    return 1;
  } else if (!objdump(in)) {
    cout << "Unable to extract object code from binary file " << in.value() << "!" << endl;
    return 1;
  }

	ifstream ifs(string("/tmp/stoke.") + getenv("USER") + ".objdump");
	string s;

	strip_prolog(ifs);
	while ( getline(ifs, s) ) {
		if ( ignore_header(ifs, s) ) {
			continue;
		}
	
		const auto fxn = get_name(ifs, s);
		auto lines = index_lines(ifs, s);
		const auto labels = replace_label_uses(lines);
		emit(fxn, lines, labels);
	}

  return 0;
}

