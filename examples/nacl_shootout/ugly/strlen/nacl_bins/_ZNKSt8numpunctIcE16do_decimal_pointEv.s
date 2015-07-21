  .text
  .globl _ZNKSt8numpunctIcE16do_decimal_pointEv
  .type _ZNKSt8numpunctIcE16do_decimal_pointEv, @function

#! file-offset 0xb7120
#! rip-offset  0x77120
#! capacity    32 bytes

# Text                                    #  Line  RIP      Bytes  Opcode    
._ZNKSt8numpunctIcE16do_decimal_pointEv:  #        0x77120  0      OPC=0     
  movl %edi, %edi                         #  1     0x77120  2      OPC=1157  
  movl %edi, %edi                         #  2     0x77122  2      OPC=1157  
  movl 0x8(%r15,%rdi,1), %eax             #  3     0x77124  5      OPC=1156  
  popq %r11                               #  4     0x77129  2      OPC=1694  
  movl %eax, %eax                         #  5     0x7712b  2      OPC=1157  
  movzbl 0x24(%r15,%rax,1), %eax          #  6     0x7712d  6      OPC=1302  
  andl $0xffffffe0, %r11d                 #  7     0x77133  7      OPC=131   
  nop                                     #  8     0x7713a  1      OPC=1343  
  nop                                     #  9     0x7713b  1      OPC=1343  
  nop                                     #  10    0x7713c  1      OPC=1343  
  nop                                     #  11    0x7713d  1      OPC=1343  
  addq %r15, %r11                         #  12    0x7713e  3      OPC=72    
  jmpq %r11                               #  13    0x77141  3      OPC=928   
  nop                                     #  14    0x77144  1      OPC=1343  
  nop                                     #  15    0x77145  1      OPC=1343  
  nop                                     #  16    0x77146  1      OPC=1343  
                                                                             
.size _ZNKSt8numpunctIcE16do_decimal_pointEv, .-_ZNKSt8numpunctIcE16do_decimal_pointEv

