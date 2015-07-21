  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE7_M_copyEPwPKwj
  .type _ZNSbIwSt11char_traitsIwESaIwEE7_M_copyEPwPKwj, @function

#! file-offset 0x116320
#! rip-offset  0xd6320
#! capacity    64 bytes

# Text                                            #  Line  RIP      Bytes  Opcode    
._ZNSbIwSt11char_traitsIwESaIwEE7_M_copyEPwPKwj:  #        0xd6320  0      OPC=0     
  cmpl $0x1, %edx                                 #  1     0xd6320  3      OPC=470   
  movl %edi, %edi                                 #  2     0xd6323  2      OPC=1157  
  movl %esi, %esi                                 #  3     0xd6325  2      OPC=1157  
  je .L_d6340                                     #  4     0xd6327  6      OPC=893   
  nop                                             #  5     0xd632d  1      OPC=1343  
  nop                                             #  6     0xd632e  1      OPC=1343  
  jmpq .wmemcpy                                   #  7     0xd632f  5      OPC=930   
  nop                                             #  8     0xd6334  1      OPC=1343  
  nop                                             #  9     0xd6335  1      OPC=1343  
  nop                                             #  10    0xd6336  1      OPC=1343  
  nop                                             #  11    0xd6337  1      OPC=1343  
  nop                                             #  12    0xd6338  1      OPC=1343  
  nop                                             #  13    0xd6339  1      OPC=1343  
  nop                                             #  14    0xd633a  1      OPC=1343  
  nop                                             #  15    0xd633b  1      OPC=1343  
  nop                                             #  16    0xd633c  1      OPC=1343  
  nop                                             #  17    0xd633d  1      OPC=1343  
  nop                                             #  18    0xd633e  1      OPC=1343  
  nop                                             #  19    0xd633f  1      OPC=1343  
  nop                                             #  20    0xd6340  1      OPC=1343  
  nop                                             #  21    0xd6341  1      OPC=1343  
  nop                                             #  22    0xd6342  1      OPC=1343  
  nop                                             #  23    0xd6343  1      OPC=1343  
  nop                                             #  24    0xd6344  1      OPC=1343  
  nop                                             #  25    0xd6345  1      OPC=1343  
.L_d6340:                                         #        0xd6346  0      OPC=0     
  popq %r11                                       #  26    0xd6346  2      OPC=1694  
  movl %esi, %esi                                 #  27    0xd6348  2      OPC=1157  
  movl (%r15,%rsi,1), %eax                        #  28    0xd634a  4      OPC=1156  
  movl %edi, %edi                                 #  29    0xd634e  2      OPC=1157  
  movl %eax, (%r15,%rdi,1)                        #  30    0xd6350  4      OPC=1136  
  andl $0xffffffe0, %r11d                         #  31    0xd6354  7      OPC=131   
  nop                                             #  32    0xd635b  1      OPC=1343  
  nop                                             #  33    0xd635c  1      OPC=1343  
  nop                                             #  34    0xd635d  1      OPC=1343  
  nop                                             #  35    0xd635e  1      OPC=1343  
  addq %r15, %r11                                 #  36    0xd635f  3      OPC=72    
  jmpq %r11                                       #  37    0xd6362  3      OPC=928   
  nop                                             #  38    0xd6365  1      OPC=1343  
  nop                                             #  39    0xd6366  1      OPC=1343  
  nop                                             #  40    0xd6367  1      OPC=1343  
  nop                                             #  41    0xd6368  1      OPC=1343  
  nop                                             #  42    0xd6369  1      OPC=1343  
  nop                                             #  43    0xd636a  1      OPC=1343  
  nop                                             #  44    0xd636b  1      OPC=1343  
  nop                                             #  45    0xd636c  1      OPC=1343  
                                                                                     
.size _ZNSbIwSt11char_traitsIwESaIwEE7_M_copyEPwPKwj, .-_ZNSbIwSt11char_traitsIwESaIwEE7_M_copyEPwPKwj

