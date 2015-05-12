  .text
  .globl _ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIS_SsEES2_
  .type _ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIS_SsEES2_, @function

#! file-offset 0x45e00
#! rip-offset  0x45e00
#! capacity    64 bytes

# Text                                                             #  Line  RIP      Bytes  
._ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIS_SsEES2_:  #        0x45e00  0      
  movl %esi, %esi                                                  #  1     0x45e00  2      
  movl %edi, %edi                                                  #  2     0x45e02  2      
  subl %esi, %edx                                                  #  3     0x45e04  2      
  cmpl $0x1, %edx                                                  #  4     0x45e06  3      
  je .L_45e20                                                      #  5     0x45e09  6      
  jmpq .memcpy                                                     #  6     0x45e0f  5      
  nop                                                              #  7     0x45e14  1      
  nop                                                              #  8     0x45e15  1      
.L_45e20:                                                          #        0x45e16  0      
  movl %esi, %esi                                                  #  9     0x45e16  2      
  movzbl (%r15,%rsi,1), %eax                                       #  10    0x45e18  5      
  popq %r11                                                        #  11    0x45e1d  3      
  movl %edi, %edi                                                  #  12    0x45e20  2      
  movb %al, (%r15,%rdi,1)                                          #  13    0x45e22  4      
  andl $0xffffffe0, %r11d                                          #  14    0x45e26  7      
  addq %r15, %r11                                                  #  15    0x45e2d  3      
  jmpq %r11                                                        #  16    0x45e30  3      
  nop                                                              #  17    0x45e33  1      
  nop                                                              #  18    0x45e34  1      
  nop                                                              #  19    0x45e35  1      
  nop                                                              #  20    0x45e36  1      
  nop                                                              #  21    0x45e37  1      
  nop                                                              #  22    0x45e38  1      
  nop                                                              #  23    0x45e39  1      
                                                                                            
.size _ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIS_SsEES2_, .-_ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIS_SsEES2_

