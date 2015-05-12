  .text
  .globl _ZNSs7_M_moveEPcPKcj
  .type _ZNSs7_M_moveEPcPKcj, @function

#! file-offset 0x44f80
#! rip-offset  0x44f80
#! capacity    64 bytes

# Text                        #  Line  RIP      Bytes  
._ZNSs7_M_moveEPcPKcj:        #        0x44f80  0      
  cmpl $0x1, %edx             #  1     0x44f80  3      
  movl %edi, %edi             #  2     0x44f83  2      
  movl %esi, %esi             #  3     0x44f85  2      
  je .L_44fa0                 #  4     0x44f87  6      
  jmpq .memmove               #  5     0x44f8d  5      
  nop                         #  6     0x44f92  1      
  nop                         #  7     0x44f93  1      
.L_44fa0:                     #        0x44f94  0      
  movl %esi, %esi             #  8     0x44f94  2      
  movzbl (%r15,%rsi,1), %eax  #  9     0x44f96  5      
  popq %r11                   #  10    0x44f9b  3      
  movl %edi, %edi             #  11    0x44f9e  2      
  movb %al, (%r15,%rdi,1)     #  12    0x44fa0  4      
  andl $0xffffffe0, %r11d     #  13    0x44fa4  7      
  addq %r15, %r11             #  14    0x44fab  3      
  jmpq %r11                   #  15    0x44fae  3      
  nop                         #  16    0x44fb1  1      
  nop                         #  17    0x44fb2  1      
  nop                         #  18    0x44fb3  1      
  nop                         #  19    0x44fb4  1      
  nop                         #  20    0x44fb5  1      
  nop                         #  21    0x44fb6  1      
  nop                         #  22    0x44fb7  1      
                                                       
.size _ZNSs7_M_moveEPcPKcj, .-_ZNSs7_M_moveEPcPKcj

