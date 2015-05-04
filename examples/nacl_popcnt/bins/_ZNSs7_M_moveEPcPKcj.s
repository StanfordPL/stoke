  .text
  .globl _ZNSs7_M_moveEPcPKcj
  .type _ZNSs7_M_moveEPcPKcj, @function

#! file-offset 0x45000
#! rip-offset  0x45000
#! capacity    64 bytes

# Text                        #  Line  RIP      Bytes  
._ZNSs7_M_moveEPcPKcj:        #        0x45000  0      
  cmpl $0x1, %edx             #  1     0x45000  3      
  movl %edi, %edi             #  2     0x45003  2      
  movl %esi, %esi             #  3     0x45005  2      
  je .L_45020                 #  4     0x45007  6      
  jmpq .memmove               #  5     0x4500d  5      
  nop                         #  6     0x45012  1      
  nop                         #  7     0x45013  1      
.L_45020:                     #        0x45014  0      
  movl %esi, %esi             #  8     0x45014  2      
  movzbl (%r15,%rsi,1), %eax  #  9     0x45016  5      
  popq %r11                   #  10    0x4501b  3      
  movl %edi, %edi             #  11    0x4501e  2      
  movb %al, (%r15,%rdi,1)     #  12    0x45020  4      
  andl $0xffffffe0, %r11d     #  13    0x45024  7      
  addq %r15, %r11             #  14    0x4502b  3      
  jmpq %r11                   #  15    0x4502e  3      
  nop                         #  16    0x45031  1      
  nop                         #  17    0x45032  1      
  nop                         #  18    0x45033  1      
  nop                         #  19    0x45034  1      
  nop                         #  20    0x45035  1      
  nop                         #  21    0x45036  1      
  nop                         #  22    0x45037  1      
                                                       
.size _ZNSs7_M_moveEPcPKcj, .-_ZNSs7_M_moveEPcPKcj

