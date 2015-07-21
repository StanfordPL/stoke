  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwN9__gnu_cxx17__normal_iteratorIPKwS2_EES8_
  .type _ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwN9__gnu_cxx17__normal_iteratorIPKwS2_EES8_, @function

#! file-offset 0x1166e0
#! rip-offset  0xd66e0
#! capacity    64 bytes

# Text                                                                                         #  Line  RIP      Bytes  Opcode    
._ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwN9__gnu_cxx17__normal_iteratorIPKwS2_EES8_:  #        0xd66e0  0      OPC=0     
  movl %esi, %esi                                                                              #  1     0xd66e0  2      OPC=1157  
  movl %edi, %edi                                                                              #  2     0xd66e2  2      OPC=1157  
  subl %esi, %edx                                                                              #  3     0xd66e4  2      OPC=2386  
  sarl $0x2, %edx                                                                              #  4     0xd66e6  3      OPC=2096  
  cmpl $0x1, %edx                                                                              #  5     0xd66e9  3      OPC=470   
  je .L_d6700                                                                                  #  6     0xd66ec  6      OPC=893   
  nop                                                                                          #  7     0xd66f2  1      OPC=1343  
  nop                                                                                          #  8     0xd66f3  1      OPC=1343  
  jmpq .wmemcpy                                                                                #  9     0xd66f4  5      OPC=930   
  nop                                                                                          #  10    0xd66f9  1      OPC=1343  
  nop                                                                                          #  11    0xd66fa  1      OPC=1343  
  nop                                                                                          #  12    0xd66fb  1      OPC=1343  
  nop                                                                                          #  13    0xd66fc  1      OPC=1343  
  nop                                                                                          #  14    0xd66fd  1      OPC=1343  
  nop                                                                                          #  15    0xd66fe  1      OPC=1343  
  nop                                                                                          #  16    0xd66ff  1      OPC=1343  
  nop                                                                                          #  17    0xd6700  1      OPC=1343  
  nop                                                                                          #  18    0xd6701  1      OPC=1343  
  nop                                                                                          #  19    0xd6702  1      OPC=1343  
  nop                                                                                          #  20    0xd6703  1      OPC=1343  
  nop                                                                                          #  21    0xd6704  1      OPC=1343  
  nop                                                                                          #  22    0xd6705  1      OPC=1343  
.L_d6700:                                                                                      #        0xd6706  0      OPC=0     
  popq %r11                                                                                    #  23    0xd6706  2      OPC=1694  
  movl %esi, %esi                                                                              #  24    0xd6708  2      OPC=1157  
  movl (%r15,%rsi,1), %eax                                                                     #  25    0xd670a  4      OPC=1156  
  movl %edi, %edi                                                                              #  26    0xd670e  2      OPC=1157  
  movl %eax, (%r15,%rdi,1)                                                                     #  27    0xd6710  4      OPC=1136  
  andl $0xffffffe0, %r11d                                                                      #  28    0xd6714  7      OPC=131   
  nop                                                                                          #  29    0xd671b  1      OPC=1343  
  nop                                                                                          #  30    0xd671c  1      OPC=1343  
  nop                                                                                          #  31    0xd671d  1      OPC=1343  
  nop                                                                                          #  32    0xd671e  1      OPC=1343  
  addq %r15, %r11                                                                              #  33    0xd671f  3      OPC=72    
  jmpq %r11                                                                                    #  34    0xd6722  3      OPC=928   
  nop                                                                                          #  35    0xd6725  1      OPC=1343  
  nop                                                                                          #  36    0xd6726  1      OPC=1343  
  nop                                                                                          #  37    0xd6727  1      OPC=1343  
  nop                                                                                          #  38    0xd6728  1      OPC=1343  
  nop                                                                                          #  39    0xd6729  1      OPC=1343  
  nop                                                                                          #  40    0xd672a  1      OPC=1343  
  nop                                                                                          #  41    0xd672b  1      OPC=1343  
  nop                                                                                          #  42    0xd672c  1      OPC=1343  
                                                                                                                                  
.size _ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwN9__gnu_cxx17__normal_iteratorIPKwS2_EES8_, .-_ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwN9__gnu_cxx17__normal_iteratorIPKwS2_EES8_

