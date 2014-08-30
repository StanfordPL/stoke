  .text
  .globl quotearg_n_style_mem
  .type quotearg_n_style_mem, @function
quotearg_n_style_mem:
  pushq  %r12
  movq   %rcx,%r12
  pushq  %rbp
  movq   %rdx,%rbp
  pushq  %rbx
  movl   %edi,%ebx
  subq   $0x40,%rsp
  movq   %rsp,%rdi
  callq  .L_405cb0
  movq   %rsp,%rcx
  movq   %r12,%rdx
  movq   %rbp,%rsi
  movl   %ebx,%edi
  callq  .L_4069c0
  addq   $0x40,%rsp
  popq   %rbx
  popq   %rbp
  popq   %r12
  retq   
  nop
  .size quotearg_n_style_mem, .-quotearg_n_style_mem
