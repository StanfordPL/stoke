  .text
  .globl _ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIPKcSsEES4_
  .type _ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIPKcSsEES4_, @function

#! file-offset 0x45dc0
#! rip-offset  0x45dc0
#! capacity    64 bytes

# Text                                                              #  Line  RIP      Bytes  
._ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIPKcSsEES4_:  #        0x45dc0  0      
  movl %esi, %esi                                                   #  1     0x45dc0  2      
  movl %edi, %edi                                                   #  2     0x45dc2  2      
  subl %esi, %edx                                                   #  3     0x45dc4  2      
  cmpl $0x1, %edx                                                   #  4     0x45dc6  3      
  je .L_45de0                                                       #  5     0x45dc9  6      
  jmpq .memcpy                                                      #  6     0x45dcf  5      
  nop                                                               #  7     0x45dd4  1      
  nop                                                               #  8     0x45dd5  1      
.L_45de0:                                                           #        0x45dd6  0      
  movl %esi, %esi                                                   #  9     0x45dd6  2      
  movzbl (%r15,%rsi,1), %eax                                        #  10    0x45dd8  5      
  popq %r11                                                         #  11    0x45ddd  3      
  movl %edi, %edi                                                   #  12    0x45de0  2      
  movb %al, (%r15,%rdi,1)                                           #  13    0x45de2  4      
  andl $0xffffffe0, %r11d                                           #  14    0x45de6  7      
  addq %r15, %r11                                                   #  15    0x45ded  3      
  jmpq %r11                                                         #  16    0x45df0  3      
  nop                                                               #  17    0x45df3  1      
  nop                                                               #  18    0x45df4  1      
  nop                                                               #  19    0x45df5  1      
  nop                                                               #  20    0x45df6  1      
  nop                                                               #  21    0x45df7  1      
  nop                                                               #  22    0x45df8  1      
  nop                                                               #  23    0x45df9  1      
                                                                                             
.size _ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIPKcSsEES4_, .-_ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIPKcSsEES4_

