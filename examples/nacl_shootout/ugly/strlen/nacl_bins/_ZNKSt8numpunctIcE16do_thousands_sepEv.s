  .text
  .globl _ZNKSt8numpunctIcE16do_thousands_sepEv
  .type _ZNKSt8numpunctIcE16do_thousands_sepEv, @function

#! file-offset 0xb7140
#! rip-offset  0x77140
#! capacity    32 bytes

# Text                                    #  Line  RIP      Bytes  Opcode    
._ZNKSt8numpunctIcE16do_thousands_sepEv:  #        0x77140  0      OPC=0     
  movl %edi, %edi                         #  1     0x77140  2      OPC=1157  
  movl %edi, %edi                         #  2     0x77142  2      OPC=1157  
  movl 0x8(%r15,%rdi,1), %eax             #  3     0x77144  5      OPC=1156  
  popq %r11                               #  4     0x77149  2      OPC=1694  
  movl %eax, %eax                         #  5     0x7714b  2      OPC=1157  
  movzbl 0x25(%r15,%rax,1), %eax          #  6     0x7714d  6      OPC=1302  
  andl $0xffffffe0, %r11d                 #  7     0x77153  7      OPC=131   
  nop                                     #  8     0x7715a  1      OPC=1343  
  nop                                     #  9     0x7715b  1      OPC=1343  
  nop                                     #  10    0x7715c  1      OPC=1343  
  nop                                     #  11    0x7715d  1      OPC=1343  
  addq %r15, %r11                         #  12    0x7715e  3      OPC=72    
  jmpq %r11                               #  13    0x77161  3      OPC=928   
  nop                                     #  14    0x77164  1      OPC=1343  
  nop                                     #  15    0x77165  1      OPC=1343  
  nop                                     #  16    0x77166  1      OPC=1343  
                                                                             
.size _ZNKSt8numpunctIcE16do_thousands_sepEv, .-_ZNKSt8numpunctIcE16do_thousands_sepEv

