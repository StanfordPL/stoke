  .text
  .globl _ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIPKcSsEES4_
  .type _ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIPKcSsEES4_, @function

#! file-offset 0x45e40
#! rip-offset  0x45e40
#! capacity    64 bytes

# Text                                                              #  Line  RIP      Bytes  
._ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIPKcSsEES4_:  #        0x45e40  0      
  movl %esi, %esi                                                   #  1     0x45e40  2      
  movl %edi, %edi                                                   #  2     0x45e42  2      
  subl %esi, %edx                                                   #  3     0x45e44  2      
  cmpl $0x1, %edx                                                   #  4     0x45e46  3      
  je .L_45e60                                                       #  5     0x45e49  6      
  jmpq .memcpy                                                      #  6     0x45e4f  5      
  nop                                                               #  7     0x45e54  1      
  nop                                                               #  8     0x45e55  1      
.L_45e60:                                                           #        0x45e56  0      
  movl %esi, %esi                                                   #  9     0x45e56  2      
  movzbl (%r15,%rsi,1), %eax                                        #  10    0x45e58  5      
  popq %r11                                                         #  11    0x45e5d  3      
  movl %edi, %edi                                                   #  12    0x45e60  2      
  movb %al, (%r15,%rdi,1)                                           #  13    0x45e62  4      
  andl $0xffffffe0, %r11d                                           #  14    0x45e66  7      
  addq %r15, %r11                                                   #  15    0x45e6d  3      
  jmpq %r11                                                         #  16    0x45e70  3      
  nop                                                               #  17    0x45e73  1      
  nop                                                               #  18    0x45e74  1      
  nop                                                               #  19    0x45e75  1      
  nop                                                               #  20    0x45e76  1      
  nop                                                               #  21    0x45e77  1      
  nop                                                               #  22    0x45e78  1      
  nop                                                               #  23    0x45e79  1      
                                                                                             
.size _ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIPKcSsEES4_, .-_ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIPKcSsEES4_

