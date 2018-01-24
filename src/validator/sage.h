
#include <sstream>
#include <iostream>
#include <istream>
#include <ostream>
#include <fstream>

#ifndef STOKE_VALIDATOR_SAGE
#define STOKE_VALIDATOR_SAGE

namespace stoke {

class Sage {

public:
  std::ostream& get_stream() {
    return stream_to_sage;
  }

  std::string get_tmp_filename() {
    if(tmp_name.size() == 0) {
      tmp_name = tmpnam(NULL) + std::string(".out");
    }
    return tmp_name;
  }

  void run();

private:
  std::string tmp_name;
  std::stringstream stream_to_sage;
  std::ifstream sage_output;

  static std::ofstream pipe_to_sage;
  static std::ifstream pipe_from_sage;
  static bool initialized;
  static void initialize();

};
}

#endif
