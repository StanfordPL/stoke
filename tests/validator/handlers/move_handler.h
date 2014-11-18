
#include "src/symstate/bitvector.h"
#include "src/validator/handlers/move_handler.h"

#define EXPECT_BV_EQ(X, Y) EXPECT_TRUE((X).equals(Y)) \
                           << "Expected: " << (X) << std::endl \
                           << "Actual:   " << (Y) << std::endl

TEST(MoveHandler, R64R64Works) {

  x64asm::Instruction i(x64asm::MOV_R64_R64);
  i.set_operand(0, x64asm::rdi); //dest
  i.set_operand(1, x64asm::rsi);

  stoke::MoveHandler h;
  EXPECT_EQ(stoke::Handler::BASIC | stoke::Handler::CEG, h.get_support(i));
  EXPECT_FALSE(h.has_error()) << h.error();

  stoke::SymState ss;
  auto rsi = stoke::SymBitVector::var(64, "RSI");
  auto rdi = stoke::SymBitVector::var(64, "RDI");

  ss.set(x64asm::rdi, rdi);
  ss.set(x64asm::rsi, rsi);

  h.build_circuit(i, ss);
  EXPECT_FALSE(h.has_error()) << h.error();

  EXPECT_BV_EQ(rsi, ss[x64asm::rdi]);
  EXPECT_BV_EQ(rsi, ss[x64asm::rsi]);

}

TEST(MoveHandler, R32R32ZerosTop) {

  x64asm::Instruction i(x64asm::MOV_R32_R32);
  i.set_operand(0, x64asm::edi); //dest
  i.set_operand(1, x64asm::esi);

  stoke::MoveHandler h;
  EXPECT_EQ(stoke::Handler::BASIC | stoke::Handler::CEG, h.get_support(i));
  EXPECT_FALSE(h.has_error()) << h.error();

  stoke::SymState ss;
  auto rsi = stoke::SymBitVector::var(64, "RSI");
  auto rdi = stoke::SymBitVector::var(64, "RDI");

  ss.set(x64asm::rdi, rdi);
  ss.set(x64asm::rsi, rsi);

  h.build_circuit(i, ss);
  EXPECT_FALSE(h.has_error()) << h.error();

  // Check RSI is unchanged
  EXPECT_BV_EQ(rsi, ss[x64asm::rsi]);
  // Check RDI is a concatenation of 0 with RSI[31:0]
  EXPECT_BV_EQ(stoke::SymBitVector::constant(32, 0) || rsi[31][0], ss[x64asm::rdi]);
}

TEST(MoveHandler, R16R16PreservesTop) {

  x64asm::Instruction i(x64asm::MOV_R16_R16);
  i.set_operand(0, x64asm::di); //dest
  i.set_operand(1, x64asm::si);

  stoke::MoveHandler h;
  EXPECT_EQ(stoke::Handler::BASIC | stoke::Handler::CEG, h.get_support(i));
  EXPECT_FALSE(h.has_error()) << h.error();

  stoke::SymState ss;
  auto rsi = stoke::SymBitVector::var(64, "RSI");
  auto rdi = stoke::SymBitVector::var(64, "RDI");

  ss.set(x64asm::rdi, rdi);
  ss.set(x64asm::rsi, rsi);

  h.build_circuit(i, ss);
  EXPECT_FALSE(h.has_error()) << h.error();

  // Check RSI is unchanged
  EXPECT_BV_EQ(rsi, ss[x64asm::rsi]);
  // Check RDI is a concatenation of 0 with RSI[31:0]
  EXPECT_BV_EQ(rdi[63][16] || rsi[15][0], ss[x64asm::rdi]);
}
