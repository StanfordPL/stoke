  .text
  .globl _start
  .type _start, @function
_start:
  xorl   %ebp,%ebp
  movq   %rdx,%r9
  popq   %rsi
  movq   %rsp,%rdx
  andq   $0xfffffffffffffff0,%rsp
  pushq  %rax
  pushq  %rsp
  movq   $0x405ea0,%r8
  movq   $0x405e30,%rcx
  movq   $0x4017b0,%rdi
  callq  .L_4015a0
  retq
  nop
  .size _start, .-_start
