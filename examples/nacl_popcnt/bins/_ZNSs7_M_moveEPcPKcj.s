  .text
  .globl _ZNSs7_M_moveEPcPKcj
  .type _ZNSs7_M_moveEPcPKcj, @function

#! file-offset 0x44f60
#! rip-offset  0x44f60
#! capacity    64 bytes

# Text                        #  Line  RIP      Bytes  
._ZNSs7_M_moveEPcPKcj:        #        0x44f60  0      
  cmpl $0x1, %edx             #  1     0x44f60  3      
  movl %edi, %edi             #  2     0x44f63  2      
  movl %esi, %esi             #  3     0x44f65  2      
  je .L_44f80                 #  4     0x44f67  6      
  jmpq .memmove               #  5     0x44f6d  5      
  nop                         #  6     0x44f72  1      
  nop                         #  7     0x44f73  1      
.L_44f80:                     #        0x44f74  0      
  movl %esi, %esi             #  8     0x44f74  2      
  movzbl (%r15,%rsi,1), %eax  #  9     0x44f76  5      
  popq %r11                   #  10    0x44f7b  3      
  movl %edi, %edi             #  11    0x44f7e  2      
  movb %al, (%r15,%rdi,1)     #  12    0x44f80  4      
  andl $0xffffffe0, %r11d     #  13    0x44f84  7      
  addq %r15, %r11             #  14    0x44f8b  3      
  jmpq %r11                   #  15    0x44f8e  3      
  nop                         #  16    0x44f91  1      
  nop                         #  17    0x44f92  1      
  nop                         #  18    0x44f93  1      
  nop                         #  19    0x44f94  1      
  nop                         #  20    0x44f95  1      
  nop                         #  21    0x44f96  1      
  nop                         #  22    0x44f97  1      
                                                       
.size _ZNSs7_M_moveEPcPKcj, .-_ZNSs7_M_moveEPcPKcj

