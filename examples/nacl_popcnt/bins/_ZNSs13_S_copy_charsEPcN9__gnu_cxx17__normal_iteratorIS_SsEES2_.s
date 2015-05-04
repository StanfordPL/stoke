  .text
  .globl _ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIS_SsEES2_
  .type _ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIS_SsEES2_, @function

#! file-offset 0x45e80
#! rip-offset  0x45e80
#! capacity    64 bytes

# Text                                                             #  Line  RIP      Bytes  
._ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIS_SsEES2_:  #        0x45e80  0      
  movl %esi, %esi                                                  #  1     0x45e80  2      
  movl %edi, %edi                                                  #  2     0x45e82  2      
  subl %esi, %edx                                                  #  3     0x45e84  2      
  cmpl $0x1, %edx                                                  #  4     0x45e86  3      
  je .L_45ea0                                                      #  5     0x45e89  6      
  jmpq .memcpy                                                     #  6     0x45e8f  5      
  nop                                                              #  7     0x45e94  1      
  nop                                                              #  8     0x45e95  1      
.L_45ea0:                                                          #        0x45e96  0      
  movl %esi, %esi                                                  #  9     0x45e96  2      
  movzbl (%r15,%rsi,1), %eax                                       #  10    0x45e98  5      
  popq %r11                                                        #  11    0x45e9d  3      
  movl %edi, %edi                                                  #  12    0x45ea0  2      
  movb %al, (%r15,%rdi,1)                                          #  13    0x45ea2  4      
  andl $0xffffffe0, %r11d                                          #  14    0x45ea6  7      
  addq %r15, %r11                                                  #  15    0x45ead  3      
  jmpq %r11                                                        #  16    0x45eb0  3      
  nop                                                              #  17    0x45eb3  1      
  nop                                                              #  18    0x45eb4  1      
  nop                                                              #  19    0x45eb5  1      
  nop                                                              #  20    0x45eb6  1      
  nop                                                              #  21    0x45eb7  1      
  nop                                                              #  22    0x45eb8  1      
  nop                                                              #  23    0x45eb9  1      
                                                                                            
.size _ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIS_SsEES2_, .-_ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIS_SsEES2_

