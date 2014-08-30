  .text
  .globl version_etc_ar
  .type version_etc_ar, @function
version_etc_ar:
  xorl   %r9d,%r9d
  cmpq   $0x0,(%r8)
  je     .L_40533b
  nop
.L_405330:
  addq   $0x1,%r9
  cmpq   $0x0,(%r8,%r9,8)
  jne    .L_405330
.L_40533b:
  jmpq   .L_404eb0
  .size version_etc_ar, .-version_etc_ar
