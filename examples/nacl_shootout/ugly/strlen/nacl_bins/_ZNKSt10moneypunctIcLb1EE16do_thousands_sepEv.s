  .text
  .globl _ZNKSt10moneypunctIcLb1EE16do_thousands_sepEv
  .type _ZNKSt10moneypunctIcLb1EE16do_thousands_sepEv, @function

#! file-offset 0xb68a0
#! rip-offset  0x768a0
#! capacity    32 bytes

# Text                                           #  Line  RIP      Bytes  Opcode    
._ZNKSt10moneypunctIcLb1EE16do_thousands_sepEv:  #        0x768a0  0      OPC=0     
  movl %edi, %edi                                #  1     0x768a0  2      OPC=1157  
  movl %edi, %edi                                #  2     0x768a2  2      OPC=1157  
  movl 0x8(%r15,%rdi,1), %eax                    #  3     0x768a4  5      OPC=1156  
  popq %r11                                      #  4     0x768a9  2      OPC=1694  
  movl %eax, %eax                                #  5     0x768ab  2      OPC=1157  
  movzbl 0x12(%r15,%rax,1), %eax                 #  6     0x768ad  6      OPC=1302  
  andl $0xffffffe0, %r11d                        #  7     0x768b3  7      OPC=131   
  nop                                            #  8     0x768ba  1      OPC=1343  
  nop                                            #  9     0x768bb  1      OPC=1343  
  nop                                            #  10    0x768bc  1      OPC=1343  
  nop                                            #  11    0x768bd  1      OPC=1343  
  addq %r15, %r11                                #  12    0x768be  3      OPC=72    
  jmpq %r11                                      #  13    0x768c1  3      OPC=928   
  nop                                            #  14    0x768c4  1      OPC=1343  
  nop                                            #  15    0x768c5  1      OPC=1343  
  nop                                            #  16    0x768c6  1      OPC=1343  
                                                                                    
.size _ZNKSt10moneypunctIcLb1EE16do_thousands_sepEv, .-_ZNKSt10moneypunctIcLb1EE16do_thousands_sepEv

