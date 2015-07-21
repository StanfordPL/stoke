  .text
  .globl _ZNKSt7collateIcE10_M_compareEPKcS2_
  .type _ZNKSt7collateIcE10_M_compareEPKcS2_, @function

#! file-offset 0x11ac20
#! rip-offset  0xdac20
#! capacity    64 bytes

# Text                                  #  Line  RIP      Bytes  Opcode    
._ZNKSt7collateIcE10_M_compareEPKcS2_:  #        0xdac20  0      OPC=0     
  subl $0x8, %esp                       #  1     0xdac20  3      OPC=2384  
  addq %r15, %rsp                       #  2     0xdac23  3      OPC=72    
  movl %esi, %edi                       #  3     0xdac26  2      OPC=1157  
  movl %edx, %esi                       #  4     0xdac28  2      OPC=1157  
  xchgw %ax, %ax                        #  5     0xdac2a  2      OPC=3700  
  nop                                   #  6     0xdac2c  1      OPC=1343  
  nop                                   #  7     0xdac2d  1      OPC=1343  
  nop                                   #  8     0xdac2e  1      OPC=1343  
  nop                                   #  9     0xdac2f  1      OPC=1343  
  nop                                   #  10    0xdac30  1      OPC=1343  
  nop                                   #  11    0xdac31  1      OPC=1343  
  nop                                   #  12    0xdac32  1      OPC=1343  
  nop                                   #  13    0xdac33  1      OPC=1343  
  nop                                   #  14    0xdac34  1      OPC=1343  
  nop                                   #  15    0xdac35  1      OPC=1343  
  nop                                   #  16    0xdac36  1      OPC=1343  
  nop                                   #  17    0xdac37  1      OPC=1343  
  nop                                   #  18    0xdac38  1      OPC=1343  
  nop                                   #  19    0xdac39  1      OPC=1343  
  nop                                   #  20    0xdac3a  1      OPC=1343  
  callq .strcoll                        #  21    0xdac3b  5      OPC=260   
  movl %eax, %edx                       #  22    0xdac40  2      OPC=1157  
  xorl %eax, %eax                       #  23    0xdac42  2      OPC=3758  
  testl %edx, %edx                      #  24    0xdac44  2      OPC=2436  
  setne %al                             #  25    0xdac46  3      OPC=2208  
  addl $0x8, %esp                       #  26    0xdac49  3      OPC=65    
  addq %r15, %rsp                       #  27    0xdac4c  3      OPC=72    
  sarl $0x1e, %edx                      #  28    0xdac4f  3      OPC=2096  
  popq %r11                             #  29    0xdac52  2      OPC=1694  
  orl %edx, %eax                        #  30    0xdac54  2      OPC=1380  
  andl $0xffffffe0, %r11d               #  31    0xdac56  7      OPC=131   
  nop                                   #  32    0xdac5d  1      OPC=1343  
  nop                                   #  33    0xdac5e  1      OPC=1343  
  nop                                   #  34    0xdac5f  1      OPC=1343  
  nop                                   #  35    0xdac60  1      OPC=1343  
  addq %r15, %r11                       #  36    0xdac61  3      OPC=72    
  jmpq %r11                             #  37    0xdac64  3      OPC=928   
                                                                           
.size _ZNKSt7collateIcE10_M_compareEPKcS2_, .-_ZNKSt7collateIcE10_M_compareEPKcS2_

