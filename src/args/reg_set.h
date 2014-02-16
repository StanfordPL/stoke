#ifndef STOKE_SRC_ARGS_REG_SET_H
#define STOKE_SRC_ARGS_REG_SET_H

#include "src/ext/cpputil/include/serialize/text_reader.h"
#include "src/ext/cpputil/include/serialize/text_writer.h"
#include "src/ext/x64asm/include/x64asm.h"

namespace cpputil {

template <typename Style>
struct TextReader<x64asm::RegSet, Style> {
	void operator()(std::istream& is, x64asm::RegSet& r) {
		r = x64asm::RegSet::empty();
		for ( std::string temp; is >> temp; temp != "}"; ) {
			if ( temp == "{" )        continue;
			else if ( temp == "rax" ) r += x64asm::rax;
			else if ( temp == "rcx" ) r += x64asm::rcx;
			else if ( temp == "rdx" ) r += x64asm::rdx;
			else if ( temp == "rbx" ) r += x64asm::rbx;
			else if ( temp == "rsp" ) r += x64asm::rsp;
			else if ( temp == "rbp" ) r += x64asm::rbp;
			else if ( temp == "rsi" ) r += x64asm::rsi;
			else if ( temp == "rdi" ) r += x64asm::rdi;
			else if ( temp == "r8" )  r += x64asm::r8;
			else if ( temp == "r9" )  r += x64asm::r9;
			else if ( temp == "r10" ) r += x64asm::r10;
			else if ( temp == "r11" ) r += x64asm::r11;
			else if ( temp == "r12" ) r += x64asm::r12;
			else if ( temp == "r13" ) r += x64asm::r13;
			else if ( temp == "r14" ) r += x64asm::r14;
			else if ( temp == "r15" ) r += x64asm::r15;

			else if ( temp == "xmm0" )  r += x64asm::xmm0;
			else if ( temp == "xmm1" )  r += x64asm::xmm1;
			else if ( temp == "xmm2" )  r += x64asm::xmm2;
			else if ( temp == "xmm3" )  r += x64asm::xmm3;
			else if ( temp == "xmm4" )  r += x64asm::xmm4;
			else if ( temp == "xmm5" )  r += x64asm::xmm5;
			else if ( temp == "xmm6" )  r += x64asm::xmm6;
			else if ( temp == "xmm7" )  r += x64asm::xmm7;
			else if ( temp == "xmm8" )  r += x64asm::xmm8;
			else if ( temp == "xmm9" )  r += x64asm::xmm9;
			else if ( temp == "xmm10" ) r += x64asm::xmm10;
			else if ( temp == "xmm11" ) r += x64asm::xmm11;
			else if ( temp == "xmm12" ) r += x64asm::xmm12;
			else if ( temp == "xmm13" ) r += x64asm::xmm13;
			else if ( temp == "xmm14" ) r += x64asm::xmm14;
			else if ( temp == "xmm15" ) r += x64asm::xmm15;

			else if ( temp == "ymm0" )  r += x64asm::ymm0;
			else if ( temp == "ymm1" )  r += x64asm::ymm1;
			else if ( temp == "ymm2" )  r += x64asm::ymm2;
			else if ( temp == "ymm3" )  r += x64asm::ymm3;
			else if ( temp == "ymm4" )  r += x64asm::ymm4;
			else if ( temp == "ymm5" )  r += x64asm::ymm5;
			else if ( temp == "ymm6" )  r += x64asm::ymm6;
			else if ( temp == "ymm7" )  r += x64asm::ymm7;
			else if ( temp == "ymm8" )  r += x64asm::ymm8;
			else if ( temp == "ymm9" )  r += x64asm::ymm9;
			else if ( temp == "ymm10" ) r += x64asm::ymm10;
			else if ( temp == "ymm11" ) r += x64asm::ymm11;
			else if ( temp == "ymm12" ) r += x64asm::ymm12;
			else if ( temp == "ymm13" ) r += x64asm::ymm13;
			else if ( temp == "ymm14" ) r += x64asm::ymm14;
			else if ( temp == "ymm15" ) r += x64asm::ymm15;

			else  {
				is.setstate(std::ios::failbit);
				break;
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

