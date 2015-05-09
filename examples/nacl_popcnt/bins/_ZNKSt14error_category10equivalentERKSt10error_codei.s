  .text
  .globl _ZNKSt14error_category10equivalentERKSt10error_codei
  .type _ZNKSt14error_category10equivalentERKSt10error_codei, @function

#! file-offset 0x4ef60
#! rip-offset  0x4ef60
#! capacity    64 bytes

# Text                                                  #  Line  RIP      Bytes  
._ZNKSt14error_category10equivalentERKSt10error_codei:  #        0x4ef60  0      
  movl %esi, %esi                                       #  1     0x4ef60  2      
  xorl %eax, %eax                                       #  2     0x4ef62  2      
  movl %esi, %esi                                       #  3     0x4ef64  2      
  cmpl 0x4(%r15,%rsi,1), %edi                           #  4     0x4ef66  5      
  je .L_4ef80                                           #  5     0x4ef6b  6      
  popq %r11                                             #  6     0x4ef71  3      
  andl $0xffffffe0, %r11d                               #  7     0x4ef74  7      
  addq %r15, %r11                                       #  8     0x4ef7b  3      
  jmpq %r11                                             #  9     0x4ef7e  3      
  nop                                                   #  10    0x4ef81  1      
.L_4ef80:                                               #        0x4ef82  0      
  movl %esi, %esi                                       #  11    0x4ef82  2      
  cmpl (%r15,%rsi,1), %edx                              #  12    0x4ef84  4      
  sete %al                                              #  13    0x4ef88  3      
  popq %r11                                             #  14    0x4ef8b  3      
  andl $0xffffffe0, %r11d                               #  15    0x4ef8e  7      
  addq %r15, %r11                                       #  16    0x4ef95  3      
  jmpq %r11                                             #  17    0x4ef98  3      
  nop                                                   #  18    0x4ef9b  1      
  nop                                                   #  19    0x4ef9c  1      
  nop                                                   #  20    0x4ef9d  1      
  nop                                                   #  21    0x4ef9e  1      
  nop                                                   #  22    0x4ef9f  1      
  nop                                                   #  23    0x4efa0  1      
  nop                                                   #  24    0x4efa1  1      
  nop                                                   #  25    0x4efa2  1      
  nop                                                   #  26    0x4efa3  1      
  nop                                                   #  27    0x4efa4  1      
  nop                                                   #  28    0x4efa5  1      
                                                                                 
.size _ZNKSt14error_category10equivalentERKSt10error_codei, .-_ZNKSt14error_category10equivalentERKSt10error_codei

