
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

  stoke::Disassembler::Callback test_tunit = 
    [&] (const stoke::FunctionCallbackData& fcd) {

    EXPECT_FALSE(fcd.parse_error);

    // There's only one function we're really testing.
    if ( fcd.tunit.name == "sample") {
      EXPECT_EQ(sample_code, fcd.tunit.code); 
      EXPECT_EQ(sample_offsets, fcd.instruction_offsets);
      EXPECT_EQ(0x40, fcd.offset);
      found_sample = true;
    }
  };

  stoke::Disassembler d;
  d.set_function_callback(&test_tunit);
  d.disassemble("tests/fixtures/disassembler/sample");

  EXPECT_TRUE(found_sample);
  EXPECT_FALSE(d.has_error());
  EXPECT_EQ("", d.get_error());

}

/* This is primarily to check that labels are generated
   correctly.  It also checks that offsets are correct
   in the presense of labels. */
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
    { 0x0, 0x3, 0x5, 0x7, 
      0x10, 0x10, 0x12, 0x15, 0x17, 0x1a, 0x1c, 0x1e, 
      0x1f, 0x1f, 0x21, 0x22, 0x2c };

  /* Here's the callback sent to the disassembler */
  bool found_popcnt = false;

  stoke::Disassembler::Callback test_tunit = 
    [&] (const stoke::FunctionCallbackData& pf) {

    EXPECT_FALSE(pf.parse_error);

    // There's only one function we're really testing.
    if ( pf.tunit.name == "_Z6popcntm") {
      EXPECT_EQ(popcnt_code, pf.tunit.code); 
      EXPECT_EQ(popcnt_offsets, pf.instruction_offsets);
      EXPECT_EQ(0x570, pf.offset);
      found_popcnt = true;
    }
  };

  stoke::Disassembler d;
  d.set_function_callback(&test_tunit);
  d.disassemble("tests/fixtures/disassembler/popcnt");

  EXPECT_TRUE(found_popcnt);
  EXPECT_FALSE(d.has_error());
  EXPECT_EQ("", d.get_error());

}

TEST(DisassemblerTest, ParseErrors) {
  // If this test is failing, it may be because we've fixed a parse error in
  // x64asm which this test expects to encounter.  

  size_t errors_found = 0;

  stoke::Disassembler::Callback test_tunit = 
    [&] (const stoke::FunctionCallbackData& pf) {

    if (pf.parse_error)
      errors_found++;
  };

  stoke::Disassembler d;
  d.set_function_callback(&test_tunit);
  d.disassemble("tests/fixtures/disassembler/errors");

  EXPECT_GT(errors_found, 5);


}


TEST(DisassemblerTest, NoFileGraceful) {

  stoke::Disassembler::Callback  empty = 
    [] (const stoke::FunctionCallbackData& pf) {

    EXPECT_TRUE(false) << "The file isn't supposed to exist...";
  };

  stoke::Disassembler d;
  d.set_function_callback(&empty);

  d.disassemble("texts/fixtures/disassembler/does_not_exist");
  EXPECT_TRUE(d.has_error());
  EXPECT_EQ("Error opening file.", d.get_error());


}

TEST(DisassemblerTest, NoShellInjection) {

  stoke::Disassembler d;

  stoke::Disassembler::Callback  empty = 
    [] (const stoke::FunctionCallbackData& pf) {

    EXPECT_TRUE(false) << "The file isn't supposed to exist...";
  };


  d.disassemble("/usr/bin/ls && touch ~/pwned");
  d.set_function_callback(&empty);

  EXPECT_TRUE(d.has_error());
  EXPECT_EQ("Character ' ' not allowed in filename for security.", d.get_error());

}
