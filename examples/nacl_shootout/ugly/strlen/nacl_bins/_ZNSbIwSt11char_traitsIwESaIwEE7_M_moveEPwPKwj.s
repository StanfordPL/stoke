  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE7_M_moveEPwPKwj
  .type _ZNSbIwSt11char_traitsIwESaIwEE7_M_moveEPwPKwj, @function

#! file-offset 0x1162e0
#! rip-offset  0xd62e0
#! capacity    64 bytes

# Text                                            #  Line  RIP      Bytes  Opcode    
._ZNSbIwSt11char_traitsIwESaIwEE7_M_moveEPwPKwj:  #        0xd62e0  0      OPC=0     
  cmpl $0x1, %edx                                 #  1     0xd62e0  3      OPC=470   
  movl %edi, %edi                                 #  2     0xd62e3  2      OPC=1157  
  movl %esi, %esi                                 #  3     0xd62e5  2      OPC=1157  
  je .L_d6300                                     #  4     0xd62e7  6      OPC=893   
  nop                                             #  5     0xd62ed  1      OPC=1343  
  nop                                             #  6     0xd62ee  1      OPC=1343  
  jmpq .wmemmove                                  #  7     0xd62ef  5      OPC=930   
  nop                                             #  8     0xd62f4  1      OPC=1343  
  nop                                             #  9     0xd62f5  1      OPC=1343  
  nop                                             #  10    0xd62f6  1      OPC=1343  
  nop                                             #  11    0xd62f7  1      OPC=1343  
  nop                                             #  12    0xd62f8  1      OPC=1343  
  nop                                             #  13    0xd62f9  1      OPC=1343  
  nop                                             #  14    0xd62fa  1      OPC=1343  
  nop                                             #  15    0xd62fb  1      OPC=1343  
  nop                                             #  16    0xd62fc  1      OPC=1343  
  nop                                             #  17    0xd62fd  1      OPC=1343  
  nop                                             #  18    0xd62fe  1      OPC=1343  
  nop                                             #  19    0xd62ff  1      OPC=1343  
  nop                                             #  20    0xd6300  1      OPC=1343  
  nop                                             #  21    0xd6301  1      OPC=1343  
  nop                                             #  22    0xd6302  1      OPC=1343  
  nop                                             #  23    0xd6303  1      OPC=1343  
  nop                                             #  24    0xd6304  1      OPC=1343  
  nop                                             #  25    0xd6305  1      OPC=1343  
.L_d6300:                                         #        0xd6306  0      OPC=0     
  popq %r11                                       #  26    0xd6306  2      OPC=1694  
  movl %esi, %esi                                 #  27    0xd6308  2      OPC=1157  
  movl (%r15,%rsi,1), %eax                        #  28    0xd630a  4      OPC=1156  
  movl %edi, %edi                                 #  29    0xd630e  2      OPC=1157  
  movl %eax, (%r15,%rdi,1)                        #  30    0xd6310  4      OPC=1136  
  andl $0xffffffe0, %r11d                         #  31    0xd6314  7      OPC=131   
  nop                                             #  32    0xd631b  1      OPC=1343  
  nop                                             #  33    0xd631c  1      OPC=1343  
  nop                                             #  34    0xd631d  1      OPC=1343  
  nop                                             #  35    0xd631e  1      OPC=1343  
  addq %r15, %r11                                 #  36    0xd631f  3      OPC=72    
  jmpq %r11                                       #  37    0xd6322  3      OPC=928   
  nop                                             #  38    0xd6325  1      OPC=1343  
  nop                                             #  39    0xd6326  1      OPC=1343  
  nop                                             #  40    0xd6327  1      OPC=1343  
  nop                                             #  41    0xd6328  1      OPC=1343  
  nop                                             #  42    0xd6329  1      OPC=1343  
  nop                                             #  43    0xd632a  1      OPC=1343  
  nop                                             #  44    0xd632b  1      OPC=1343  
  nop                                             #  45    0xd632c  1      OPC=1343  
                                                                                     
.size _ZNSbIwSt11char_traitsIwESaIwEE7_M_moveEPwPKwj, .-_ZNSbIwSt11char_traitsIwESaIwEE7_M_moveEPwPKwj

