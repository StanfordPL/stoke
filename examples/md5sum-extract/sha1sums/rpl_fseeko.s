  .text
  .globl rpl_fseeko
  .type rpl_fseeko, @function
rpl_fseeko:
  pushq  %rbx
  movq   %rdi,%rbx
  subq   $0x10,%rsp
  movq   0x8(%rdi),%rax
  cmpq   %rax,0x10(%rdi)
  je     .L_4064a0
.L_406492:
  addq   $0x10,%rsp
  movq   %rbx,%rdi
  popq   %rbx
  jmpq   .L_401700
  nop
.L_4064a0:
  movq   0x20(%rdi),%rax
  cmpq   %rax,0x28(%rdi)
  jne    .L_406492
  cmpq   $0x0,0x48(%rdi)
  jne    .L_406492
  movl   %edx,0xc(%rsp)
  movq   %rsi,(%rsp)
  callq  .L_401620
  movl   0xc(%rsp),%edx
  movq   (%rsp),%rsi
  movl   %eax,%edi
  callq  .L_401550
  cmpq   $0xffffffffffffffff,%rax
  je     .L_4064df
  andl   $0xffffffef,(%rbx)
  movq   %rax,0x90(%rbx)
  xorl   %eax,%eax
.L_4064df:
  addq   $0x10,%rsp
  popq   %rbx
  retq   
  nop
  nop
  .size rpl_fseeko, .-rpl_fseeko
