  .text
  .globl quotearg_char_mem
  .type quotearg_char_mem, @function
quotearg_char_mem:
  subq   $0x48,%rsp
  movq   0x2044a5(%rip),%rax        
  movl   %edx,%r8d
  shrb   $0x5,%r8b
  movl   %edx,%ecx
  movq   %rsi,%rdx
  movzbl %r8b,%r8d
  andl   $0x1f,%ecx
  movq   %rdi,%rsi
  movq   %rax,(%rsp)
  movq   0x20448c(%rip),%rax        
  xorl   %edi,%edi
  movq   %rax,0x8(%rsp)
  movq   0x204486(%rip),%rax        
  movq   %rax,0x10(%rsp)
  movq   0x204482(%rip),%rax        
  movq   %rax,0x18(%rsp)
  movq   0x20447e(%rip),%rax        
  movq   %rax,0x20(%rsp)
  movq   0x20447a(%rip),%rax        
  movl   0x8(%rsp,%r8,4),%r9d
  movq   %rax,0x28(%rsp)
  movq   0x204471(%rip),%rax        
  movq   %rax,0x30(%rsp)
  movl   %r9d,%eax
  shrl   %cl,%eax
  xorl   $0x1,%eax
  andl   $0x1,%eax
  shll   %cl,%eax
  movq   %rsp,%rcx
  xorl   %r9d,%eax
  movl   %eax,0x8(%rsp,%r8,4)
  callq  .L_4069c0
  addq   $0x48,%rsp
  retq   
  nop
  .size quotearg_char_mem, .-quotearg_char_mem
