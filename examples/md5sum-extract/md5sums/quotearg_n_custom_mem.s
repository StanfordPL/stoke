  .text
  .globl quotearg_n_custom_mem
  .type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
  pushq  %r12
  movq   %r8,%r12
  pushq  %rbp
  movq   %rcx,%rbp
  pushq  %rbx
  movl   %edi,%ebx
  subq   $0x40,%rsp
  movq   0x2046b9(%rip),%rax        
  movq   %rsp,%rdi
  movq   %rax,(%rsp)
  movq   0x2046b3(%rip),%rax        
  movq   %rax,0x8(%rsp)
  movq   0x2046af(%rip),%rax        
  movq   %rax,0x10(%rsp)
  movq   0x2046ab(%rip),%rax        
  movq   %rax,0x18(%rsp)
  movq   0x2046a7(%rip),%rax        
  movq   %rax,0x20(%rsp)
  movq   0x2046a3(%rip),%rax        
  movq   %rax,0x28(%rsp)
  movq   0x20469f(%rip),%rax        
  movq   %rax,0x30(%rsp)
  callq  .L_404920
  movq   %rsp,%rcx
  movq   %r12,%rdx
  movq   %rbp,%rsi
  movl   %ebx,%edi
  callq  .L_4046c0
  addq   $0x40,%rsp
  popq   %rbx
  popq   %rbp
  popq   %r12
  retq   
  nop
  .size quotearg_n_custom_mem, .-quotearg_n_custom_mem
