  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwN9__gnu_cxx17__normal_iteratorIS3_S2_EES6_
  .type _ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwN9__gnu_cxx17__normal_iteratorIS3_S2_EES6_, @function

#! file-offset 0x116720
#! rip-offset  0xd6720
#! capacity    64 bytes

# Text                                                                                         #  Line  RIP      Bytes  Opcode    
._ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwN9__gnu_cxx17__normal_iteratorIS3_S2_EES6_:  #        0xd6720  0      OPC=0     
  movl %esi, %esi                                                                              #  1     0xd6720  2      OPC=1157  
  movl %edi, %edi                                                                              #  2     0xd6722  2      OPC=1157  
  subl %esi, %edx                                                                              #  3     0xd6724  2      OPC=2386  
  sarl $0x2, %edx                                                                              #  4     0xd6726  3      OPC=2096  
  cmpl $0x1, %edx                                                                              #  5     0xd6729  3      OPC=470   
  je .L_d6740                                                                                  #  6     0xd672c  6      OPC=893   
  nop                                                                                          #  7     0xd6732  1      OPC=1343  
  nop                                                                                          #  8     0xd6733  1      OPC=1343  
  jmpq .wmemcpy                                                                                #  9     0xd6734  5      OPC=930   
  nop                                                                                          #  10    0xd6739  1      OPC=1343  
  nop                                                                                          #  11    0xd673a  1      OPC=1343  
  nop                                                                                          #  12    0xd673b  1      OPC=1343  
  nop                                                                                          #  13    0xd673c  1      OPC=1343  
  nop                                                                                          #  14    0xd673d  1      OPC=1343  
  nop                                                                                          #  15    0xd673e  1      OPC=1343  
  nop                                                                                          #  16    0xd673f  1      OPC=1343  
  nop                                                                                          #  17    0xd6740  1      OPC=1343  
  nop                                                                                          #  18    0xd6741  1      OPC=1343  
  nop                                                                                          #  19    0xd6742  1      OPC=1343  
  nop                                                                                          #  20    0xd6743  1      OPC=1343  
  nop                                                                                          #  21    0xd6744  1      OPC=1343  
  nop                                                                                          #  22    0xd6745  1      OPC=1343  
.L_d6740:                                                                                      #        0xd6746  0      OPC=0     
  popq %r11                                                                                    #  23    0xd6746  2      OPC=1694  
  movl %esi, %esi                                                                              #  24    0xd6748  2      OPC=1157  
  movl (%r15,%rsi,1), %eax                                                                     #  25    0xd674a  4      OPC=1156  
  movl %edi, %edi                                                                              #  26    0xd674e  2      OPC=1157  
  movl %eax, (%r15,%rdi,1)                                                                     #  27    0xd6750  4      OPC=1136  
  andl $0xffffffe0, %r11d                                                                      #  28    0xd6754  7      OPC=131   
  nop                                                                                          #  29    0xd675b  1      OPC=1343  
  nop                                                                                          #  30    0xd675c  1      OPC=1343  
  nop                                                                                          #  31    0xd675d  1      OPC=1343  
  nop                                                                                          #  32    0xd675e  1      OPC=1343  
  addq %r15, %r11                                                                              #  33    0xd675f  3      OPC=72    
  jmpq %r11                                                                                    #  34    0xd6762  3      OPC=928   
  nop                                                                                          #  35    0xd6765  1      OPC=1343  
  nop                                                                                          #  36    0xd6766  1      OPC=1343  
  nop                                                                                          #  37    0xd6767  1      OPC=1343  
  nop                                                                                          #  38    0xd6768  1      OPC=1343  
  nop                                                                                          #  39    0xd6769  1      OPC=1343  
  nop                                                                                          #  40    0xd676a  1      OPC=1343  
  nop                                                                                          #  41    0xd676b  1      OPC=1343  
  nop                                                                                          #  42    0xd676c  1      OPC=1343  
                                                                                                                                  
.size _ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwN9__gnu_cxx17__normal_iteratorIS3_S2_EES6_, .-_ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwN9__gnu_cxx17__normal_iteratorIS3_S2_EES6_

