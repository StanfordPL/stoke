  .text
  .globl _ZNKSt7collateIwE10_M_compareEPKwS2_
  .type _ZNKSt7collateIwE10_M_compareEPKwS2_, @function

#! file-offset 0x11abc0
#! rip-offset  0xdabc0
#! capacity    64 bytes

# Text                                  #  Line  RIP      Bytes  Opcode    
._ZNKSt7collateIwE10_M_compareEPKwS2_:  #        0xdabc0  0      OPC=0     
  subl $0x8, %esp                       #  1     0xdabc0  3      OPC=2384  
  addq %r15, %rsp                       #  2     0xdabc3  3      OPC=72    
  movl %esi, %edi                       #  3     0xdabc6  2      OPC=1157  
  movl %edx, %esi                       #  4     0xdabc8  2      OPC=1157  
  xchgw %ax, %ax                        #  5     0xdabca  2      OPC=3700  
  nop                                   #  6     0xdabcc  1      OPC=1343  
  nop                                   #  7     0xdabcd  1      OPC=1343  
  nop                                   #  8     0xdabce  1      OPC=1343  
  nop                                   #  9     0xdabcf  1      OPC=1343  
  nop                                   #  10    0xdabd0  1      OPC=1343  
  nop                                   #  11    0xdabd1  1      OPC=1343  
  nop                                   #  12    0xdabd2  1      OPC=1343  
  nop                                   #  13    0xdabd3  1      OPC=1343  
  nop                                   #  14    0xdabd4  1      OPC=1343  
  nop                                   #  15    0xdabd5  1      OPC=1343  
  nop                                   #  16    0xdabd6  1      OPC=1343  
  nop                                   #  17    0xdabd7  1      OPC=1343  
  nop                                   #  18    0xdabd8  1      OPC=1343  
  nop                                   #  19    0xdabd9  1      OPC=1343  
  nop                                   #  20    0xdabda  1      OPC=1343  
  callq .wcscoll                        #  21    0xdabdb  5      OPC=260   
  movl %eax, %edx                       #  22    0xdabe0  2      OPC=1157  
  xorl %eax, %eax                       #  23    0xdabe2  2      OPC=3758  
  testl %edx, %edx                      #  24    0xdabe4  2      OPC=2436  
  setne %al                             #  25    0xdabe6  3      OPC=2208  
  addl $0x8, %esp                       #  26    0xdabe9  3      OPC=65    
  addq %r15, %rsp                       #  27    0xdabec  3      OPC=72    
  sarl $0x1e, %edx                      #  28    0xdabef  3      OPC=2096  
  popq %r11                             #  29    0xdabf2  2      OPC=1694  
  orl %edx, %eax                        #  30    0xdabf4  2      OPC=1380  
  andl $0xffffffe0, %r11d               #  31    0xdabf6  7      OPC=131   
  nop                                   #  32    0xdabfd  1      OPC=1343  
  nop                                   #  33    0xdabfe  1      OPC=1343  
  nop                                   #  34    0xdabff  1      OPC=1343  
  nop                                   #  35    0xdac00  1      OPC=1343  
  addq %r15, %r11                       #  36    0xdac01  3      OPC=72    
  jmpq %r11                             #  37    0xdac04  3      OPC=928   
                                                                           
.size _ZNKSt7collateIwE10_M_compareEPKwS2_, .-_ZNKSt7collateIwE10_M_compareEPKwS2_

