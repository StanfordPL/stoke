  .text
  .globl __cxa_free_dependent_exception
  .type __cxa_free_dependent_exception, @function

#! file-offset 0x4bfc0
#! rip-offset  0x4bfc0
#! capacity    128 bytes

# Text                            #  Line  RIP      Bytes  
.__cxa_free_dependent_exception:  #        0x4bfc0  0      
  movl %edi, %edi                 #  1     0x4bfc0  2      
  movl $0x10031e00, %edx          #  2     0x4bfc2  5      
  cmpl %edi, %edx                 #  3     0x4bfc7  2      
  ja .L_4bfe0                     #  4     0x4bfc9  6      
  leal 0xa00(%rdx), %eax          #  5     0x4bfcf  6      
  cmpl %edi, %eax                 #  6     0x4bfd5  2      
  ja .L_4c000                     #  7     0x4bfd7  6      
  nop                             #  8     0x4bfdd  1      
.L_4bfe0:                         #        0x4bfde  0      
  jmpq .free                      #  9     0x4bfde  5      
  nop                             #  10    0x4bfe3  1      
  nop                             #  11    0x4bfe4  1      
.L_4c000:                         #        0x4bfe5  0      
  subl %edx, %edi                 #  12    0x4bfe5  2      
  movl $0xcccccccd, %ecx          #  13    0x4bfe7  5      
  movl $0xfffffffe, %esi          #  14    0x4bfec  5      
  movl %edi, %eax                 #  15    0x4bff1  2      
  mull %ecx                       #  16    0x4bff3  2      
  popq %r11                       #  17    0x4bff5  3      
  shrl $0x6, %edx                 #  18    0x4bff8  3      
  movl %edx, %ecx                 #  19    0x4bffb  2      
  roll %cl, %esi                  #  20    0x4bffd  2      
  andl %esi, 0xffe67fb(%rip)      #  21    0x4bfff  6      
  nop                             #  22    0x4c005  1      
  andl $0xffffffe0, %r11d         #  23    0x4c006  7      
  addq %r15, %r11                 #  24    0x4c00d  3      
  jmpq %r11                       #  25    0x4c010  3      
  nop                             #  26    0x4c013  1      
  nop                             #  27    0x4c014  1      
  nop                             #  28    0x4c015  1      
  nop                             #  29    0x4c016  1      
  nop                             #  30    0x4c017  1      
  nop                             #  31    0x4c018  1      
  nop                             #  32    0x4c019  1      
  nop                             #  33    0x4c01a  1      
  nop                             #  34    0x4c01b  1      
  nop                             #  35    0x4c01c  1      
  nop                             #  36    0x4c01d  1      
  nop                             #  37    0x4c01e  1      
  nop                             #  38    0x4c01f  1      
  nop                             #  39    0x4c020  1      
  nop                             #  40    0x4c021  1      
  nop                             #  41    0x4c022  1      
  nop                             #  42    0x4c023  1      
  nop                             #  43    0x4c024  1      
  nop                             #  44    0x4c025  1      
  nop                             #  45    0x4c026  1      
  nop                             #  46    0x4c027  1      
  nop                             #  47    0x4c028  1      
                                                           
.size __cxa_free_dependent_exception, .-__cxa_free_dependent_exception

