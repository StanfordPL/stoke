
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
      EXPECT_EQ(0x40, pf.offset);
      found_sample = true;
    }
  };

  stoke::Disassembler d;
  d.disassemble("tests/fixtures/disassembler/sample", test_tunit);

  EXPECT_TRUE(found_sample);
  EXPECT_FALSE(d.has_error());
  EXPECT_EQ("", d.get_error());

}

/* This is primarily to check that labels are generated
   correctly.  There was initially a bug here. */
TEST(DisassemblerTest, PopCnt) {

  /* These are the expected answers */
  std::stringstream tmp;
  tmp << "testq  %rdi,%rdi" << std::endl;
  tmp << "je     .L_40058f" << std::endl;
  tmp << "xorl   %eax,%eax" << std::endl;
  tmp << "nop" << std::endl;
  tmp << ".L_400580:" << std::endl;
  tmp << "movl   %edi,%edx" << std::endl;
  tmp << "andl   $0x1,%edx" << std::endl;
  tmp << "addl   %edx,%eax" << std::endl;
  tmp << "shrq   $0x1, %rdi" << std::endl;
  tmp << "jne    .L_400580" << std::endl;
  tmp << "cltq   " << std::endl;
  tmp << "retq   " << std::endl;
  tmp << ".L_40058f:" << std::endl;
  tmp << "xorl   %eax, %eax" << std::endl;
  tmp << "retq" << std::endl;
  tmp << "nop" << std::endl;
  tmp << "nop" << std::endl;

  x64asm::Code popcnt_code;
  tmp >> popcnt_code;

  std::vector<uint64_t> popcnt_offsets 
    { 0x0, 0x3, 0x5, 0x7, 0x10, 0x12, 0x15, 0x17, 0x1a, 0x1c, 0x1e, 0x1f, 0x21, 0x22, 0x2c };

  /* Here's the callback sent to the disassembler */
  bool found_popcnt = false;

  std::function<void (const stoke::Disassembler::ParsedFunction&)> test_tunit = 
    [&] (const stoke::Disassembler::ParsedFunction& pf) {

    // There's only one function we're really testing.
    if ( pf.name == "_Z6popcntm") {
      EXPECT_EQ(popcnt_code, pf.code); 
      EXPECT_EQ(popcnt_offsets, pf.instruction_offsets);
      EXPECT_EQ(0x570, pf.offset);
      found_popcnt = true;
    }
  };

  stoke::Disassembler d;
  d.disassemble("tests/fixtures/disassembler/popcnt", test_tunit);

  EXPECT_TRUE(found_popcnt);
  EXPECT_FALSE(d.has_error());
  EXPECT_EQ("", d.get_error());

}


TEST(DisassemblerTest, NoFileGraceful) {

  std::function<void (const stoke::Disassembler::ParsedFunction &pf)>  empty = 
    [] (const stoke::Disassembler::ParsedFunction& pf) {

    EXPECT_TRUE(false) << "The file isn't supposed to exist...";
  };

  stoke::Disassembler d;
  d.disassemble("texts/fixtures/disassembler/does_not_exist", empty);
  EXPECT_TRUE(d.has_error());
  EXPECT_EQ("Error opening file.", d.get_error());


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
