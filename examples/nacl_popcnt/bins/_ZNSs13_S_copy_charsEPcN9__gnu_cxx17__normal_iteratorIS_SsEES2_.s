  .text
  .globl _ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIS_SsEES2_
  .type _ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIS_SsEES2_, @function

#! file-offset 0x45de0
#! rip-offset  0x45de0
#! capacity    64 bytes

# Text                                                             #  Line  RIP      Bytes  
._ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIS_SsEES2_:  #        0x45de0  0      
  movl %esi, %esi                                                  #  1     0x45de0  2      
  movl %edi, %edi                                                  #  2     0x45de2  2      
  subl %esi, %edx                                                  #  3     0x45de4  2      
  cmpl $0x1, %edx                                                  #  4     0x45de6  3      
  je .L_45e00                                                      #  5     0x45de9  6      
  jmpq .memcpy                                                     #  6     0x45def  5      
  nop                                                              #  7     0x45df4  1      
  nop                                                              #  8     0x45df5  1      
.L_45e00:                                                          #        0x45df6  0      
  movl %esi, %esi                                                  #  9     0x45df6  2      
  movzbl (%r15,%rsi,1), %eax                                       #  10    0x45df8  5      
  popq %r11                                                        #  11    0x45dfd  3      
  movl %edi, %edi                                                  #  12    0x45e00  2      
  movb %al, (%r15,%rdi,1)                                          #  13    0x45e02  4      
  andl $0xffffffe0, %r11d                                          #  14    0x45e06  7      
  addq %r15, %r11                                                  #  15    0x45e0d  3      
  jmpq %r11                                                        #  16    0x45e10  3      
  nop                                                              #  17    0x45e13  1      
  nop                                                              #  18    0x45e14  1      
  nop                                                              #  19    0x45e15  1      
  nop                                                              #  20    0x45e16  1      
  nop                                                              #  21    0x45e17  1      
  nop                                                              #  22    0x45e18  1      
  nop                                                              #  23    0x45e19  1      
                                                                                            
.size _ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIS_SsEES2_, .-_ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIS_SsEES2_

