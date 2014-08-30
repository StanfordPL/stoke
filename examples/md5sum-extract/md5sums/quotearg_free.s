  .text
  .globl quotearg_free
  .type quotearg_free, @function
quotearg_free:
  pushq  %r12
  movl   0x2047a8(%rip),%eax        
  movq   0x204789(%rip),%r12        
  pushq  %rbp
  cmpl   $0x1,%eax
  pushq  %rbx
  jbe    .L_404b1a
  subl   $0x2,%eax
  movq   %r12,%rbx
  shlq   $0x4,%rax
  leaq   0x10(%r12,%rax,1),%rbp
  nop
.L_404b08:
  movq   0x18(%rbx),%rdi
  addq   $0x10,%rbx
  callq  .L_401400
  cmpq   %rbp,%rbx
  jne    .L_404b08
.L_404b1a:
  movq   0x8(%r12),%rdi
  cmpq   $0x609320,%rdi
  je     .L_404b43
  callq  .L_401400
  movq   $0x100,0x204748(%rip)        
  movq   $0x609320,0x204745(%rip)        
.L_404b43:
  cmpq   $0x609280,%r12
  je     .L_404b5f
  movq   %r12,%rdi
  callq  .L_401400
  movq   $0x609280,0x204719(%rip)        
.L_404b5f:
  popq   %rbx
  popq   %rbp
  movl   $0x1,0x204725(%rip)        
  popq   %r12
  retq   
  xchgw  %ax,%ax
  .size quotearg_free, .-quotearg_free
