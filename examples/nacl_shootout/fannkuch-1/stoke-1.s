.fannkuch1:                     #        0x20656  0      
  xorl %edx, %edx               #  1     0x20656  2      
  leal 0x4(%rbx,%rcx,4), %esi   #  2     0x20658  4      
  leal -0x4(%rdx,%rsi,1), %ecx  #  3     0x2065c  4      
.L_1:                           #        0x20660  0      
  movl %esi, %r8d               #  4     0x20660  3      
  movupd (%r15,%r8,1), %xmm0    #  5     0x20663  6      
  movl %ecx, %edi               #  6     0x20669  2      
  movups %xmm0, (%r15,%rdi,1)   #  7     0x2066b  5      
  addl $0x10, %esi              #  8     0x20670  3      
  adcl $0x1, %edx               #  9     0x20673  3      
  nop
  nop
  nop
  nop
  addl $0x10, %ecx              #  11    0x2067a  3      
  cmpl %r9d, %edx               #  12    0x2067d  3      
  jb .L_1                       #  13    0x20680  6      
