
#include <map>
#include <set>

#include "src/tunit/tunit.h"
#include "src/ext/pstreams-0.8.1/pstream.h"

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

    /* Constructs a fresh disassembler */
    Disassembler() {
      error_ = false;
      error_message_ = "";
    }

    /* Reports if an error occurred in the last operation.  Whether an error
     * has occurred is cleared whenever disassemble() is called. */
    bool has_error() {
      return error_;
    }

    /* Returns the latest error message. */
    std::string get_error() {
      return error_message_;
    }

    /* Disassembles the specified file; for each function it constructs a
     * ParsedFunction object with the name, code, and memory offsets, and uses
     * this to call the callback.  Be careful!  The ParsedFunction parameter is
     * by reference, and it's guaranteed to be correct during the invocation to
     * the call.  After the callback returns, this data can be modified.  Don't
     * rely on it being correct later. */
    void disassemble(std::string filename, std::function<void (const ParsedFunction&)>& callback);

  private:

    typedef std::vector<std::pair<uint64_t, std::string>> line_map;
    typedef std::set<uint64_t> label_set;



    /* Parse the section offsets from objdump's stdout. */
    void parse_section_offsets(redi::ipstream& ips, 
                               std::map<std::string, uint64_t>& section_offsets);
    /* Parse a single function from objdump's stdout */
    bool parse_function(redi::ipstream& ips, ParsedFunction& pf,
                        std::map<std::string, uint64_t>& section_offsets);
    /* Parse an instruction from a line */
    bool parse_instr_from_line(const std::string& line, std::string& instr);
    /* Get an address from an objdump'd line */
    uint64_t parse_addr_from_line(const std::string& line);
    /* Ignore a few lines from the input */
    void strip_lines(redi::ipstream& ips, size_t lines);
    /* Get all the lines from a function */
    line_map index_lines(redi::ipstream& ips, std::string& line);
    /* Rewrite a line from objdump for our parser :( */
    std::string fix_instruction(const std::string& line);
    /* Fix the labels */
    label_set fix_label_uses(line_map& lines);


    /* Runs objdump and provides the output stream */
    redi::ipstream* run_objdump(std::string& filename, bool only_header);
    /* Checks if the file can be opened, etc. */
    bool check_file(std::string&);
    /* Checks if a filename is whitelisted for use.  This prevents accidental
     * shell injection. */
    bool check_filename(std::string&);


    /* Tracks if an error occurred. */
    bool error_;
    /* Tracks the last error message. */
    std::string error_message_;

};

}
