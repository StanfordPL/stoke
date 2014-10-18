
#include "src/tunit/tunit.h"

namespace stoke {

class Disassembler {

  public:

    Disassembler() {}

    void disassemble(std::ostream& os, std::function<void (const TUnit&)>& callback);

    void disassemble(std::string filename, std::function<void (const TUnit&)>& callback);

    std::map<std::string, uint64_t> get_offset(std::string filename) {
      return std::map<std::string, uint64_t>();
    }

  private:

    

};

}
