
#include <sstream>

#include "src/disassembler/disassembler.h"

using namespace stoke;
using namespace redi;
using namespace std;

bool Disassembler::check_filename(string& s) {

  for(size_t i = 0; i < s.size(); ++i) {
    char c = s[i];

    if (c >= 'a' && c <= 'z')
      continue;

    if (c >= 'A' && c <= 'Z')
      continue;

    if (c >= '0' && c <= '9')
      continue;

    if (c == '.' ||
        c == '/' ||
        c == '_' ||
        c == '-' ||
        c == '~' ||
        c == '@' ||
        c == '+') {
      continue;
    }

    char buf[2];
    buf[0] = c;
    buf[1] = '\0';

    error_ = true;
    error_message_ = "Character '" + string(buf) + "' not allowed in filename for security.";
    return false;

  }

  return true;

}

redi::ipstream* Disassembler::run_objdump(string& filename, bool only_header) {

  if (!check_filename(filename))
    return NULL;

  string target = "";
  if (only_header) {
    target = "/usr/bin/objdump -h " + filename;  
  } else {
    target = "/usr/bin/objdump -Msuffix -d " + filename;
  }

  auto ret = new ipstream(target, redi::pstreams::pstdout);
  if(!ret) {
    error_ = true;
    error_message_ = "Unknown error spawning objdump: no memory allocated.";
    return NULL;
  }

  if(!ret->is_open()) {
    error_ = true;
    error_message_ = "Unknown error spawning objdump.";
    delete ret;
    return NULL;
  }

  return ret;

}

void Disassembler::strip_lines(redi::ipstream& ips, size_t lines) {

  string line;
  for (size_t i = 0; i < lines; ++i) {
    getline(ips, line);
  }
}

void Disassembler::parse_section_offsets(ipstream& ips, map<string, uint64_t>& section_offsets) {

  // Skip ahead to table
  strip_lines(ips, 5);

  // Read entries one at a time
  string line;
  while (getline(ips, line)) {
    istringstream iss(line);
    string section, temp;
    uint64_t lma, offset;

    iss >> temp >> section >> temp >> hex >> lma >> offset;
    section_offsets[section] = lma - offset;

    // Trailing second line
    getline(ips, line);
  }

}

bool Disassembler::parse_function(ipstream& ips, ParsedFunction& pf, 
                                  map<string, uint64_t>& offsets) {

  string line;

  // Ignore lines starting with "D"
  while(getline(ips, line) && line[0] == 'D') { }

  // Get the name of the function
  const auto begin = line.find_first_of('<') + 1;
  const auto len = line.find_last_of('>') - begin;
  pf.name = line.substr(begin, len);

  // Get an index of all the lines
  auto lines = index_lines(ips, line);
  const auto labels = set<string>(); //FIXME: fix_label_uses(lines);

  return false;
}


string Disassembler::parse_addr_from_line(const string& s) {
  // Address is located between beginning of line and first :
  auto begin = 0;
  for (; isspace(s[begin]); ++begin);
  const auto len = s.find_first_of(':') - begin;

  return s.substr(begin, len);
}


Disassembler::line_map Disassembler::index_lines(ipstream& ips, string& s) {
  line_map lines;
  while (getline(ips, s)) {
    // Functions are terminated by empty lines
    if (s.empty()) {
      break;
    }
    string instr;
    if (parse_instr_from_line(s, instr)) {
      lines[parse_addr_from_line(s)] = fix_line(instr);
    }
  }

  return lines;
}

bool Disassembler::parse_instr_from_line(const string& s, string& instr) {
  // Instructions begin after second tab; blank lines have only one
  const auto tab1 = s.find_first_of('\t');
  const auto tab2 = s.find_first_of('\t', tab1 + 1);
  if (tab2 == string::npos) {
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


string Disassembler::fix_line(const string& line) {
  // Replace retq synonyms
  constexpr array<const char*, 2> rets {{"hlt    ", "repz retq "}};
  if (find(rets.begin(), rets.end(), line) != rets.end()) {
    return "retq";
  }

  // Replace nop synonyms
  constexpr array<const char*, 3> nops {{"nopl", "nopw", "data"}};
  if (line.length() >= 4 && find(nops.begin(), nops.end(), line.substr(0, 4)) != nops.end()) {
    return "nop";
  }

  // Add implicit trailing ones
  constexpr array<const char*, 8> rots {{"shl", "shr", "sal", "sar", "rcl", "rcr", "rol", "ror"}};
  if (line.length() >= 3) {
    const auto in_list = find(rots.begin(), rots.end(), line.substr(0, 3)) != rots.end();
    const auto missing = line.find_first_of(',') == string::npos;
    if (in_list && missing) {
      const auto split = line.find_first_of(' ');
      return line.substr(0, split) + " $0x1," + line.substr(split + 1);
    }
  }

  // Remove convenience naming for vector comparison instructions
  constexpr array<const char*, 24> cmp7 {{
      "cmpeqsd", "cmpsd $0x0,", "cmpeqss", "cmpss $0x0,", "vcmpeqsd", "vcmpsd $0x0,", "vcmpeqss", "vcmpss $0x0,",
      "cmpltsd", "cmpsd $0x1,", "cmpltss", "cmpss $0x1,", "vcmpltsd", "vcmpsd $0x1,", "vcmpltss", "vcmpss $0x1,",
      "cmplesd", "cmpsd $0x2,", "cmpless", "cmpss $0x2,", "vcmplesd", "vcmpsd $0x2,", "vcmpless", "vcmpss $0x2,"
    }
  };
  constexpr array<const char*, 8> cmp10 {{
      "cmpunordsd", "cmpsd $0x3,", "cmpunordss", "cmpss $0x3,", "vcmpunordsd", "vcmpsd $0x3,", "vcmpunordss", "vcmpss $0x3,"
    }
  };
  constexpr array<const char*, 32> cmp8 {{
      "cmpneqsd", "cmpsd $0x4,", "cmpneqss", "cmpss $0x4,", "vcmpneqsd", "vcmpsd $0x4,", "vcmpneqss", "vcmpss $0x4,",
      "cmpnltsd", "cmpsd $0x5,", "cmpnltss", "cmpss $0x5,", "vcmpnltsd", "vcmpsd $0x5,", "vcmpnltss", "vcmpss $0x5,",
      "cmpnlesd", "cmpsd $0x6,", "cmpnless", "cmpss $0x6,", "vcmpnlesd", "vcmpsd $0x6,", "vcmpnless", "vcmpss $0x6,",
      "cmpordsd", "cmpsd $0x7,", "cmpordss", "cmpss $0x7,", "vcmpordsd", "vcmpsd $0x7,", "vcmpordss", "vcmpss $0x7,"
    }
  };
  if (line.length() >= 7) {
    auto itr = find(cmp7.begin(), cmp7.end(), line.substr(0, 7));
    if (itr != cmp7.end()) {
      return *(++itr) + line.substr(8);
    }
  }
  if (line.length() >= 10) {
    auto itr = find(cmp10.begin(), cmp10.end(), line.substr(0, 10));
    if (itr != cmp10.end()) {
      return *(++itr) + line.substr(11);
    }
  }
  if (line.length() >= 8) {
    auto itr = find(cmp8.begin(), cmp8.end(), line.substr(0, 8));
    if (itr != cmp8.end()) {
      return *(++itr) + line.substr(9);
    }
  }

  // Rename movabs for register arguments
  if (line.length() >= 9 && line.substr(0, 9) == "movabsq $") {
    return "movq " + line.substr(8);
  }

  // Add missing suffix to call and jmp
  if (line.length() >= 5 && line.substr(0, 5) == "call ") {
    return "callq " + line.substr(5);
  }
  if (line.length() >= 4 && line.substr(0, 4) == "jmp ") {
    return "jmpq " + line.substr(4);
  }

  // Remove documentation arg from string instructions
  if (line.length() >= 4 && line.substr(0, 4) == "stos") {
    const auto comma = line.find_first_of(',');
    return line.substr(0, 6) + line.substr(comma + 1);
  }
  if (line.length() >= 8 && line.substr(0, 8) == "rep stos") {
    const auto comma = line.find_first_of(',');
    return line.substr(0, 10) + line.substr(comma + 1);
  }
  if (line.length() >= 10 && line.substr(0, 10) == "repnz scas") {
    const auto comma = line.find_first_of(',');
    return line.substr(0, comma);
  }

  // Make lock its own instruction
  if (line.length() >= 4 && line.substr(0, 4) == "lock") {
    return "lock\n" + line.substr(5);
  }

  return line;
}




void Disassembler::disassemble(
    std::string filename, std::function<void (const Disassembler::ParsedFunction&)>& callback) {

  // Get the headers from the objdump
  ipstream* headers = run_objdump(filename, true);

  if (!headers) // if this fails, an error was already reported.
    return;

  // Parse the headers
  map<string, uint64_t> section_offsets;
  parse_section_offsets(*headers, section_offsets);

  // Get the disassembly from objdump
  ipstream* body = run_objdump(filename, false);

  if (!body)  //an error occurred, it's already recorded.
    return;

  // Skip the first four lines of output
  strip_lines(*body, 4);

  // Read the functions and invoke the callback.
  ParsedFunction pf;
  while(parse_function(*body, pf, section_offsets)) {
    callback(pf);
  }


}


