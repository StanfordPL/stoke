  .text
  .globl _ZNKSt10moneypunctIwLb0EE16do_thousands_sepEv
  .type _ZNKSt10moneypunctIwLb0EE16do_thousands_sepEv, @function

#! file-offset 0xef5e0
#! rip-offset  0xaf5e0
#! capacity    32 bytes

# Text                                           #  Line  RIP      Bytes  Opcode    
._ZNKSt10moneypunctIwLb0EE16do_thousands_sepEv:  #        0xaf5e0  0      OPC=0     
  movl %edi, %edi                                #  1     0xaf5e0  2      OPC=1157  
  movl %edi, %edi                                #  2     0xaf5e2  2      OPC=1157  
  movl 0x8(%r15,%rdi,1), %eax                    #  3     0xaf5e4  5      OPC=1156  
  popq %r11                                      #  4     0xaf5e9  2      OPC=1694  
  movl %eax, %eax                                #  5     0xaf5eb  2      OPC=1157  
  movl 0x18(%r15,%rax,1), %eax                   #  6     0xaf5ed  5      OPC=1156  
  andl $0xffffffe0, %r11d                        #  7     0xaf5f2  7      OPC=131   
  nop                                            #  8     0xaf5f9  1      OPC=1343  
  nop                                            #  9     0xaf5fa  1      OPC=1343  
  nop                                            #  10    0xaf5fb  1      OPC=1343  
  nop                                            #  11    0xaf5fc  1      OPC=1343  
  addq %r15, %r11                                #  12    0xaf5fd  3      OPC=72    
  jmpq %r11                                      #  13    0xaf600  3      OPC=928   
  nop                                            #  14    0xaf603  1      OPC=1343  
  nop                                            #  15    0xaf604  1      OPC=1343  
  nop                                            #  16    0xaf605  1      OPC=1343  
  nop                                            #  17    0xaf606  1      OPC=1343  
                                                                                    
.size _ZNKSt10moneypunctIwLb0EE16do_thousands_sepEv, .-_ZNKSt10moneypunctIwLb0EE16do_thousands_sepEv

