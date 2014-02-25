#include <cctype>
#include <cstdlib>

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
  term << "objdump -d -Msuffix " << file << " > /tmp/stoke.$USER.objdump >> /dev/null" << endl;
  return term.result() == 0;
}

bool mkdir() {
  Terminal term;
  term << "mkdir -p " << out.value() << " >> /dev/null" << endl;
  return term.result() == 0;
}

void strip_header(ifstream& ifs) {
	string s;
	getline(ifs, s);
	getline(ifs, s);
	getline(ifs, s);
	getline(ifs, s);
}

bool ignore_section_header(ifstream& ifs, string& s) {
	// Section headers begin with the word 'Displaying'
	if ( s[0] == 'D' ) {
		getline(ifs, s);
		return true;
	}
	return false;
}

string fxn_name(ifstream& ifs, string& s) {
	// Function names are enclosed in angle brackets
	const auto begin = s.find_first_of('<') + 1;
	const auto len = s.find_last_of('>') - begin;
	return s.substr(begin, len);
}

line_map index_lines(ifstream& ifs, string& s) {
	line_map lines;

	while ( getline(ifs, s) ) {
		// Functions are terminated by empty lines
		if ( s.empty() ) {
			break;
		}

		// Address is located between beginning of line and first :
		auto addr_begin = 0;
		for ( ; isspace(s[addr_begin]); ++addr_begin);
		const auto addr_len = s.find_first_of(':') - addr_begin;
		const auto addr = s.substr(addr_begin, addr_len);

		// Instructions begin after second tab; blank lines have only one
		const auto first_tab = s.find_first_of('\t');
		const auto second_tab = s.find_first_of('\t', first_tab+1);
		if ( second_tab == string::npos ) {
			continue;
		}
		const auto instr_begin = second_tab + 1;

		// Instruction are terminated by eol, # or <
		auto comment = s.find_last_of('#');
		comment = comment == string::npos ? s.length() : comment;
		auto annot = s.find_last_of('<');
		annot = annot == string::npos ? s.length() : annot;
		const auto instr_end = min(comment, annot);
		const auto instr_len = (instr_end == string::npos ? s.length() : instr_end) - instr_begin;
		const auto instr = s.substr(instr_begin, instr_len);

		// Insert this line
		lines[addr] = instr;
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

void emit_fxn(const string& fxn, const line_map& lines, const label_map& labels) {
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
		os << l.second << endl;
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

	strip_header(ifs);
	while ( getline(ifs, s) ) {
		if ( ignore_section_header(ifs, s) ) {
			continue;
		}
	
		const auto fxn = fxn_name(ifs, s);
		auto lines = index_lines(ifs, s);
		const auto labels = replace_label_uses(lines);
		emit_fxn(fxn, lines, labels);
	}

  return 0;
}

