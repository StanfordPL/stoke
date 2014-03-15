#include <array>
#include <string>
#include <utility>

#include "src/ext/cpputil/include/serialize/text_reader.h"
#include "src/ext/cpputil/include/serialize/text_writer.h"

#include "src/args/flag_set.h"
#include "src/args/generic.h"

using namespace cpputil;
using namespace std;
using namespace x64asm;

namespace {

array<pair<string, Flag>, 41> flags {{
  {"fpu", Flag::FPU}, 
	{"tsc", Flag::TSC}, 
	{"msr", Flag::MSR}, 
	{"cx8", Flag::CX8},
  {"sep", Flag::SEP}, 
	{"cmov", Flag::CMOV}, 
	{"clflush", Flag::CLFLUSH}, 
	{"mmx", Flag::MMX},
  {"fxsr", Flag::FXSR}, 
	{"sse", Flag::SSE}, 
	{"sse2", Flag::SSE2}, 
	{"syscall", Flag::SYSCALL},
  {"rdtscp", Flag::RDTSCP}, 
	{"rep_good", Flag::REP_GOOD}, 
	{"nopl", Flag::NOPL}, 
	{"pni", Flag::PNI},
  {"pclmulqdq", Flag::PCLMULQDQ}, 
	{"monitor", Flag::MONITOR}, 
	{"ssse3", Flag::SSSE3}, 
	{"fma", Flag::FMA},
  {"cx16", Flag::CX16}, 
	{"sse4_1", Flag::SSE4_1}, 
	{"sse4_2", Flag::SSE4_2}, 
	{"movbe", Flag::MOVBE},
  {"popcnt", Flag::POPCNT}, 
	{"aes", Flag::AES}, 
	{"xsave", Flag::XSAVE}, 
	{"avx", Flag::AVX},
  {"f16c", Flag::F16C}, 
	{"rdrand", Flag::RDRAND}, 
	{"lahf_lm", Flag::LAHF_LM}, 
	{"abm", Flag::ABM},
  {"xsaveopt", Flag::XSAVEOPT}, 
	{"fsgsbase", Flag::FSGSBASE}, 
	{"bmi1", Flag::BMI1}, 
	{"hle", Flag::HLE},
  {"avx2", Flag::AVX2}, 
	{"bmi2", Flag::BMI2}, 
	{"erms", Flag::ERMS}, 
	{"invpcid", Flag::INVPCID},
  {"rtm", Flag::RTM}
}};

} // namespace

namespace stoke {

void FlagSetReader::operator()(istream& is, FlagSet& fs) {
  vector<string> args;
  TextReader<vector<string>>()(is, args);

  for (const auto& a : args) {
		Flag f;
    if (generic_read(flags, a, f)) {
      fs += f;
    } else {
      is.setstate(ios::failbit);
      return;
    }
  }
}

void FlagSetWriter::operator()(ostream& os, const FlagSet& fs) {
  os << "{";
	for ( size_t i = (size_t)Flag::FPU; i <= (size_t)Flag::RTM ; i <<= 1 ) {
		if ( fs.contains((Flag)i) ) {
			string s;
			generic_write(flags, s, (Flag)i);
			os << " " << s;
		}
	}
	os << " }";
}

} // namespace stoke

