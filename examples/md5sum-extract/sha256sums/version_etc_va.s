  .text
  .globl version_etc_va
  .type version_etc_va, @function
version_etc_va:
  subq   $0x58,%rsp
  xorl   %r9d,%r9d
  jmpq    .L_407673
  nop
.L_407650:
  movl   %eax,%r10d
  addq   0x10(%r8),%r10
  addl   $0x8,%eax
  movl   %eax,(%r8)
  movq   (%r10),%rax
  testq  %rax,%rax
  movq   %rax,(%rsp,%r9,8)
  je     .L_407698
.L_407669:
  addq   $0x1,%r9
  cmpq   $0xa,%r9
  je     .L_407698
.L_407673:
  movl   (%r8),%eax
  cmpl   $0x30,%eax
  jb     .L_407650
  movq   0x8(%r8),%r10
  leaq   0x8(%r10),%rax
  movq   %rax,0x8(%r8)
  movq   (%r10),%rax
  testq  %rax,%rax
  movq   %rax,(%rsp,%r9,8)
  jne    .L_407669
  nop
.L_407698:
  movq   %rsp,%r8
  callq  .L_4071b0
  addq   $0x58,%rsp
  retq   
  nop
  .size version_etc_va, .-version_etc_va
