// Copyright 2013-2015 Stanford University
//
// Licensed under the Apache License, Version 2.0 (the License);
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an AS IS BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.


#include <sstream>
#include <fstream>
#include <iostream>

#include "src/ext/x64asm/include/x64asm.h"
#include "src/disassembler/disassembler.h"

using namespace redi;
using namespace std;
using namespace x64asm;

// This is a stop-gap until g++-4.9 which will support c++11 regex
#include "boost/regex.hpp"
using namespace boost;

namespace {

/** Returns true if the first n characters of a string match a prefix */
bool is_prefix(const std::string& s, const char* prefix, size_t len) {
  return s.length() >= len && s.substr(0,len) == prefix;
}

/** Strips n lines from an ipstream */
void strip_lines(ipstream& ips, size_t lines) {
  string line;
  for (size_t i = 0; i < lines; ++i) {
    getline(ips, line);
  }
}

/** Is this character sequence a hex string? */
bool is_hex_string(const string& s) {
  for (auto c : s) {
    if (!isxdigit(c)) {
      return false;
    }
  }
  return true;
}

// Convert a hex string to an int */
uint64_t hex_to_int(const string& s) {
  uint64_t val;
  istringstream iss(s);
  iss >> hex >> val;
  return val;
}

/** Mangle @s and .s into _s (this is a hack around dealing with @plt functions) */
string mangle_lable(string label) {
  for (auto& c : label) {
    c = (c == '@' || c == '.') ? '_' : c;
  }
  return label;
}

} // namespace

namespace stoke {

bool Disassembler::check_filename(const string& s) {
  /* Prevent shell injection */
  for (size_t i = 0; i < s.size(); ++i) {
    char c = s[i];

    if (c >= 'a' && c <= 'z') {
      continue;
    } else if (c >= 'A' && c <= 'Z') {
      continue;
    } else if (c >= '0' && c <= '9') {
      continue;
    } else if (c == '.' ||
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

  /* Check that we can open the file */
  fstream filestr;
  filestr.open(s);
  if (filestr.is_open()) {
    filestr.close();
    return true;
  }

  error_ = true;
  error_message_ = "Error opening file.";
  return false;
}

ipstream* Disassembler::run_objdump(const string& filename, bool only_header) {
  if (!check_filename(filename)) {
    return NULL;
  }

  string target = "";
  if (only_header) {
    target = "/usr/bin/objdump -h " + filename;
  } else {
    target = "/usr/bin/objdump -j .text -Msuffix -d " + filename;
  }

  auto stream = new ipstream(target, pstreams::pstdout);

  if (!stream) {
    error_ = true;
    error_message_ = "Unknown error spawning objdump: no memory allocated.";
    return NULL;
  }

  if (!stream->is_open()) {
    error_ = true;
    error_message_ = "Unknown error spawning objdump.";
    delete stream;
    return NULL;
  }

  return stream;
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

    iss >> temp >> section >> temp >> temp >> hex >> lma >> offset;
    section_offsets[section] = lma - offset;

    // Trailing second line
    getline(ips, line);
  }
}

string Disassembler::fix_instruction(const string& line) {
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

  // Remove documentation arg from string instructions
  if (is_prefix(line, "stos", 4)) {
    const auto comma = line.find_first_of(',');
    return line.substr(0, 6) + line.substr(comma + 1);
  }
  if (is_prefix(line, "rep stos", 8)) {
    const auto comma = line.find_first_of(',');
    return line.substr(0, 10) + line.substr(comma + 1);
  }
  if (is_prefix(line, "repnz scas", 10)) {
    const auto comma = line.find_first_of(',');
    return line.substr(0, comma);
  }

  // Synonyms
  if (is_prefix(line, "hlt", 3) || is_prefix(line, "repz retq", 9)) {
    return "retq";
  } else if (is_prefix(line, "nop", 3) || is_prefix(line, "data", 4)) {
    return "nop";
  } else if (is_prefix(line, "movabsq", 7)) {
    return "movq" + line.substr(7);
  }

  // Append q to the end of call and jump
  if (is_prefix(line, "call ", 5)) {
    return "callq " + line.substr(5);
  } else if (line.length() >= 4 && line.substr(0,4) == "jmp ") {
    return "jmpq " + line.substr(4);
  }

  // Make lock its own instruction
  if (is_prefix(line, "lock", 4)) {
    return "lock\n" + line.substr(4);
  }

  // The remaining cases are easier to implement with regexs
  // We do get a performance hit though, so let's at least try to be smart here
  auto ll = line;

  // The whole family of (v)cmp synonyms
  if (is_prefix(line, "cmp", 4) || is_prefix(line, "vcmp", 4)) {
    ll = regex_replace(ll, regex("(v?cmp)eq([^ ]+)"),       "$1$2 \\$0x00,$3");
    ll = regex_replace(ll, regex("(v?cmp)lt([^ ]+)"),       "$1$2 \\$0x01,$3");
    ll = regex_replace(ll, regex("(v?cmp)le([^ ]+)"),       "$1$2 \\$0x02,$3");
    ll = regex_replace(ll, regex("(v?cmp)unord([^ ]+)"),    "$1$2 \\$0x03,$3");
    ll = regex_replace(ll, regex("(v?cmp)neq([^ ]+)"),      "$1$2 \\$0x04,$3");
    ll = regex_replace(ll, regex("(v?cmp)nlt([^ ]+)"),      "$1$2 \\$0x05,$3");
    ll = regex_replace(ll, regex("(v?cmp)nle([^ ]+)"),      "$1$2 \\$0x06,$3");
    ll = regex_replace(ll, regex("(v?cmp)ord([^ ]+)"),      "$1$2 \\$0x07,$3");
    ll = regex_replace(ll, regex("(v?cmp)eq_uq([^ ]+)"),    "$1$2 \\$0x08,$3");
    ll = regex_replace(ll, regex("(v?cmp)nge([^ ]+)"),      "$1$2 \\$0x09,$3");
    ll = regex_replace(ll, regex("(v?cmp)ngt([^ ]+)"),      "$1$2 \\$0x0a,$3");
    ll = regex_replace(ll, regex("(v?cmp)false([^ ]+)"),    "$1$2 \\$0x0b,$3");
    ll = regex_replace(ll, regex("(v?cmp)neq_oq([^ ]+)"),   "$1$2 \\$0x0c,$3");
    ll = regex_replace(ll, regex("(v?cmp)ge([^ ]+)"),       "$1$2 \\$0x0d,$3");
    ll = regex_replace(ll, regex("(v?cmp)gt([^ ]+)"),       "$1$2 \\$0x0e,$3");
    ll = regex_replace(ll, regex("(v?cmp)true([^ ]+)"),     "$1$2 \\$0x0f,$3");
    ll = regex_replace(ll, regex("(v?cmp)eq_os([^ ]+)"),    "$1$2 \\$0x10,$3");
    ll = regex_replace(ll, regex("(v?cmp)lt_oq([^ ]+)"),    "$1$2 \\$0x11,$3");
    ll = regex_replace(ll, regex("(v?cmp)le_oq([^ ]+)"),    "$1$2 \\$0x12,$3");
    ll = regex_replace(ll, regex("(v?cmp)unord_s([^ ]+)"),  "$1$2 \\$0x13,$3");
    ll = regex_replace(ll, regex("(v?cmp)neq_us([^ ]+)"),   "$1$2 \\$0x14,$3");
    ll = regex_replace(ll, regex("(v?cmp)nlt_uq([^ ]+)"),   "$1$2 \\$0x15,$3");
    ll = regex_replace(ll, regex("(v?cmp)nle_uq([^ ]+)"),   "$1$2 \\$0x16,$3");
    ll = regex_replace(ll, regex("(v?cmp)ord_s([^ ]+)"),    "$1$2 \\$0x17,$3");
    ll = regex_replace(ll, regex("(v?cmp)ueq_us([^ ]+)"),   "$1$2 \\$0x18,$3");
    ll = regex_replace(ll, regex("(v?cmp)nge_uq([^ ]+)"),   "$1$2 \\$0x19,$3");
    ll = regex_replace(ll, regex("(v?cmp)ngt_uq([^ ]+)"),   "$1$2 \\$0x1a,$3");
    ll = regex_replace(ll, regex("(v?cmp)false_os([^ ]+)"), "$1$2 \\$0x1b,$3");
    ll = regex_replace(ll, regex("(v?cmp)neq_os([^ ]+)"),   "$1$2 \\$0x1c,$3");
    ll = regex_replace(ll, regex("(v?cmp)ge_oq([^ ]+)"),    "$1$2 \\$0x1d,$3");
    ll = regex_replace(ll, regex("(v?cmp)gt_oq([^ ]+)"),    "$1$2 \\$0x1e,$3");
    ll = regex_replace(ll, regex("(v?cmp)true_us([^ ]+)"),  "$1$2 \\$0x1f,$3");
  }

  // I *think* these suffixe function as annotations and can be removed
  if (is_prefix(line, "vcvt", 4)) {
    ll = regex_replace(ll, regex("vcvtpd2psx"), "vcvtpd2ps");
    ll = regex_replace(ll, regex("vcvtpd2psy"), "vcvtpd2ps");
  } else if (is_prefix(line, "mova", 4)) {
    ll = regex_replace(ll, regex("movapd\\.s"), "movapd");
    ll = regex_replace(ll, regex("movaps\\.s"), "movaps");
  } else if (is_prefix(line, "movu", 4)) {
    ll = regex_replace(ll, regex("movupd\\.s"), "movupd");
    ll = regex_replace(ll, regex("movups\\.s"), "movups");
  } else if (is_prefix(line, "vmova", 5)) {
    ll = regex_replace(ll, regex("vmovapd\\.s"), "vmovapd");
    ll = regex_replace(ll, regex("vmovaps\\.s"), "vmovaps");
  } else if (is_prefix(line, "vmovd", 5)) {
    ll = regex_replace(ll, regex("vmovdqa\\.s"), "vmovdqa");
    ll = regex_replace(ll, regex("vmovdqu\\.s"), "vmovdqu");
  } else if (is_prefix(line, "vmovu", 5)) {
    ll = regex_replace(ll, regex("vmovupd\\.s"), "vmovupd");
    ll = regex_replace(ll, regex("vmovups\\.s"), "vmovups");
  }

  return ll;
}

bool Disassembler::parse_line(const string& s, LineInfo& line) {
  // Some character landmarks
  const auto tab1 = s.find_first_of('\t');
  const auto tab2 = s.find_first_of('\t', tab1 + 1);
  const auto colon = s.find_first_of(':');

  // Record line offset
  line.offset = hex_to_int(s.substr(2, colon-2));
  // Count hex bytes
  line.hex_bytes = 0;
  for (auto i = tab1+1, ie = tab2 == string::npos ? s.length() : tab2; i < ie; i+=3) {
    line.hex_bytes += isxdigit(s[i]) ? 1 : 0;
  }

  // If this is a hex only line, we're done
  if (tab2 == string::npos) {
    return false;
  }
  // Otherwise, instruction are terminated by eol, # or <
  const auto begin = tab2 + 1;
  auto comment = s.find_last_of('#');
  comment = comment == string::npos ? s.length() : comment;
  auto annot = s.find_last_of('<');
  annot = annot == string::npos ? s.length() : annot;
  const auto len = min(comment, annot) - begin;

  line.instr = s.substr(begin, len);
  return true;
}

bool Disassembler::parse_ptr(const string& s, map<string, string>& ptrs) {
  // Record the name of the function in addition to the "address"
  // E.g. if we have "  callq 401100 <_foo>"
  // then we want to add "401100" -> "_foo" to the mapping.

  // get the function name
  auto start = s.find_last_of('<');
  auto end = s.find_last_of('>');
  if (start == string::npos || end == string::npos) {
    return false;
  }

  //skip labels that point inside the same function
  auto function_name = s.substr(start + 1, end - start - 1);
  if (function_name.find_last_of("+") != string::npos) {
    return false;
  }

  // Mangle away tokens we don't support
  function_name = mangle_lable(function_name);

  // Read the address
  auto end_addr   = s.find_first_of(' ', start - 3);
  auto start_addr = s.find_last_of(' ', end_addr - 1);
  if (start_addr == string::npos || end_addr == string::npos) {
    return false;
  }
  auto address = s.substr(start_addr + 1, end_addr - start_addr - 1);

  // We got a result
  ptrs[address] = function_name;
  return true;
}

pair<vector<Disassembler::LineInfo>, map<string,string>> Disassembler::parse_lines(ipstream& ips, const string& name) {
  vector<LineInfo> lines;
  map<string, string> ptrs;
  string s;

  while (getline(ips, s)) {
    // Functions are terminated by empty lines
    if (s.empty()) {
      break;
    }

    // parse_line() returns false for line continuations
    // When that happens only add hex bytes to previous result
    LineInfo line;
    if (parse_line(s, line)) {
      lines.push_back(line);
      parse_ptr(s, ptrs);
    } else {
      lines.back().hex_bytes += line.hex_bytes;
    }
  }

  // Update non-funtion label references and record targets
  set<uint64_t> label_refs;
  for (auto& l : lines) {
    // Opcodes are followed by at least one space; ignore instructions with no operands
    auto ops_begin = l.instr.find_first_of(' ');
    for (; ops_begin != string::npos && isspace(l.instr[ops_begin]); ops_begin++);
    if (ops_begin == l.instr.length() || ops_begin == string::npos) {
      continue;
    }

    // Operands are terminated by whitespace
    const auto ops_end = l.instr.find_first_of(' ', ops_begin + 1);
    const auto ops_len = (ops_end == string::npos ? l.instr.length() : ops_end) - ops_begin;
    const auto ops = l.instr.substr(ops_begin, ops_len);

    // Arguments that are strictly hex digits become labels
    if (is_hex_string(ops)) {
      const auto itr = ptrs.find(ops);
      if (itr != ptrs.end()) {
        l.instr = l.instr.substr(0, ops_begin) + "." + itr->second;
      } else {
        label_refs.insert(hex_to_int(ops));
        l.instr = l.instr.substr(0, ops_begin) + ".L_" + ops;
      }
    }
  }

  // Insert label definitions where necessary and fix instruction text
  // (At some point, the fact that we split lock into two instructions is going
  //  to bite us here).
  vector<LineInfo> result;
  result.push_back({lines[0].offset, 0, string(".") + name + string(":")});
  for (const auto& l : lines) {
    if (label_refs.find(l.offset) != label_refs.end()) {
      ostringstream oss;
      oss << ".L_" << hex << l.offset << ":";
      result.push_back({l.offset, 0, oss.str()});
    }
    result.push_back({l.offset, l.hex_bytes, fix_instruction(l.instr)});
  }

  return {result, ptrs};
}

void Disassembler::rescale_offsets(FunctionCallbackData& data, const vector<LineInfo>& lines, uint64_t text_offset) {
  // Rescale function offsets
  const auto start_addr = data.instruction_offsets[0];
  data.offset = start_addr - text_offset;
  for (auto& o : data.instruction_offsets) {
    o -= start_addr;
  }

  // Rescale rip offsets
  Assembler assm;
  int64_t delta = 0;
  for (size_t i = 0, ie = data.tunit.code.size(); i < ie; ++i) {
    auto& instr = data.tunit.code[i];

    // Record delta between x64asm hex and this hex
    delta += ((int)lines[i].hex_bytes - (int)assm.hex_size(instr));

    // Nothing to do if this isn't rip dereference
    if (!instr.is_explicit_memory_dereference()) {
      continue;
    }
    const auto mi = instr.mem_index();
    auto mem = instr.get_operand<M8>(mi);
    if (!mem.rip_offset()) {
      continue;
    }

    // Rescale displacement
    mem.set_disp(mem.get_disp() + delta);
    instr.set_operand(mi, mem);
  }
}

bool Disassembler::parse_function(ipstream& ips, FunctionCallbackData& data, map<string, uint64_t>& offsets) {
  if (ips.eof()) {
    return false;
  }

  // Clear old values
  data.tunit.code.clear();
  data.offset = 0;
  data.instruction_sizes.clear();
  data.instruction_offsets.clear();
  data.parse_error = false;

  string line;

  // Get the name of the function
  getline(ips, line);
  const auto begin = line.find_first_of('<') + 1;
  const auto len = line.find_last_of('>') - begin;
  data.tunit.name = mangle_lable(line.substr(begin, len));

  // Parse the contents of this function
  // This function inserts missing lines such as labels and splits lock into two instructions
  const auto res = parse_lines(ips, data.tunit.name);
  const auto& lines = res.first;
  data.addr_label_map = res.second;

  // Record metadata
  // This meta-data is wrt to the original code, so skip empty lines which are labels
  // @todo if we've split a lock instruction, we're going to fall out of sync here
  data.size = 0;
  for (const auto& l : lines) {
    if (l.hex_bytes != 0) {
      data.instruction_offsets.push_back(l.offset);
      data.instruction_sizes.push_back(l.hex_bytes);
      data.size += l.hex_bytes;
    }
  }

  // Read code.
  stringstream ss;
  for (const auto& l : lines) {
    ss << l.instr << endl;
  }
  ss >> data.tunit.code;
  if (ss.fail()) {
    data.parse_error = true;
  }

  // Rescale offsets
  rescale_offsets(data, lines, offsets[".text"]);

  return true;
}

void Disassembler::disassemble(const std::string& filename) {
  // Get the headers from the objdump (if this fails an error was already reported)
  ipstream* headers = run_objdump(filename, true);
  if (!headers) {
    return;
  }

  // Parse the headers
  map<string, uint64_t> section_offsets;
  parse_section_offsets(*headers, section_offsets);

  // Get the disassembly from objdump (if an error occurred, it's already been reported)
  ipstream* body = run_objdump(filename, false);
  if (!body) {
    return;
  }

  // Skip the first four lines of output
  strip_lines(*body, 4);
  // Ignore lines starting with "D"
  for (string line; getline(*body, line) && line[0] == 'D';) {
    // Does nothing
  }

  // Read the functions and invoke the callback.
  FunctionCallbackData data;
  while (parse_function(*body, data, section_offsets)) {
    if (!callback_closure_) {
      fxn_cb_(data, fxn_cb_arg_);
    } else {
      (*callback_closure_)(data);
    }
  }
}

} // namespace stoke
