  .text
  .globl _ZNKSt10moneypunctIcLb0EE16do_thousands_sepEv
  .type _ZNKSt10moneypunctIcLb0EE16do_thousands_sepEv, @function

#! file-offset 0xb6620
#! rip-offset  0x76620
#! capacity    32 bytes

# Text                                           #  Line  RIP      Bytes  Opcode    
._ZNKSt10moneypunctIcLb0EE16do_thousands_sepEv:  #        0x76620  0      OPC=0     
  movl %edi, %edi                                #  1     0x76620  2      OPC=1157  
  movl %edi, %edi                                #  2     0x76622  2      OPC=1157  
  movl 0x8(%r15,%rdi,1), %eax                    #  3     0x76624  5      OPC=1156  
  popq %r11                                      #  4     0x76629  2      OPC=1694  
  movl %eax, %eax                                #  5     0x7662b  2      OPC=1157  
  movzbl 0x12(%r15,%rax,1), %eax                 #  6     0x7662d  6      OPC=1302  
  andl $0xffffffe0, %r11d                        #  7     0x76633  7      OPC=131   
  nop                                            #  8     0x7663a  1      OPC=1343  
  nop                                            #  9     0x7663b  1      OPC=1343  
  nop                                            #  10    0x7663c  1      OPC=1343  
  nop                                            #  11    0x7663d  1      OPC=1343  
  addq %r15, %r11                                #  12    0x7663e  3      OPC=72    
  jmpq %r11                                      #  13    0x76641  3      OPC=928   
  nop                                            #  14    0x76644  1      OPC=1343  
  nop                                            #  15    0x76645  1      OPC=1343  
  nop                                            #  16    0x76646  1      OPC=1343  
                                                                                    
.size _ZNKSt10moneypunctIcLb0EE16do_thousands_sepEv, .-_ZNKSt10moneypunctIcLb0EE16do_thousands_sepEv

