  .text
  .globl _ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIPKcSsEES4_
  .type _ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIPKcSsEES4_, @function

#! file-offset 0x45da0
#! rip-offset  0x45da0
#! capacity    64 bytes

# Text                                                              #  Line  RIP      Bytes  
._ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIPKcSsEES4_:  #        0x45da0  0      
  movl %esi, %esi                                                   #  1     0x45da0  2      
  movl %edi, %edi                                                   #  2     0x45da2  2      
  subl %esi, %edx                                                   #  3     0x45da4  2      
  cmpl $0x1, %edx                                                   #  4     0x45da6  3      
  je .L_45dc0                                                       #  5     0x45da9  6      
  jmpq .memcpy                                                      #  6     0x45daf  5      
  nop                                                               #  7     0x45db4  1      
  nop                                                               #  8     0x45db5  1      
.L_45dc0:                                                           #        0x45db6  0      
  movl %esi, %esi                                                   #  9     0x45db6  2      
  movzbl (%r15,%rsi,1), %eax                                        #  10    0x45db8  5      
  popq %r11                                                         #  11    0x45dbd  3      
  movl %edi, %edi                                                   #  12    0x45dc0  2      
  movb %al, (%r15,%rdi,1)                                           #  13    0x45dc2  4      
  andl $0xffffffe0, %r11d                                           #  14    0x45dc6  7      
  addq %r15, %r11                                                   #  15    0x45dcd  3      
  jmpq %r11                                                         #  16    0x45dd0  3      
  nop                                                               #  17    0x45dd3  1      
  nop                                                               #  18    0x45dd4  1      
  nop                                                               #  19    0x45dd5  1      
  nop                                                               #  20    0x45dd6  1      
  nop                                                               #  21    0x45dd7  1      
  nop                                                               #  22    0x45dd8  1      
  nop                                                               #  23    0x45dd9  1      
                                                                                             
.size _ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIPKcSsEES4_, .-_ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIPKcSsEES4_

