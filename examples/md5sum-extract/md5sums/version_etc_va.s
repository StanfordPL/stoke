  .text
  .globl version_etc_va
  .type version_etc_va, @function
version_etc_va:
  subq   $0x58,%rsp
  xorl   %r9d,%r9d
  jmpq    .L_405373
  nop
.L_405350:
  movl   %eax,%r10d
  addq   0x10(%r8),%r10
  addl   $0x8,%eax
  movl   %eax,(%r8)
  movq   (%r10),%rax
  testq  %rax,%rax
  movq   %rax,(%rsp,%r9,8)
  je     .L_405398
.L_405369:
  addq   $0x1,%r9
  cmpq   $0xa,%r9
  je     .L_405398
.L_405373:
  movl   (%r8),%eax
  cmpl   $0x30,%eax
  jb     .L_405350
  movq   0x8(%r8),%r10
  leaq   0x8(%r10),%rax
  movq   %rax,0x8(%r8)
  movq   (%r10),%rax
  testq  %rax,%rax
  movq   %rax,(%rsp,%r9,8)
  jne    .L_405369
  nop
.L_405398:
  movq   %rsp,%r8
  callq  .L_404eb0
  addq   $0x58,%rsp
  retq   
  nop
  .size version_etc_va, .-version_etc_va
