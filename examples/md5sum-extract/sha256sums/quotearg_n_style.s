  .text
  .globl quotearg_n_style
  .type quotearg_n_style, @function
quotearg_n_style:
  pushq  %rbp
  movq   %rdx,%rbp
  pushq  %rbx
  movl   %edi,%ebx
  subq   $0x48,%rsp
  movq   %rsp,%rdi
  callq  .L_405cb0
  movq   %rsp,%rcx
  movq   %rbp,%rsi
  movl   %ebx,%edi
  movq   $0xffffffffffffffff,%rdx
  callq  .L_4069c0
  addq   $0x48,%rsp
  popq   %rbx
  popq   %rbp
  retq   
  xchgw  %ax,%ax
  .size quotearg_n_style, .-quotearg_n_style
