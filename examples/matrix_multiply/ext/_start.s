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
  movq   $0x4006c0,%r8
  movq   $0x400650,%rcx
  movq   $0x400440,%rdi
  callq  .L_400410
  retq
  nop
  xchgw  %ax,%ax
  .size _start, .-_start
