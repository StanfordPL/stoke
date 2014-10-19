
#include "src/tunit/tunit.h"

namespace stoke {

class Disassembler {

  public:

    struct ParsedFunction {

      /* The name of the function */
      std::string name;
      /* The text of the function */
      x64asm::Code code;
      /* The offset from the file of the function */
      uint64_t offset;
      /* The memory offsets, from the start of the function, of each
         instruction (by index) */
      std::vector<uint64_t> instruction_offsets;

    };

    Disassembler() {}

    void disassemble(std::ostream& os, std::function<void (const ParsedFunction&)>& callback);

    void disassemble(std::string filename, std::function<void (const ParsedFunction&)>& callback);

  private:

    

};

}
