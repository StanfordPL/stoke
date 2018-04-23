
#include <sstream>
#include <iostream>
#include <istream>
#include <ostream>
#include <fstream>
#include "ext/stdio_filebuf.h"

#ifndef STOKE_VALIDATOR_SAGE
#define STOKE_VALIDATOR_SAGE

namespace stoke {

class Sage {

public:
  std::ostream& get_stream() {
    return buffer_to_sage;
  }

  std::string get_tmp_filename() {
    if(tmp_name.size() == 0) {
      tmp_name = tmpnam(NULL) + std::string(".out");
    }
    return tmp_name;
  }

  void run();

private:

  std::stringstream buffer_to_sage;

  static std::ostream* stream_to_sage;
  static std::istream* stream_from_sage;
  static __gnu_cxx::stdio_filebuf<char>* to_filebuf;
  static __gnu_cxx::stdio_filebuf<char>* from_filebuf;

  std::string tmp_name;

  static bool initialized;
  static void initialize();
  static pid_t child_pid;

};
}

#endif
