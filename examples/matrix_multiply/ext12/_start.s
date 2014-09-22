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
  movq   $0x4006d0,%r8
  movq   $0x400660,%rcx
  movq   $0x40052d,%rdi
  callq  .L_400410
  retq
  nop
  .size _start, .-_start
