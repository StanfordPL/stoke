#ifndef STOKE_SRC_ARGS_CODE_H
#define STOKE_SRC_ARGS_CODE_H

#include "src/ext/cpputil/include/serialize/text_reader.h"
#include "src/ext/cpputil/include/serialize/text_writer.h"
#include "src/ext/x64asm/include/x64asm.h"

namespace cpputil {

template <typename Style>
struct TextReader<x64asm::Code, Style> {
	void operator()(std::istream& is, x64asm::Code& c) {
		is >> c;
	}
};

template <typename Style>
struct TextWriter<x64asm::Code, Style> {
	void operator()(std::ostream& os, const x64asm::Code& c) {
		os << c;
	}
};

} // namespace cpputil

#endif
