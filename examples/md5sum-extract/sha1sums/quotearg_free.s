  .text
  .globl quotearg_free
  .type quotearg_free, @function
quotearg_free:
  pushq  %r12
  movl   0x204c38(%rip),%eax        
  movq   0x204c19(%rip),%r12        
  pushq  %rbp
  cmpl   $0x1,%eax
  pushq  %rbx
  jbe    .L_40568a
  subl   $0x2,%eax
  movq   %r12,%rbx
  shlq   $0x4,%rax
  leaq   0x10(%r12,%rax,1),%rbp
  nop
.L_405678:
  movq   0x18(%rbx),%rdi
  addq   $0x10,%rbx
  callq  .L_401400
  cmpq   %rbp,%rbx
  jne    .L_405678
.L_40568a:
  movq   0x8(%r12),%rdi
  cmpq   $0x60a320,%rdi
  je     .L_4056b3
  callq  .L_401400
  movq   $0x100,0x204bd8(%rip)        
  movq   $0x60a320,0x204bd5(%rip)        
.L_4056b3:
  cmpq   $0x60a280,%r12
  je     .L_4056cf
  movq   %r12,%rdi
  callq  .L_401400
  movq   $0x60a280,0x204ba9(%rip)        
.L_4056cf:
  popq   %rbx
  popq   %rbp
  movl   $0x1,0x204bb5(%rip)        
  popq   %r12
  retq   
  xchgw  %ax,%ax
  .size quotearg_free, .-quotearg_free
