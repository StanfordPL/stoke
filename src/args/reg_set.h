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

		std::string temp;
		is >> temp;

		if ( temp == "empty" )
			return is;

		for ( is >> temp; temp != "}"; ) {
			if ( temp == "rax" ) r += rax;
			else if ( temp == "rcx" ) r += rcx;
			else if ( temp == "rdx" ) r += rdx;
			else if ( temp == "rbx" ) r += rbx;
			else if ( temp == "rsp" ) r += rsp;
			else if ( temp == "rbp" ) r += rbp;
			else if ( temp == "rsi" ) r += rsi;
			else if ( temp == "rdi" ) r += rdi;
			else if ( temp == "r8" )  r += r8;
			else if ( temp == "r9" )  r += r9;
			else if ( temp == "r10" ) r += r10;
			else if ( temp == "r11" ) r += r11;
			else if ( temp == "r12" ) r += r12;
			else if ( temp == "r13" ) r += r13;
			else if ( temp == "r14" ) r += r14;
			else if ( temp == "r15" ) r += r15;

			else if ( temp == "xmm0" )  r += xmm0;
			else if ( temp == "xmm1" )  r += xmm1;
			else if ( temp == "xmm2" )  r += xmm2;
			else if ( temp == "xmm3" )  r += xmm3;
			else if ( temp == "xmm4" )  r += xmm4;
			else if ( temp == "xmm5" )  r += xmm5;
			else if ( temp == "xmm6" )  r += xmm6;
			else if ( temp == "xmm7" )  r += xmm7;
			else if ( temp == "xmm8" )  r += xmm8;
			else if ( temp == "xmm9" )  r += xmm9;
			else if ( temp == "xmm10" ) r += xmm10;
			else if ( temp == "xmm11" ) r += xmm11;
			else if ( temp == "xmm12" ) r += xmm12;
			else if ( temp == "xmm13" ) r += xmm13;
			else if ( temp == "xmm14" ) r += xmm14;
			else if ( temp == "xmm15" ) r += xmm15;

			else if ( temp == "ymm0" )  r += ymm0;
			else if ( temp == "ymm1" )  r += ymm1;
			else if ( temp == "ymm2" )  r += ymm2;
			else if ( temp == "ymm3" )  r += ymm3;
			else if ( temp == "ymm4" )  r += ymm4;
			else if ( temp == "ymm5" )  r += ymm5;
			else if ( temp == "ymm6" )  r += ymm6;
			else if ( temp == "ymm7" )  r += ymm7;
			else if ( temp == "ymm8" )  r += ymm8;
			else if ( temp == "ymm9" )  r += ymm9;
			else if ( temp == "ymm10" ) r += ymm10;
			else if ( temp == "ymm11" ) r += ymm11;
			else if ( temp == "ymm12" ) r += ymm12;
			else if ( temp == "ymm13" ) r += ymm13;
			else if ( temp == "ymm14" ) r += ymm14;
			else if ( temp == "ymm15" ) r += ymm15;

			else  {
				is.setstate(ios::failbit);
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
			if ( rs.contains(r64s[i]) )
				os << " " << r64s[i];
			else if ( rs.contains(r32s[i]) )
				os << " " << r32s[i];
			else if ( rs.contains(r16s[i]) )
				os << " " << r16s[i];
			else if ( i < 4 ) {
				if ( rs.contains(rls[i]) )
					os << " " << rls[i];
				else if ( rs.contains(rhs[i]) )
					os << " " << rhs[i];
			}
			else if ( rs.contains(rbs[i-4]) )
				os << " " << rbs[i-4];
		for ( size_t i = 0; i < 16; ++i )
			if ( rs.contains(ymms[i]) )
				os << " " << ymms[i];
			else if ( rs.contains(xmms[i]) )
				os << " " << xmms[i];
		os << " }";
	}
};

} // namespace cpputil

#endif

