
#include "src/disassembler/disassembler.h"
#include "src/tunit/tunit.h"

TEST(DisassemblerTest, SimpleExample) {

  /* These are the expected answers */
  std::stringstream tmp;
  tmp << "leal (%rsi, %rdi, 2), %eax" << std::endl;
  tmp << "subl  %edi, %esi" << std::endl;
  tmp << "imull %eax, %esi" << std::endl;
  tmp << "leal -0x3(%rsi), %eax" << std::endl;
  tmp << "addl $0x5, %esi" << std::endl;
  tmp << "imull %esi, %eax" << std::endl;
  tmp << "retq" << std::endl;

  x64asm::Code sample_code;
  tmp >> sample_code;

  std::vector<uint64_t> sample_offsets 
    { 0x0, 0x3, 0x5, 0x8, 0xb, 0xe, 0x11 };

  /* Here's the callback sent to the disassembler */
  bool found_sample = false;

  std::function<void (const stoke::Disassembler::ParsedFunction&)> test_tunit = 
    [&] (const stoke::Disassembler::ParsedFunction& pf) {

    // There's only one function we're really testing.
    if ( pf.name == "sample") {
      EXPECT_EQ(sample_code, pf.code); 
      EXPECT_EQ(sample_offsets, pf.instruction_offsets);
      found_sample = true;
    }
  };

  stoke::Disassembler d;
  d.disassemble("tests/fixtures/disassembler/sample", test_tunit);

  EXPECT_TRUE(found_sample);
  EXPECT_FALSE(d.has_error());
  EXPECT_EQ("", d.get_error());

}

TEST(DisassemblerTest, NoShellInjection) {

  stoke::Disassembler d;

  std::function<void (const stoke::Disassembler::ParsedFunction&)> test_tunit =
      [] (const stoke::Disassembler::ParsedFunction& pf) {
    EXPECT_TRUE(false) << "Started disassembling with shell injection.";
  };

  d.disassemble("/usr/bin/ls && touch ~/pwned", test_tunit);

  EXPECT_TRUE(d.has_error());
  EXPECT_EQ("Character ' ' not allowed in filename for security.", d.get_error());

}
