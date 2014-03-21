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
  movq   $0x400880,%r8
  movq   $0x4007f0,%rcx
  movq   $0x4005e0,%rdi
  callq  .L_4005b0
  retq
  .size _start, .-_start
