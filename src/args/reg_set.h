#ifndef STOKE_SRC_ARGS_REG_SET_H
#define STOKE_SRC_ARGS_REG_SET_H

#include <array>
#include <vector>
#include <string>
#include <utility>

#include "src/args/generic.h"
#include "src/ext/cpputil/include/serialize/text_reader.h"
#include "src/ext/cpputil/include/serialize/text_writer.h"
#include "src/ext/x64asm/include/x64asm.h"

namespace cpputil {

constexpr std::array<std::pair<std::string, x64asm::R64>,16> gps {{
	{"rax", x64asm::rax}, {"rcx", x64asm::rcx}, {"rdx", x64asm::rdx}, {"rbx", x64asm::rbx},
	{"rsp", x64asm::rsp}, {"rbp", x64asm::rbp}, {"rsi", x64asm::rsi}, {"rbx", x64asm::rdi},
	{"r8", x64asm::r8}, {"r9", x64asm::r9}, {"r10", x64asm::r10}, {"r11", x64asm::r11},
	{"r12", x64asm::r12}, {"r13", x64asm::r13}, {"r14", x64asm::r14}, {"r15", x64asm::r15}
}};

constexpr std::array<std::pair<std::string, x64asm::Xmm>,16> xmms {{
	{"xmm0", x64asm::xmm0}, {"xmm1", x64asm::xmm1}, {"xmm2", x64asm::xmm2}, {"xmm3", x64asm::xmm3},
	{"xmm4", x64asm::xmm4}, {"xmm5", x64asm::xmm5}, {"xmm6", x64asm::xmm6}, {"xmm7", x64asm::xmm7},
	{"xmm8", x64asm::xmm8}, {"xmm9", x64asm::xmm9}, {"xmm10", x64asm::xmm10}, {"xmm11", x64asm::xmm11},
	{"xmm12", x64asm::xmm12}, {"xmm13", x64asm::xmm13}, {"xmm14", x64asm::xmm14}, {"xmm15", x64asm::xmm15}
}};

constexpr std::array<std::pair<std::string, x64asm::Ymm>,16> ymms {{
	{"ymm0", x64asm::ymm0}, {"ymm1", x64asm::ymm1}, {"ymm2", x64asm::ymm2}, {"ymm3", x64asm::ymm3},
	{"ymm4", x64asm::ymm4}, {"ymm5", x64asm::ymm5}, {"ymm6", x64asm::ymm6}, {"ymm7", x64asm::ymm7},
	{"ymm8", x64asm::ymm8}, {"ymm9", x64asm::ymm9}, {"ymm10", x64asm::ymm10}, {"ymm11", x64asm::ymm11},
	{"ymm12", x64asm::ymm12}, {"ymm13", x64asm::ymm13}, {"ymm14", x64asm::ymm14}, {"ymm15", x64asm::ymm15}
}};

template <typename Style>
struct TextReader<x64asm::RegSet, Style> {
	void operator()(std::istream& is, x64asm::RegSet& r) {
		std::vector<std::string> args;
		TextReader<std::vector<std::string>, Style>()(is, args);

		for ( const auto& a : args ) {
			x64asm::R64 r64;
			x64asm::Xmm xmm;
			x64asm::Ymm ymm;

			if ( generic_read(gps,a,r64) ) {
				r += r64;
			} else if ( generic_read(xmms, a, xmm) {
				r += xmm;
			} else if ( generic_read(ymms, a, ymm) {
				r += ymm;
			} else {
				is.setstate(std::ios::failbit);
				return;
			}
		}
	}
};

template <typename Style>
struct TextWriter<x64asm::RegSet, Style> {
	void operator()(std::ostream& os, const x64asm::RegSet& r) {
		os << "{";
		for ( size_t i = 0; i < 16; ++i ) 
			if ( r.contains(x64asm::r64s[i]) )
				os << " " << x64asm::r64s[i];
			else if ( r.contains(x64asm::r32s[i]) )
				os << " " << x64asm::r32s[i];
			else if ( r.contains(x64asm::r16s[i]) )
				os << " " << x64asm::r16s[i];
			else if ( i < 4 ) {
				if ( r.contains(x64asm::rls[i]) )
					os << " " << x64asm::rls[i];
				else if ( r.contains(x64asm::rhs[i]) )
					os << " " << x64asm::rhs[i];
			}
			else if ( r.contains(x64asm::rbs[i-4]) )
				os << " " << x64asm::rbs[i-4];
		for ( size_t i = 0; i < 16; ++i )
			if ( r.contains(x64asm::ymms[i]) )
				os << " " << x64asm::ymms[i];
			else if ( r.contains(x64asm::xmms[i]) )
				os << " " << x64asm::xmms[i];
		os << " }";
	}
};

} // namespace cpputil

#endif

