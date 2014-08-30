  .text
  .globl set_quoting_flags
  .type set_quoting_flags, @function
set_quoting_flags:
  testq  %rdi,%rdi
  movl   $0x60b420,%eax
  cmoveq %rax,%rdi
  movl   0x4(%rdi),%eax
  movl   %esi,0x4(%rdi)
  retq   
  nop
  .size set_quoting_flags, .-set_quoting_flags
