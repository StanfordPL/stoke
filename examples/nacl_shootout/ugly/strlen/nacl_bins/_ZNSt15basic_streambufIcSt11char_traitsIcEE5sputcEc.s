  .text
  .globl _ZNSt15basic_streambufIcSt11char_traitsIcEE5sputcEc
  .type _ZNSt15basic_streambufIcSt11char_traitsIcEE5sputcEc, @function

#! file-offset 0xe8de0
#! rip-offset  0xa8de0
#! capacity    96 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode    
._ZNSt15basic_streambufIcSt11char_traitsIcEE5sputcEc:  #        0xa8de0  0      OPC=0     
  movl %edi, %edi                                      #  1     0xa8de0  2      OPC=1157  
  movl %edi, %edi                                      #  2     0xa8de2  2      OPC=1157  
  movl 0x14(%r15,%rdi,1), %edx                         #  3     0xa8de4  5      OPC=1156  
  movl %edi, %edi                                      #  4     0xa8de9  2      OPC=1157  
  cmpl %edx, 0x18(%r15,%rdi,1)                         #  5     0xa8deb  5      OPC=457   
  jbe .L_a8e20                                         #  6     0xa8df0  6      OPC=881   
  nop                                                  #  7     0xa8df6  1      OPC=1343  
  nop                                                  #  8     0xa8df7  1      OPC=1343  
  movl %edx, %edx                                      #  9     0xa8df8  2      OPC=1157  
  movb %sil, (%r15,%rdx,1)                             #  10    0xa8dfa  4      OPC=1141  
  movzbl %sil, %eax                                    #  11    0xa8dfe  4      OPC=1304  
  nop                                                  #  12    0xa8e02  1      OPC=1343  
  nop                                                  #  13    0xa8e03  1      OPC=1343  
  nop                                                  #  14    0xa8e04  1      OPC=1343  
  nop                                                  #  15    0xa8e05  1      OPC=1343  
  movl %edi, %edi                                      #  16    0xa8e06  2      OPC=1157  
  addl $0x1, 0x14(%r15,%rdi,1)                         #  17    0xa8e08  6      OPC=51    
  popq %r11                                            #  18    0xa8e0e  2      OPC=1694  
  andl $0xffffffe0, %r11d                              #  19    0xa8e10  7      OPC=131   
  nop                                                  #  20    0xa8e17  1      OPC=1343  
  nop                                                  #  21    0xa8e18  1      OPC=1343  
  nop                                                  #  22    0xa8e19  1      OPC=1343  
  nop                                                  #  23    0xa8e1a  1      OPC=1343  
  addq %r15, %r11                                      #  24    0xa8e1b  3      OPC=72    
  jmpq %r11                                            #  25    0xa8e1e  3      OPC=928   
  nop                                                  #  26    0xa8e21  1      OPC=1343  
  nop                                                  #  27    0xa8e22  1      OPC=1343  
  nop                                                  #  28    0xa8e23  1      OPC=1343  
  nop                                                  #  29    0xa8e24  1      OPC=1343  
  nop                                                  #  30    0xa8e25  1      OPC=1343  
  nop                                                  #  31    0xa8e26  1      OPC=1343  
  nop                                                  #  32    0xa8e27  1      OPC=1343  
  nop                                                  #  33    0xa8e28  1      OPC=1343  
  nop                                                  #  34    0xa8e29  1      OPC=1343  
  nop                                                  #  35    0xa8e2a  1      OPC=1343  
  nop                                                  #  36    0xa8e2b  1      OPC=1343  
  nop                                                  #  37    0xa8e2c  1      OPC=1343  
.L_a8e20:                                              #        0xa8e2d  0      OPC=0     
  movl %edi, %edi                                      #  38    0xa8e2d  2      OPC=1157  
  movl (%r15,%rdi,1), %edx                             #  39    0xa8e2f  4      OPC=1156  
  movzbl %sil, %esi                                    #  40    0xa8e33  4      OPC=1304  
  movl %edx, %edx                                      #  41    0xa8e37  2      OPC=1157  
  movl 0x34(%r15,%rdx,1), %edx                         #  42    0xa8e39  5      OPC=1156  
  andl $0xffffffe0, %edx                               #  43    0xa8e3e  6      OPC=131   
  nop                                                  #  44    0xa8e44  1      OPC=1343  
  nop                                                  #  45    0xa8e45  1      OPC=1343  
  nop                                                  #  46    0xa8e46  1      OPC=1343  
  addq %r15, %rdx                                      #  47    0xa8e47  3      OPC=72    
  jmpq %rdx                                            #  48    0xa8e4a  2      OPC=928   
  nop                                                  #  49    0xa8e4c  1      OPC=1343  
  nop                                                  #  50    0xa8e4d  1      OPC=1343  
  nop                                                  #  51    0xa8e4e  1      OPC=1343  
  nop                                                  #  52    0xa8e4f  1      OPC=1343  
  nop                                                  #  53    0xa8e50  1      OPC=1343  
  nop                                                  #  54    0xa8e51  1      OPC=1343  
  nop                                                  #  55    0xa8e52  1      OPC=1343  
                                                                                          
.size _ZNSt15basic_streambufIcSt11char_traitsIcEE5sputcEc, .-_ZNSt15basic_streambufIcSt11char_traitsIcEE5sputcEc

