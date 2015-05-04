  .text
  .globl _ZNKSt14error_category10equivalentERKSt10error_codei
  .type _ZNKSt14error_category10equivalentERKSt10error_codei, @function

#! file-offset 0x4f000
#! rip-offset  0x4f000
#! capacity    64 bytes

# Text                                                  #  Line  RIP      Bytes  
._ZNKSt14error_category10equivalentERKSt10error_codei:  #        0x4f000  0      
  movl %esi, %esi                                       #  1     0x4f000  2      
  xorl %eax, %eax                                       #  2     0x4f002  2      
  movl %esi, %esi                                       #  3     0x4f004  2      
  cmpl 0x4(%r15,%rsi,1), %edi                           #  4     0x4f006  5      
  je .L_4f020                                           #  5     0x4f00b  6      
  popq %r11                                             #  6     0x4f011  3      
  andl $0xffffffe0, %r11d                               #  7     0x4f014  7      
  addq %r15, %r11                                       #  8     0x4f01b  3      
  jmpq %r11                                             #  9     0x4f01e  3      
  nop                                                   #  10    0x4f021  1      
.L_4f020:                                               #        0x4f022  0      
  movl %esi, %esi                                       #  11    0x4f022  2      
  cmpl (%r15,%rsi,1), %edx                              #  12    0x4f024  4      
  sete %al                                              #  13    0x4f028  3      
  popq %r11                                             #  14    0x4f02b  3      
  andl $0xffffffe0, %r11d                               #  15    0x4f02e  7      
  addq %r15, %r11                                       #  16    0x4f035  3      
  jmpq %r11                                             #  17    0x4f038  3      
  nop                                                   #  18    0x4f03b  1      
  nop                                                   #  19    0x4f03c  1      
  nop                                                   #  20    0x4f03d  1      
  nop                                                   #  21    0x4f03e  1      
  nop                                                   #  22    0x4f03f  1      
  nop                                                   #  23    0x4f040  1      
  nop                                                   #  24    0x4f041  1      
  nop                                                   #  25    0x4f042  1      
  nop                                                   #  26    0x4f043  1      
  nop                                                   #  27    0x4f044  1      
  nop                                                   #  28    0x4f045  1      
                                                                                 
.size _ZNKSt14error_category10equivalentERKSt10error_codei, .-_ZNKSt14error_category10equivalentERKSt10error_codei

