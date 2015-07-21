  .text
  .globl fannkuch1
  .type fannkuch1, @function

#! file-offset 0x600
#! rip-offset  0x20656
#! capacity    48 bytes

# Text                          #  Line  RIP       Bytes  
.fannkuch1:                     #        0x20656   0
  leal 0x4(%rbx,%rcx,4), %esi   # 1      0x20656   4
  leal (%rbx, %rcx, 4), %ecx    # 2      0x2065a   3
  xorl %edx, %edx               # 3      0x2065d   2
  nop                           # 4      0x2065f   1
.L_1:                           #        0x20660   0
  movl %ecx, %edi               # 5      0x20660   2
  movl %esi, %r8d               # 6      0x20662   3
  movl %r8d, %r8d               # 7      0x20665   3
  movdqu (%r15,%r8), %xmm0      # 8      0x20668   6
  movl %edi, %edi               # 9      0x2066e   2
  movdqa %xmm0, (%r15, %rdi)    # 10     0x20670   6
  addl $0x1, %edx               # 11     0x20676   3
  addl $0x10, %esi              # 12     0x20679   3
  addl $0x10, %ecx              # 13     0x2067c   3
  nop                           # 14     0x2067f   1
  cmpl %r9d, %edx               # 15     0x20680   3
  jb .L_1                       # 16     0x20683   2
  retq                          # 17     0x20684   1
                                              
.size fannkuch1, .-fannkuch1

