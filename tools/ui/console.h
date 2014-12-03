#ifndef STOKE_TOOLS_UI_CONSOLE_H
#define STOKE_TOOLS_UI_CONSOLE_H

#include <cstdlib>
#include <iostream>
#include <sstream>

#include "src/ext/cpputil/include/io/filterstream.h"
#include "src/ext/cpputil/include/io/abort.h"
#include "src/ext/cpputil/include/io/prefix.h"

namespace stoke {

class Console {
	public:
		typedef cpputil::ofilterstream<cpputil::Prefix> message_type;
		typedef cpputil::ofilterstream<cpputil::Abort> error_type;
	
		/** Messages are routed through cout. */
		static message_type& msg() {
			static message_type m(std::cout);
			return m;
		}
		/** Warnings are assigned a prefix and routed through cerr. */
		static message_type& warn() {
			static message_type w(std::cerr);
			w.filter().prefix("WARNING: ");
			return w;
		}
		/** Errors are assigned a prefix, routed through cerr, and invoke shutdown. */
		static error_type& error(int code = 1) {
			static message_type m(std::cerr);
			m.filter().prefix("FATAL ERROR: ");

			static error_type e(m);
			e.filter().code(code);

			return e;
		}
};

} // namespace stoke

#endif
