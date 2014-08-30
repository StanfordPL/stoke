  .text
  .globl quoting_options_from_style
  .type quoting_options_from_style, @function
quoting_options_from_style:
  subq   $0x48,%rsp
  xorl   %eax,%eax
  movq   %rdi,%rdx
  movl   $0x7,%ecx
  movq   %rsp,%rdi
  cmpl   $0x8,%esi
  rep stosq %es:(%rdi)
  je     .L_405d11
  movl   %esi,(%rsp)
  movq   (%rsp),%rax
  movq   %rax,(%rdx)
  movq   0x8(%rsp),%rax
  movq   %rax,0x8(%rdx)
  movq   0x10(%rsp),%rax
  movq   %rax,0x10(%rdx)
  movq   0x18(%rsp),%rax
  movq   %rax,0x18(%rdx)
  movq   0x20(%rsp),%rax
  movq   %rax,0x20(%rdx)
  movq   0x28(%rsp),%rax
  movq   %rax,0x28(%rdx)
  movq   0x30(%rsp),%rax
  movq   %rax,0x30(%rdx)
  movq   %rdx,%rax
  addq   $0x48,%rsp
  retq   
.L_405d11:
  callq  .L_401410
  nop
  .size quoting_options_from_style, .-quoting_options_from_style
