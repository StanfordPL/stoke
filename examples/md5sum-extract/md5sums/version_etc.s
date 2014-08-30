  .text
  .globl version_etc
  .type version_etc, @function
version_etc:
  subq   $0xd8,%rsp
  testb  %al,%al
  movq   %r8,0x40(%rsp)
  movq   %r9,0x48(%rsp)
  je     .L_4053fc
  movaps %xmm0,0x50(%rsp)
  movaps %xmm1,0x60(%rsp)
  movaps %xmm2,0x70(%rsp)
  movaps %xmm3,0x80(%rsp)
  movaps %xmm4,0x90(%rsp)
  movaps %xmm5,0xa0(%rsp)
  movaps %xmm6,0xb0(%rsp)
  movaps %xmm7,0xc0(%rsp)
.L_4053fc:
  leaq   0xe0(%rsp),%rax
  leaq   0x8(%rsp),%r8
  movq   %rax,0x10(%rsp)
  leaq   0x20(%rsp),%rax
  movl   $0x20,0x8(%rsp)
  movl   $0x30,0xc(%rsp)
  movq   %rax,0x18(%rsp)
  callq  .L_405340
  addq   $0xd8,%rsp
  retq   
  nop
  .size version_etc, .-version_etc
